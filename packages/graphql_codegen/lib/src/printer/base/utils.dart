import 'package:gql/ast.dart';

TypeNode typeNodeAsNullable(TypeNode node) {
  if (!node.isNonNull) {
    return node;
  }
  if (node is ListTypeNode) {
    return ListTypeNode(
      type: node.type,
      isNonNull: false,
    );
  }
  if (node is NamedTypeNode) {
    return NamedTypeNode(
      name: node.name,
      isNonNull: false,
    );
  }
  return node;
}
