import 'package:gql/ast.dart';

const _TYPENAME_FIELD = '__typename';

class AddTypenameTransformationVisitor extends TransformingVisitor {
  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) {
    final hasTypename = node.selections.whereType<FieldNode>().any((element) =>
        element.alias?.value == _TYPENAME_FIELD ||
        (element.alias == null && element.name.value == _TYPENAME_FIELD));
    if (hasTypename) {
      return node;
    }
    final List<SelectionNode> newSelections = List.from(node.selections);
    final newField = FieldNode(name: NameNode(value: _TYPENAME_FIELD));
    newSelections.add(newField);
    return SelectionSetNode(
      span: node.span,
      selections: newSelections,
    );
  }
}
