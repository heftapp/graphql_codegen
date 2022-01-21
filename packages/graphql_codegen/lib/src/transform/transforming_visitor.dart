import 'package:gql/ast.dart';

class RecursiveTransformingVisitor extends Visitor<Node> {
  N visitOne<N extends Node?>(
    N node,
  ) {
    if (node == null) return node;

    return node.accept(this) as N;
  }

  List<N> visitAll<N extends Node>(
    List<N> nodes,
  ) =>
      nodes
          .map(
            (
              node,
            ) =>
                node.accept(this),
          )
          .cast<N>()
          .toList(growable: false);

  @override
  DocumentNode visitDocumentNode(
    DocumentNode node,
  ) {
    return DocumentNode(
      definitions: visitAll(node.definitions),
    );
  }

  @override
  ArgumentNode visitArgumentNode(
    ArgumentNode node,
  ) {
    return ArgumentNode(
      name: visitOne(node.name),
      value: visitOne(node.value),
    );
  }

  @override
  BooleanValueNode visitBooleanValueNode(
    BooleanValueNode node,
  ) {
    return BooleanValueNode(
      value: node.value,
    );
  }

  @override
  DefaultValueNode visitDefaultValueNode(
    DefaultValueNode node,
  ) {
    return DefaultValueNode(
      value: visitOne(node.value),
    );
  }

