import 'package:gql/ast.dart';
import 'package:graphql_codegen/errors.dart';
import 'package:graphql_codegen/utils.dart';

class GeneratorVisitor extends RecursiveVisitor {
  final Context context;

  GeneratorVisitor({required this.context});

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
          isEnum: true,
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
    node.visitChildren(GeneratorVisitor(context: c));
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
          isEnum: true,
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
    node.visitChildren(GeneratorVisitor(context: c));
    print(c);
  }

  @override
  void visitOperationDefinitionNode(OperationDefinitionNode node) {
    final typeNode = context.schema.lookupOperationType(node.type);
    if (typeNode == null) {
      throw InvalidGraphQLDocumentError(
          "Failed to find operation type for ${node.type}");
    }
    node.visitChildren(
      GeneratorVisitor(
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
    final typeNode =
        context.schema.lookupType(fragmentDef.typeCondition.on.name);

    if (typeNode == null) {
      throw InvalidGraphQLDocumentError(
          "Failed to find type ${fragmentDef.typeCondition.on.name.value} for fragment ${node.name}");
    }

    if (typeNode.name.value == context.currentType.name.value) {
      context.addFragment(Name.fromSegment(FragmentNameSegment(fragmentDef)));
      fragmentDef.visitChildren(this);
    } else {
      final c = context.withNameAndType(
        TypeNameSegment(fragmentDef.typeCondition),
        typeNode,
        inFragment: fragmentDef,
        possibleTypeOf: context.path,
      );
      fragmentDef.visitChildren(
        GeneratorVisitor(
          context: c,
        ),
      );
      context.addPossibleTypeName(c);
    }
  }

  @override
  void visitSelectionSetNode(SelectionSetNode node) {
    super.visitSelectionSetNode(node);
    final inFragment = context.inFragment;
    if (inFragment != null) {
      context.addFragment(inFragment);
    }
  }

  @override
  void visitInlineFragmentNode(InlineFragmentNode node) {
    final typeCondition = node.typeCondition;
    // If we do not have a type condition, inline the selection set.
    if (typeCondition == null) {
      node.selectionSet.visitChildren(this);
      return;
    }

    final typeNode = context.schema.lookupType(typeCondition.on.name);

    if (typeNode == null) {
      throw InvalidGraphQLDocumentError(
          "Failed to find type ${typeCondition.on.name.value} for inline fragment");
    }

    if (typeNode.name.value == context.currentType.name.value) {
      node.selectionSet.visitChildren(this);
      return;
    }

    final c = context.withNameAndType(
      TypeNameSegment(typeCondition),
      typeNode,
      possibleTypeOf: context.path,
    );
    node.visitChildren(
      GeneratorVisitor(
        context: c,
      ),
    );
    context.addPossibleTypeName(c);
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
      node.visitChildren(GeneratorVisitor(context: c));
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
          isEnum: true,
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
