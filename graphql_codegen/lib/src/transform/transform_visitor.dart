import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context.dart';

const _TYPENAME_FIELD = '__typename';

class TransformVisitor extends RecursiveVisitor {
  final Context context;

  TransformVisitor({required this.context});

  @override
  void visitSelectionSetNode(SelectionSetNode node) {
    if (!context.config.addTypename) {
      super.visitSelectionSetNode(node);
      return;
    }
    final hasTypename = node.selections.whereType<FieldNode>().any((element) =>
        element.alias?.value == _TYPENAME_FIELD ||
        (element.alias == null && element.name.value == _TYPENAME_FIELD));
    if (hasTypename) {
      super.visitSelectionSetNode(node);
      return;
    }
    node.selections.add(FieldNode(name: NameNode(value: _TYPENAME_FIELD)));
    super.visitSelectionSetNode(node);
  }
}
