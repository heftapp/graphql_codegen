import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/transform/transforming_visitor.dart';
import 'package:graphql_codegen_config/config.dart';

const _TYPENAME_FIELD = '__typename';

class AddTypenameTransformationVisitor extends RecursiveTransformingVisitor {
  final GraphQLCodegenConfig config;
  final List<String> path;

  AddTypenameTransformationVisitor({
    required this.config,
    this.path = const [],
  });

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) {
    final hasTypename = node.selections.whereType<FieldNode>().any((element) =>
        element.alias?.value == _TYPENAME_FIELD ||
        (element.alias == null && element.name.value == _TYPENAME_FIELD));
    if (hasTypename) {
      return super.visitSelectionSetNode(node);
    }

    final List<SelectionNode> newSelections = List.from(node.selections);
    final newField = FieldNode(name: NameNode(value: _TYPENAME_FIELD));
    newSelections.add(newField);
    return SelectionSetNode(
      selections: super.visitAll(newSelections),
    );
  }
}
