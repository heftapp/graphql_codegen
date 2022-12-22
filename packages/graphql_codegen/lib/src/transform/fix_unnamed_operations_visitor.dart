import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/transform/transforming_visitor.dart';

class FixUnnamedOperationsVisitor extends RecursiveTransformingVisitor {
  @override
  DocumentNode visitDocumentNode(DocumentNode node) {
    final filteredDefinitions = node.definitions
        .where(
          (element) =>
              element is! OperationDefinitionNode || element.name != null,
        )
        .toList();
    return DocumentNode(
      definitions: filteredDefinitions,
    );
  }
}