  @override
  DirectiveDefinitionNode visitDirectiveDefinitionNode(
    DirectiveDefinitionNode node,
  ) {
    return DirectiveDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      locations: node.locations,
      repeatable: node.repeatable,
      args: visitAll(node.args),
    );
  }

  @override
  DirectiveNode visitDirectiveNode(
    DirectiveNode node,
  ) {
    return DirectiveNode(
      arguments: visitAll(node.arguments),
      name: visitOne(node.name),
    );
  }

  @override
  EnumTypeDefinitionNode visitEnumTypeDefinitionNode(
    EnumTypeDefinitionNode node,
  ) {
    return EnumTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      values: visitAll(node.values),
    );
  }

  @override
  EnumTypeExtensionNode visitEnumTypeExtensionNode(
    EnumTypeExtensionNode node,
  ) {
    return EnumTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      values: visitAll(node.values),
    );
  }

  @override
  EnumValueDefinitionNode visitEnumValueDefinitionNode(
    EnumValueDefinitionNode node,
  ) {
    return EnumValueDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
    );
  }

  @override
  EnumValueNode visitEnumValueNode(
    EnumValueNode node,
  ) {
    return EnumValueNode(
      name: visitOne(node.name),
    );
  }

  @override
  FieldDefinitionNode visitFieldDefinitionNode(
    FieldDefinitionNode node,
  ) {
    return FieldDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      args: visitAll(node.args),
      type: visitOne(node.type),
    );
  }

  @override
  FieldNode visitFieldNode(
    FieldNode node,
  ) {
    return FieldNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      alias: visitOne(node.alias),
      arguments: visitAll(node.arguments),
      selectionSet: visitOne(node.selectionSet),
    );
  }

  @override
  FloatValueNode visitFloatValueNode(
    FloatValueNode node,
  ) {
    return FloatValueNode(
      value: node.value,
    );
  }

  @override
  FragmentDefinitionNode visitFragmentDefinitionNode(
    FragmentDefinitionNode node,
  ) {
    return FragmentDefinitionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      selectionSet: visitOne(node.selectionSet),
      typeCondition: visitOne(node.typeCondition),
    );
  }

  @override
  FragmentSpreadNode visitFragmentSpreadNode(
    FragmentSpreadNode node,
  ) {
    return FragmentSpreadNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
    );
  }

  @override
  InlineFragmentNode visitInlineFragmentNode(
    InlineFragmentNode node,
  ) {
    return InlineFragmentNode(
      directives: visitAll(node.directives),
      selectionSet: visitOne(node.selectionSet),
      typeCondition: visitOne(node.typeCondition),
    );
  }

  @override
  InputObjectTypeDefinitionNode visitInputObjectTypeDefinitionNode(
    InputObjectTypeDefinitionNode node,
  ) {
    return InputObjectTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
    );
  }

  @override
  InputObjectTypeExtensionNode visitInputObjectTypeExtensionNode(
    InputObjectTypeExtensionNode node,
  ) {
    return InputObjectTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
    );
  }

  @override
  InputValueDefinitionNode visitInputValueDefinitionNode(
    InputValueDefinitionNode node,
  ) {
    return InputValueDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      defaultValue: visitOne(node.defaultValue),
      type: visitOne(node.type),
    );
  }

  @override
  IntValueNode visitIntValueNode(
    IntValueNode node,
  ) {
    return IntValueNode(
      value: node.value,
    );
  }

  @override
  InterfaceTypeDefinitionNode visitInterfaceTypeDefinitionNode(
    InterfaceTypeDefinitionNode node,
  ) {
    return InterfaceTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
    );
  }

  @override
  InterfaceTypeExtensionNode visitInterfaceTypeExtensionNode(
    InterfaceTypeExtensionNode node,
  ) {
    return InterfaceTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
    );
  }

  @override
  ListTypeNode visitListTypeNode(
    ListTypeNode node,
  ) {
    return ListTypeNode(
      type: visitOne(node.type),
      isNonNull: node.isNonNull,
    );
  }

  @override
  ListValueNode visitListValueNode(
    ListValueNode node,
  ) {
    return ListValueNode(
      values: visitAll(node.values),
    );
  }

  @override
  NameNode visitNameNode(
    NameNode node,
  ) {
    return NameNode(span: node.span, value: node.value);
  }

  @override
  NamedTypeNode visitNamedTypeNode(
    NamedTypeNode node,
  ) {
    return NamedTypeNode(
      isNonNull: node.isNonNull,
      name: visitOne(node.name),
    );
  }

  @override
  NullValueNode visitNullValueNode(
    NullValueNode node,
  ) {
    return NullValueNode();
  }

  @override
  ObjectFieldNode visitObjectFieldNode(
    ObjectFieldNode node,
  ) {
    return ObjectFieldNode(
      name: visitOne(node.name),
      value: visitOne(node.value),
    );
  }

  @override
  ObjectTypeDefinitionNode visitObjectTypeDefinitionNode(
    ObjectTypeDefinitionNode node,
  ) {
    return ObjectTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
      interfaces: visitAll(node.interfaces),
    );
  }

  @override
  ObjectTypeExtensionNode visitObjectTypeExtensionNode(
    ObjectTypeExtensionNode node,
  ) {
    return ObjectTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      fields: visitAll(node.fields),
      interfaces: visitAll(node.interfaces),
    );
  }

  @override
  ObjectValueNode visitObjectValueNode(
    ObjectValueNode node,
  ) {
    return ObjectValueNode(
      fields: visitAll(node.fields),
    );
  }

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    return OperationDefinitionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      type: node.type,
      selectionSet: visitOne(node.selectionSet),
      variableDefinitions: visitAll(node.variableDefinitions),
    );
  }

  @override
  OperationTypeDefinitionNode visitOperationTypeDefinitionNode(
    OperationTypeDefinitionNode node,
  ) {
    return OperationTypeDefinitionNode(
      operation: node.operation,
      type: visitOne(node.type),
    );
  }

  @override
  ScalarTypeDefinitionNode visitScalarTypeDefinitionNode(
    ScalarTypeDefinitionNode node,
  ) {
    return ScalarTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
    );
  }

  @override
  ScalarTypeExtensionNode visitScalarTypeExtensionNode(
    ScalarTypeExtensionNode node,
  ) {
    return ScalarTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
    );
  }

  @override
  SchemaDefinitionNode visitSchemaDefinitionNode(
    SchemaDefinitionNode node,
  ) {
    return SchemaDefinitionNode(
      directives: visitAll(node.directives),
      operationTypes: visitAll(node.operationTypes),
    );
  }

  @override
  SchemaExtensionNode visitSchemaExtensionNode(
    SchemaExtensionNode node,
  ) {
    return SchemaExtensionNode(
      directives: visitAll(node.directives),
      operationTypes: visitAll(node.operationTypes),
    );
  }

  @override
  SelectionSetNode visitSelectionSetNode(
    SelectionSetNode node,
  ) {
    return SelectionSetNode(
      selections: visitAll(node.selections),
    );
  }

  @override
  StringValueNode visitStringValueNode(
    StringValueNode node,
  ) {
    return StringValueNode(
      isBlock: node.isBlock,
      value: node.value,
    );
  }

  @override
  TypeConditionNode visitTypeConditionNode(
    TypeConditionNode node,
  ) {
    return TypeConditionNode(
      on: visitOne(node.on),
    );
  }

  @override
  UnionTypeDefinitionNode visitUnionTypeDefinitionNode(
    UnionTypeDefinitionNode node,
  ) {
    return UnionTypeDefinitionNode(
      name: visitOne(node.name),
      description: visitOne(node.description),
      directives: visitAll(node.directives),
      types: visitAll(node.types),
    );
  }

  @override
  UnionTypeExtensionNode visitUnionTypeExtensionNode(
    UnionTypeExtensionNode node,
  ) {
    return UnionTypeExtensionNode(
      name: visitOne(node.name),
      directives: visitAll(node.directives),
      types: visitAll(node.types),
    );
  }

  @override
  VariableDefinitionNode visitVariableDefinitionNode(
    VariableDefinitionNode node,
  ) {
    return VariableDefinitionNode(
      directives: visitAll(node.directives),
      defaultValue: visitOne(node.defaultValue),
      type: visitOne(node.type),
      variable: visitOne(node.variable),
    );
  }

  @override
  VariableNode visitVariableNode(
    VariableNode node,
  ) {
    return VariableNode(
      name: visitOne(node.name),
    );
  }
}
