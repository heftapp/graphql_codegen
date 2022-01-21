import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/context.dart';

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

    if (fieldType is InputObjectTypeDefinitionNode) {
      context.addVariable(
        ContextProperty.fromVariableDefinitionNode(
          node,
          path: Name.fromSegment(InputNameSegment(fieldType)),
        ),
      );
    } else if (fieldType is EnumTypeDefinitionNode) {
      context.addVariable(
        ContextProperty.fromVariableDefinitionNode(
          node,
          path: Name.fromSegment(EnumNameSegment(fieldType)),
        ),
      );
    } else {
      context.addVariable(
        ContextProperty.fromVariableDefinitionNode(node),
      );
    }
  }

  @override
  void visitInputObjectTypeDefinitionNode(InputObjectTypeDefinitionNode node) {
    final c = context.withInput(node);
    node.visitChildren(ContextVisitor(context: c));
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

  @override
  void visitFragmentSpreadNode(FragmentSpreadNode node) {
    final fragmentDef = context.schema.lookupFragment(node.name);
    if (fragmentDef == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find fragment definition for ${node.name.value}",
      );
    }

    final fragmentName = Name.fromSegment(FragmentNameSegment(fragmentDef));

    if (fragmentDef.typeCondition.on.name == context.currentType.name) {
      context.visitInFragment(fragmentName, () {
        fragmentDef.visitChildren(this);
      });
      context.addFragment(fragmentName);
      return;
    }

    final typeCondition = fragmentDef.typeCondition;
    final typeConditionConcreteTypes = context.schema
        .lookupConcreateTypes(typeCondition.on.name)
        .map((e) => e.name)
        .toSet();
    final currentTypeConcreteTypes = context.schema
        .lookupConcreateTypes(context.currentType.name)
        .map((e) => e.name)
        .toSet();

    final concreteIntersection =
        typeConditionConcreteTypes.intersection(currentTypeConcreteTypes);

    if (concreteIntersection.isEmpty) {
      return;
    }

    Context tempFragmentContext;
    if (context.hasContextFragment(fragmentName)) {
      tempFragmentContext = context;
    } else {
      tempFragmentContext = context.rootContext();
      ContextVisitor(context: tempFragmentContext)
          .visitFragmentDefinitionNode(fragmentDef);
    }

    if (context.currentType is ObjectTypeDefinitionNode) {
      final typedFragmentName = fragmentName.withSegment(
        TypeNameSegment(context.currentType.name),
      );
      final existingFragmentName =
          tempFragmentContext.contextFragmentNameOrFallback(
        typedFragmentName,
        fragmentName,
      );
      context.visitInFragment(
        existingFragmentName,
        () {
          fragmentDef.visitChildren(this);
        },
      );
      context.addFragment(existingFragmentName);
      return;
    }

    for (final typeName in concreteIntersection) {
      final typeNode = context.schema.lookupType(typeName);
      if (typeNode == null) {
        throw InvalidGraphQLDocumentError(
            "Failed to find definition for type ${typeName.value}");
      }
      final typedFragmentName = fragmentName.withSegment(
        TypeNameSegment(typeName),
      );
      final existingFragmentName =
          tempFragmentContext.contextFragmentNameOrFallback(
        typedFragmentName,
        fragmentName,
      );

      final c = context.withNameAndType(
        TypeNameSegment(typeName),
        typeNode,
        extendsName: context.path,
        inFragment: existingFragmentName,
      );
      fragmentDef.visitChildren(
        ContextVisitor(context: c),
      );
      context.addPossibleTypeName(c);
    }
  }

  @override
  void visitSelectionSetNode(SelectionSetNode node) {
    node.visitChildren(this);
    context.addFragmentsFromInFragment();
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
        .lookupConcreateTypes(typeCondition.on.name)
        .map((e) => e.name)
        .toSet();
    final currentTypeConcreteTypes = context.schema
        .lookupConcreateTypes(context.currentType.name)
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

  @override
  void visitFieldNode(FieldNode node) {
    final currentType = context.currentType;
    final typeNodeForField = context.schema.lookupTypeNodeFromField(
      currentType,
      node.name,
    );
    if (typeNodeForField == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type for field ${node.name.value} on ${currentType.name.value}",
      );
    }
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
      final c = context.withNameAndType(
        FieldNameSegment(node),
        fieldType,
      );
      node.visitChildren(ContextVisitor(context: c));
      context.addProperty(ContextProperty.fromFieldNode(
        node,
        path: c.path,
        type: typeNodeForField,
      ));
    } else if (fieldType is EnumTypeDefinitionNode) {
      context.addProperty(
        ContextProperty.fromFieldNode(
          node,
          path: Name.fromSegment(EnumNameSegment(fieldType)),
          type: typeNodeForField,
        ),
      );
    } else {
      context.addProperty(ContextProperty.fromFieldNode(
        node,
        type: typeNodeForField,
      ));
    }
  }
}
