import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/transform/transforming_visitor.dart';

const typenameFieldName = '__typename';

const _MATCH_WILDCARD = '*';
const _MATCH_DOUBLE_WILDCARD = '**';

class AddTypenameTransformationVisitor extends RecursiveTransformingVisitor {
  final Iterable<Iterable<String>> _excludedPatterns;

  AddTypenameTransformationVisitor({
    required GraphQLCodegenConfig config,
  }) : _excludedPatterns =
            config.addTypenameExcludedPaths.map((e) => e.split(".")).toList();

  AddTypenameTransformationVisitor._internal(this._excludedPatterns);

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    final Set<String> matches = Set.of([node.name?.value].whereType<String>());
    switch (node.type) {
      case OperationType.mutation:
        matches.add('mutation');
        break;
      case OperationType.subscription:
        matches.add('subscription');
        break;
      case OperationType.query:
        matches.add('query');
    }
    final visitor = _matchAndSkip(matches);

    return OperationDefinitionNode(
      name: visitor.visitOne(node.name),
      directives: visitor.visitAll(node.directives),
      type: node.type,
      selectionSet: visitor.visitOne(node.selectionSet),
      variableDefinitions: visitor.visitAll(node.variableDefinitions),
    );
  }

  @override
  FragmentDefinitionNode visitFragmentDefinitionNode(
    FragmentDefinitionNode node,
  ) {
    final visitor = _matchAndSkip(Set.of([
      node.name.value,
      'fragment',
    ]));
    return FragmentDefinitionNode(
      name: visitor.visitOne(node.name),
      directives: visitor.visitAll(node.directives),
      selectionSet: visitor.visitOne(node.selectionSet),
      typeCondition: visitor.visitOne(node.typeCondition),
    );
  }

  @override
  FieldNode visitFieldNode(
    FieldNode node,
  ) {
    final visitor =
        _matchAndSkip(Set.of([node.alias?.value ?? node.name.value]));
    return FieldNode(
      name: visitor.visitOne(node.name),
      directives: visitor.visitAll(node.directives),
      alias: visitor.visitOne(node.alias),
      arguments: visitor.visitAll(node.arguments),
      selectionSet: visitor.visitOne(node.selectionSet),
    );
  }

  AddTypenameTransformationVisitor _matchAndSkip(Set<String> matches) {
    final processedPatterns = _excludedPatterns
        .expand(
          (element) =>
              element.isNotEmpty && element.first == _MATCH_DOUBLE_WILDCARD
                  ? [element.skip(1), element]
                  : [element],
        )
        .where(
          (element) =>
              element.isNotEmpty &&
              (element.first == _MATCH_WILDCARD ||
                  element.first == _MATCH_DOUBLE_WILDCARD ||
                  matches.contains(element.first)),
        )
        .map((element) =>
            element.isNotEmpty && element.first == _MATCH_DOUBLE_WILDCARD
                ? element
                : element.skip(1));
    return AddTypenameTransformationVisitor._internal(processedPatterns);
  }

  bool get _isExcluded => _excludedPatterns.any((element) => element.isEmpty);

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) {
    final hasTypename = node.selections.whereType<FieldNode>().any((element) =>
        element.alias?.value == typenameFieldName ||
        (element.alias == null && element.name.value == typenameFieldName));

    var selections = List.of(node.selections);

    if (!hasTypename && !_isExcluded) {
      final newField = FieldNode(name: NameNode(value: typenameFieldName));
      selections.add(newField);
    }

    return SelectionSetNode(
      selections: visitAll(selections),
    );
  }
}
