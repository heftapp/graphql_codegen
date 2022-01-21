import 'package:gql/ast.dart' as ast;
import 'package:graphql_codegen/src/transform/add_typename_transforming_visitor.dart';
import 'package:graphql_codegen_config/config.dart';

ast.DocumentNode transform(
  GraphQLCodegenConfig config,
  ast.DocumentNode node,
) =>
    ast.transform(node, [
      if (config.addTypename) AddTypenameTransformationVisitor(),
    ]);
