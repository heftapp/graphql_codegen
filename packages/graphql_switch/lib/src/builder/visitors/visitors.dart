import 'package:gql/ast.dart';
export 'package:graphql_codegen/src/printer/context.dart' show PrintContext;
import 'package:graphql_codegen/src/transform/transforming_visitor.dart';
import 'package:graphql_codegen/src/context/schema.dart';

class RemoveDirectivesVisitor extends RecursiveTransformingVisitor {
  @override
  FragmentDefinitionNode visitFragmentDefinitionNode(
    FragmentDefinitionNode node,
  ) {
    final newNode = super.visitFragmentDefinitionNode(node);
    return FragmentDefinitionNode(
      name: newNode.name,
      typeCondition: newNode.typeCondition,
      selectionSet: newNode.selectionSet,
      directives: newNode.directives
          .where((element) => element.name.value != 'switch')
          .toList(),
    );
  }

  @override
  FieldNode visitFieldNode(FieldNode node) {
    final newNode = super.visitFieldNode(node);
    return FieldNode(
      name: newNode.name,
      span: newNode.span,
      alias: newNode.alias,
      arguments: newNode.arguments,
      selectionSet: newNode.selectionSet,
      directives: newNode.directives
          .where((element) => element.name.value != 'switch')
          .toList(),
    );
  }
}

const String kTypenameFieldName = '__typename';

class AddTypenameAndDataId extends RecursiveTransformingVisitor {
  final int depth;
  final TypeDefinitionNode? definitionNode;
  final Schema schema;

  AddTypenameAndDataId({
    this.definitionNode,
    required this.schema,
    this.depth = 0,
  });

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    final typedef = schema.lookupOperationType(node.type);
    return OperationDefinitionNode(
      variableDefinitions: node.variableDefinitions,
      name: node.name,
      type: node.type,
      selectionSet: node.selectionSet.accept(
              AddTypenameAndDataId(schema: schema, definitionNode: typedef))
          as SelectionSetNode,
      span: node.span,
      directives: node.directives,
    );
  }

  @override
  FragmentDefinitionNode visitFragmentDefinitionNode(
    FragmentDefinitionNode node,
  ) {
    final typedef = schema.lookupType(node.typeCondition.on.name);
    return FragmentDefinitionNode(
      name: node.name,
      typeCondition: node.typeCondition,
      directives: node.directives,
      span: node.span,
      selectionSet: node.selectionSet.accept(
              AddTypenameAndDataId(schema: schema, definitionNode: typedef))
          as SelectionSetNode,
    );
  }

  @override
  FieldNode visitFieldNode(FieldNode node) {
    final localDef = definitionNode;
    if (localDef == null) {
      return super.visitFieldNode(node);
    }
    final fieldTypeDefinition = schema.lookupTypeDefinitionNodeFromField(
      localDef,
      node.name,
    );
    if (fieldTypeDefinition == null) {
      return super.visitFieldNode(node);
    }
    return FieldNode(
      alias: node.alias,
      name: node.name,
      arguments: node.arguments,
      span: node.span,
      selectionSet:
          node.selectionSet?.accept<Node>(inField(node, fieldTypeDefinition))
              as SelectionSetNode?,
    );
  }

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) {
    final def = definitionNode;
    final newNode = super.visitSelectionSetNode(node);
    if (def == null) return newNode;

    final fieldNodes = newNode.selections.whereType<FieldNode>();

    final hasTypename =
        fieldNodes.any((element) => element.name.value == kTypenameFieldName);
    final selections = <SelectionNode>[...newNode.selections];
    if (!hasTypename && depth > 0) {
      selections.add(
        FieldNode(
          name: NameNode(
            value: '__typename',
          ),
          directives: [kSkipDirective],
        ),
      );
    }
    final hasIDField = fieldNodes
        .any((element) => (element.alias ?? element.name).value == 'id');
    if (hasIDField) {
      return SelectionSetNode(selections: selections, span: newNode.span);
    }
    final idTypeNode = schema.lookupTypeNodeFromField(
      def,
      NameNode(value: 'id'),
    );
    if (idTypeNode is! NamedTypeNode || idTypeNode.name.value != 'ID') {
      return SelectionSetNode(selections: selections, span: newNode.span);
    }
    final idFieldTypeDef = schema.lookupTypeDefinitionFromTypeNode(
      idTypeNode,
    );

    if (idFieldTypeDef is ScalarTypeDefinitionNode) {
      selections.add(
        FieldNode(name: NameNode(value: 'id'), directives: [
          kSkipDirective,
        ]),
      );
    }
    return SelectionSetNode(
      selections: selections,
      span: newNode.span,
    );
  }

  AddTypenameAndDataId inField(
    FieldNode node,
    TypeDefinitionNode definitionNode,
  ) =>
      AddTypenameAndDataId(
        definitionNode: definitionNode,
        depth: depth + 1,
        schema: schema,
      );
}

const kSkipDirective =
    DirectiveNode(name: NameNode(value: 'switch'), arguments: [
  ArgumentNode(
    name: NameNode(value: 'ignore'),
    value: BooleanValueNode(value: true),
  )
]);
