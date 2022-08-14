import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/document.dart';
import 'package:graphql_codegen/src/printer/base/input.dart';
import 'package:graphql_codegen/src/printer/clients/graphql.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:gql_code_builder/src/ast.dart' as gql_builder;

List<Spec> printFragmentSpecs(PrintContext<ContextFragment> elementContext) {
  final fragmentNode = elementContext.context.fragment;
  final context = elementContext.context;
  final clients = context.config.clients;
  return [
    if (context.hasVariables) ...printVariableClasses(elementContext),
    printContext(elementContext),
    ...printContextExtension(elementContext),
    if (fragmentNode != null) ...[
      _printFragmentDefinition(
        elementContext,
        fragmentNode,
      ),
      printDocument(
        elementContext,
        fragmentNode,
        refer(elementContext.namePrinter
                .printFragmentDefinitionNodeName(elementContext.path))
            .code,
      ),
    ],
    if (clients.contains(GraphQLCodegenConfigClient.graphql))
      ...printGraphQLClientFragmentSpecs(elementContext)
  ];
}

Spec _printFragmentDefinition(
  PrintContext<ContextFragment> context,
  FragmentDefinitionNode node,
) {
  context.addPackage('package:gql/ast.dart');
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${context.namePrinter.printFragmentDefinitionNodeName(context.context.path)} = ",
      ),
      gql_builder.fromNode(node).code,
      Code(";")
    ]),
  );
}
