import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/document.dart';
import 'package:graphql_codegen/src/printer/base/input.dart';
import 'package:graphql_codegen/src/printer/clients/graphql.dart';
import 'package:graphql_codegen/src/printer/clients/graphql_flutter.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/config/config.dart';

List<Spec> printOperationSpecs(PrintContext<ContextOperation> elementContext) {
  final context = elementContext.context;
  final operation = context.operation;
  final clients = context.config.clients;
  return [
    if (context.hasVariables) ...printVariableClasses(elementContext),
    printContext(elementContext),
    ...printContextExtension(elementContext),
    if (operation != null)
      printDocument(
        elementContext,
        operation,
      ),
    if (clients.contains(GraphQLCodegenConfigClient.graphql))
      ...printGraphQLClientSpecs(elementContext),
    if (clients.contains(GraphQLCodegenConfigClient.graphqlFlutter))
      ...printGraphQLFlutterSpecs(elementContext),
  ];
}
