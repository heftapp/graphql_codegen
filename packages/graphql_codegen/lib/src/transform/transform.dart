import 'package:gql/ast.dart' as ast;
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/transform/add_typename_transforming_visitor.dart';

import 'fix_unnamed_operations_visitor.dart';

ast.DocumentNode transform(
  GraphQLCodegenConfig config,
  ast.DocumentNode node,
) =>
    [
          if (config.addTypename)
            AddTypenameTransformationVisitor(config: config),
          FixUnnamedOperationsVisitor(),
        ].fold<Node>(
          node,
          (previousValue, element) => previousValue.accept(element),
        )
        as ast.DocumentNode;
