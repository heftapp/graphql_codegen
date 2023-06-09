import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context/name.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/context/context.dart';

class ContextVisitor extends RecursiveVisitor {
  final Context context;

  ContextVisitor({required this.context});

  @override
  void visitVariableDefinitionNode(VariableDefinitionNode node) {
    final typeNodeForField = node.type;
    final fieldType =
        context.schema.lookupTypeDefinitionFromTypeNode(typeNodeForField);

    if (fieldType == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type-definition for variable ${node.variable.name.value}",
      );
    }
    Name? path = null;
    if (fieldType is InputObjectTypeDefinitionNode) {
      path = Name.fromSegment(InputNameSegment(fieldType));
    }
    if (fieldType is EnumTypeDefinitionNode) {
      path = Name.fromSegment(EnumNameSegment(fieldType));
    }
    context.addVariable(
      ContextProperty.fromVariableDefinitionNode(
        node,
        path: path,
      ),
    );
  }

  @override
  void visitInputObjectTypeDefinitionNode(InputObjectTypeDefinitionNode node) {
    final c = context.withInput(node);
    final visitor = ContextVisitor(context: c);
    node.visitChildren(visitor);
    c.schema.definitions
        .whereType<InputObjectTypeExtensionNode>()
        .where((element) => element.name.value == node.name.value)
        .forEach((element) => element.visitChildren(visitor));
  }

  @override
  void visitInputValueDefinitionNode(InputValueDefinitionNode node) {
    final typeNodeForField = node.type;
    final fieldType = context.schema.lookupTypeDefinitionFromTypeNode(
      typeNodeForField,
    );

    if (fieldType == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type-definition for field ${node.name.value}",
      );
    }

    if (fieldType is InputObjectTypeDefinitionNode) {
      context.addProperty(
        ContextProperty.fromInputValueDefinitionNode(
          node,
          path: Name.fromSegment(InputNameSegment(fieldType)),
        ),
      );
    } else if (fieldType is EnumTypeDefinitionNode) {
      context.addProperty(
        ContextProperty.fromInputValueDefinitionNode(
          node,
          path: Name.fromSegment(EnumNameSegment(fieldType)),
        ),
      );
    } else {
      context.addProperty(ContextProperty.fromInputValueDefinitionNode(node));
    }
  }

  @override
  void visitEnumTypeDefinitionNode(EnumTypeDefinitionNode node) {
    context.withEnum(node);
  }

  @override
  void visitFragmentDefinitionNode(FragmentDefinitionNode node) {
    final type = context.schema.lookupTypeDefinitionFromTypeNode(
      node.typeCondition.on,
    );
    if (type == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type ${node.typeCondition.on.name.value} for fragment ${node.name.value}",
      );
    }
    final c = context.withFragmentAndType(node, type);
    node.visitChildren(ContextVisitor(context: c));

    _buildConcreteTypeContexts(c, type, node);
  }

  @override
  void visitOperationDefinitionNode(OperationDefinitionNode node) {
    final typeNode = context.schema.lookupOperationType(node.type);
    if (typeNode == null) {
      throw InvalidGraphQLDocumentError(
          "Failed to find operation type for ${node.type}");
    }
    node.visitChildren(
      ContextVisitor(
        context: context.withOperationAndType(node, typeNode),
      ),
    );
  }

  void _visitInFragment(
    FragmentDefinitionNode node,
    Name name,
  ) {
    context.visitInFragment(
      name,
      () {
        node.selectionSet.visitChildren(this);
        context.addFragmentsFromInFragment();
      },
    );
    context.addFragment(name);
  }

  @override
  void visitFragmentSpreadNode(FragmentSpreadNode node) {
    final fragmentDef = context.schema.lookupFragmentEnforced(node.name);

    // Mark the context dependent on this fragment.
    context.addFragmentDependency(fragmentDef);

    final fragmentName = Name.fromSegment(FragmentNameSegment(fragmentDef));

    // Lookup the `ContextFragment` of the current fragment.
    // If it doesn't exists, create it!
    if (!context.hasContextFragment(fragmentName)) {
      ContextVisitor(context: context.rootContext())
          .visitFragmentDefinitionNode(fragmentDef);
    }

    // If the fragment type condition exactly matches the current type,
    // inline the fragment directly.
    if (fragmentDef.typeCondition.on.name == context.currentType.name) {
      // Visiting "in-fragment" means that we'll expand the selection
      // set of the fragment while marking the current fragment name.
      // This'll help us derive the right interfaces.
      _visitInFragment(fragmentDef, fragmentName);
      return;
    }
    if (context.currentType is! ObjectTypeDefinitionNode) {
      return;
    }
    // Current type condition
    final typeCondition = fragmentDef.typeCondition;

    // Find concrete types of the type conditions.
    final typeConditionConcreteTypes = context.schema
        .lookupConcreteTypes(typeCondition.on.name)
        .map((e) => e.name)
        .toSet();

    if (!typeConditionConcreteTypes.contains(context.currentType.name)) {
      return;
    }
    final typedFragmentName = fragmentName.withSegment(
      TypeNameSegment(context.currentType.name),
    );
    _visitInFragment(
      fragmentDef,
      typedFragmentName,
    );
  }

  @override
  void visitSelectionSetNode(SelectionSetNode node) {
    node.visitChildren(this);
    context.addFragmentsFromInFragment();
    context.addSelectionSet(node);
  }

  @override
  void visitInlineFragmentNode(InlineFragmentNode node) {
    final typeCondition = node.typeCondition;
    // If we do not have a type condition, inline the selection set.
    // TODO support directives
    if (typeCondition == null ||
        typeCondition.on.name == context.currentType.name) {
      node.selectionSet.visitChildren(this);
      return;
    }

    final typeConditionConcreteTypes = context.schema
        .lookupConcreteTypes(typeCondition.on.name)
        .map((e) => e.name)
        .toSet();
    final currentTypeConcreteTypes = context.schema
        .lookupConcreteTypes(context.currentType.name)
        .map((e) => e.name)
        .toSet();

    final concreteIntersection =
        typeConditionConcreteTypes.intersection(currentTypeConcreteTypes);

    if (concreteIntersection.isEmpty) {
      return;
    }

    if (context.currentType is ObjectTypeDefinitionNode) {
      node.selectionSet.visitChildren(this);
      return;
    }

    for (final typeName in concreteIntersection) {
      final typeNode = context.schema.lookupType(typeName);
      if (typeNode == null) {
        throw InvalidGraphQLDocumentError(
            "Failed to find definition for type ${typeName.value}");
      }
      final c = context.withNameAndType(
        TypeNameSegment(typeNode.name),
        typeNode,
        extendsName: context.path,
      );
      node.visitChildren(
        ContextVisitor(
          context: c,
        ),
      );
      context.addPossibleTypeName(c);
    }
  }

  void _buildConcreteTypeContexts(
    Context context,
    TypeDefinitionNode type,
    Node node,
  ) {
    if (type is ObjectTypeDefinitionNode) {
      return;
    }
    for (final concreteType in context.schema.lookupConcreteTypes(type.name)) {
      final typedContext = context.withNameAndType(
        TypeNameSegment(concreteType.name),
        concreteType,
        extendsName: context.path,
      );
      node.visitChildren(ContextVisitor(context: typedContext));
      context.addPossibleTypeName(typedContext);
    }
  }

  TypeNode _makeTypeNodeNullable(TypeNode node) {
    if (node is NamedTypeNode) {
      return NamedTypeNode(
        isNonNull: false,
        span: node.span,
        name: node.name,
      );
    } else if (node is ListTypeNode) {
      return ListTypeNode(isNonNull: false, span: node.span, type: node.type);
    } else {
      throw UnsupportedError('Unsupported type node');
    }
  }

  @override
  void visitFieldNode(FieldNode node) {
    final currentType = context.currentType;
    final fieldDefinition = context.schema.lookupFieldDefinitionNode(
      currentType,
      node.name,
    );
    final typeNodeForFieldName = fieldDefinition?.type;
    if (fieldDefinition == null || typeNodeForFieldName == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type for field ${node.name.value} on ${currentType.name.value}",
      );
    }
    final typeNodeForField = node.directives
            .any((element) => ['include', 'skip'].contains(element.name.value))
        ? _makeTypeNodeNullable(typeNodeForFieldName)
        : typeNodeForFieldName;

    final fieldType = context.schema.lookupTypeDefinitionFromTypeNode(
      typeNodeForField,
    );

    if (fieldType == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type-definition for field ${node.name.value} on ${currentType.name.value}",
      );
    }

    if (fieldType is ObjectTypeDefinitionNode ||
        fieldType is InterfaceTypeDefinitionNode ||
        fieldType is UnionTypeDefinitionNode) {
      final segment = FieldNameSegment(node);
      final c = context.withNameAndType(
        segment,
        fieldType,
        extendsName: context.extendsName?.withSegment(segment),
      );
      node.visitChildren(ContextVisitor(context: c));

      _buildConcreteTypeContexts(c, fieldType, node);
      context.addProperty(
        ContextProperty.fromFieldNode(
          node,
          path: c.path,
          type: typeNodeForField,
          fieldDefinition: fieldDefinition,
        ),
      );
    } else if (fieldType is EnumTypeDefinitionNode) {
      context.addProperty(
        ContextProperty.fromFieldNode(
          node,
          path: Name.fromSegment(EnumNameSegment(fieldType)),
          type: typeNodeForField,
          fieldDefinition: fieldDefinition,
        ),
      );
    } else {
      context.addProperty(
        ContextProperty.fromFieldNode(
          node,
          type: typeNodeForField,
          fieldDefinition: fieldDefinition,
        ),
      );
    }

    for (final argument in node.arguments) {
      final argumentType = context.schema.lookupTypeNodeForArgument(
        context.currentType,
        node.name,
        argument,
      );
      if (argumentType == null) {
        throw InvalidGraphQLDocumentError(
          "Failed to find type for argument ${argument.name.value} on field ${node.name.value} on type ${currentType.name.value}",
        );
      }
      context.addArgument(argument.value, argumentType);
    }
  }
}
