import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/printer/utils.dart';
import 'package:graphql_codegen/utils.dart';

Spec printOnMutationCompleted(ContextOperation context) => FunctionType(
      (b) => b
        ..requiredParameters = ListBuilder([
          refer('dynamic'),
          TypeReference(
            (b) => b
              ..symbol = printClassName(context.path)
              ..isNullable = true,
          )
        ])
        ..returnType = TypeReference(
          (b) => b
            ..symbol = 'FutureOr'
            ..types = ListBuilder([refer("void")]),
        ),
    ).toTypeDef(printGraphQLClientOnMutationCompleteName(context.path));

Spec printQueryOptions(ContextOperation context) {
  return Class(
    (b) => b
      ..name = printGraphQLClientOptionsName(context.path)
      ..extend = refer("graphql.QueryOptions")
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter(
                  'operationName',
                  'String',
                ),
                if (context.hasVariables)
                  printOptionsParameter(
                    'variables',
                    printVariableClassName(context.path),
                    isRequired: context.isVariablesRequired,
                  ),
                printOptionsParameter(
                  'fetchPolicy',
                  'graphql.FetchPolicy',
                ),
                printOptionsParameter(
                  'errorPolicy',
                  'graphql.ErrorPolicy',
                ),
                printOptionsParameter(
                  'cacheRereadPolicy',
                  'graphql.CacheRereadPolicy',
                ),
                printOptionsParameter(
                  'optimisticResult',
                  'Object',
                ),
                printOptionsParameter(
                  'pollInterval',
                  'Duration',
                ),
                printOptionsParameter(
                  'context',
                  'graphql.Context',
                ),
              ],
            )
            ..initializers = ListBuilder([
              refer('super').call([], {
                if (context.hasVariables && context.isVariablesRequired)
                  'variables': refer('variables').property('toJson').call([])
                else if (context.hasVariables)
                  'variables': refer('variables')
                      .nullSafeProperty('toJson')
                      .call([]).ifNullThen(literalMap({})),
                'operationName': refer('operationName'),
                'fetchPolicy': refer('fetchPolicy'),
                'errorPolicy': refer('errorPolicy'),
                'cacheRereadPolicy': refer('cacheRereadPolicy'),
                'optimisticResult': refer('optimisticResult'),
                'pollInterval': refer('pollInterval'),
                'context': refer('context'),
                'document': refer(printOperationDocumentName(context.path))
              }).code,
            ]),
        ),
      ]),
  );
}

/* 
    class GQLFetchMoreOptionsQueryUpdateSRequired extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryUpdateSRequired(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryUpdateSRequired variables})
      : super(
            document: QUERY_UPDATE_S_REQUIRED,
            variables: variables.toJson(),
            updateQuery: updateQuery);
}
*/
Spec printFetchMoreOptions(Context context) {
  final hasVariables = context.hasVariables;
  final areVariablesRequired = context.isVariablesRequired;
  return Class(
    (b) => b
      ..name = printGraphQLClientFetchMoreOptionsName(context.path)
      ..extend = refer("graphql.FetchMoreOptions")
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..named = true
                  ..required = true
                  ..name = 'updateQuery'
                  ..type =
                      TypeReference((b) => b..symbol = 'graphql.UpdateQuery'),
              ),
              if (hasVariables)
                Parameter(
                  (b) => b
                    ..named = true
                    ..required = areVariablesRequired
                    ..name = 'variables'
                    ..type = TypeReference(
                      (b) => b
                        ..symbol = printVariableClassName(context.path)
                        ..isNullable = !areVariablesRequired,
                    ),
                ),
            ])
            ..initializers = ListBuilder([
              refer('super').call(
                [],
                {
                  'updateQuery': refer('updateQuery'),
                  if (hasVariables)
                    'variables': areVariablesRequired
                        ? refer('variables').property('toJson').call([])
                        : refer('variables')
                            .nullSafeProperty('toJson')
                            .call([]).ifNullThen(literal({})),
                  'document': refer(printOperationDocumentName(context.path)),
                },
              ).code
            ]),
        ),
      ]),
  );
}

Parameter printOptionsParameter(
  String name,
  String symbol, {
  bool isRequired = false,
}) =>
    Parameter(
      (b) => b
        ..name = name
        ..named = true
        ..required = isRequired
        ..type = TypeReference(
          (b) => b
            ..isNullable = !isRequired
            ..symbol = symbol,
        ),
    );

Spec printMutationOptions(ContextOperation context,
    {String? name, bool disableVariables = false}) {
  final hasVariables = !disableVariables && context.hasVariables;
  return Class(
    (b) => b
      ..name = name ?? printGraphQLClientOptionsName(context.path)
      ..extend = refer("graphql.MutationOptions")
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter('operationName', 'String'),
                if (hasVariables)
                  printOptionsParameter(
                    'variables',
                    printVariableClassName(context.path),
                    isRequired: context.isVariablesRequired,
                  ),
                printOptionsParameter(
                  'fetchPolicy',
                  'graphql.FetchPolicy',
                ),
                printOptionsParameter(
                  'errorPolicy',
                  'graphql.ErrorPolicy',
                ),
                printOptionsParameter(
                  'cacheRereadPolicy',
                  'graphql.CacheRereadPolicy',
                ),
                printOptionsParameter(
                  'optimisticResult',
                  'Object',
                ),
                printOptionsParameter(
                  'context',
                  'graphql.Context',
                ),
                printOptionsParameter(
                  'onCompleted',
                  printGraphQLClientOnMutationCompleteName(context.path),
                ),
                printOptionsParameter(
                  'update',
                  'graphql.OnMutationUpdate',
                ),
                printOptionsParameter(
                  'onError',
                  "graphql.OnError",
                ),
              ],
            )
            ..initializers = ListBuilder([
              refer('super').call([], {
                if (hasVariables && context.isVariablesRequired)
                  'variables': refer('variables').property('toJson').call([])
                else if (hasVariables)
                  'variables': refer('variables')
                      .nullSafeProperty('toJson')
                      .call([]).ifNullThen(literalMap({})),
                'operationName': refer('operationName'),
                'fetchPolicy': refer('fetchPolicy'),
                'errorPolicy': refer('errorPolicy'),
                'cacheRereadPolicy': refer('cacheRereadPolicy'),
                'optimisticResult': refer('optimisticResult'),
                'context': refer('context'),
                'onCompleted': printNullCheck(
                  refer('onCompleted'),
                  Method(
                    (b) => b
                      ..lambda = true
                      ..requiredParameters = ListBuilder([
                        Parameter((b) => b..name = 'data'),
                      ])
                      ..body = refer('onCompleted').call([
                        refer('data'),
                        printNullCheck(
                          refer('data'),
                          refer(printClassName(context.path))
                              .property('fromJson')
                              .call(
                            [refer('data')],
                          ),
                        )
                      ]).code,
                  ).closure,
                ),
                'update': refer('update'),
                'onError': refer('onError'),
                'document': refer(printOperationDocumentName(context.path))
              }).code,
            ]),
        ),
      ]),
  );
}

Spec printMutationExtension(ContextOperation context) {
  final isOptionsRequired = context.isVariablesRequired;
  final optionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..modifier = MethodModifier.async
            ..name = printGraphQLClientExtensionMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) optionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) optionsParameter,
            ])
            ..body = refer("this")
                .property("mutate")
                .call([
                  if (isOptionsRequired)
                    refer("options")
                  else
                    refer("options").ifNullThen(
                      refer(printGraphQLClientOptionsName(context.path))
                          .call([]),
                    )
                ])
                .awaited
                .code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder([refer('graphql.QueryResult')]),
            ),
        ),
      ]),
  );
}

Spec printResultExtension(ContextOperation context) {
  return Extension(
    (b) => b
      ..name = printGraphQLClientResultExtensionName(context.path)
      ..on = refer('graphql.QueryResult')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..type = MethodType.getter
            ..name = printGraphQLClientResultExtensionGetterName(context.path)
            ..returns = TypeReference(
              (b) => b
                ..symbol = printClassName(context.path)
                ..isNullable = true,
            )
            ..body = Block.of([
              refer("this").property("data").assignFinal("data").statement,
              printNullCheck(
                refer('data'),
                refer(printClassName(context.path))
                    .property('fromJson')
                    .call([refer('data')]),
              ).returned.statement,
            ]),
        ),
      ]),
  );
}

Spec printQueryExtension(ContextOperation context) {
  final isOptionsRequired = context.isVariablesRequired;
  final optionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..modifier = MethodModifier.async
            ..name = printGraphQLClientExtensionMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) optionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) optionsParameter,
            ])
            ..body = refer("this")
                .property("query")
                .call([
                  if (isOptionsRequired)
                    refer("options")
                  else
                    refer("options").ifNullThen(
                      refer(printGraphQLClientOptionsName(context.path))
                          .call([]),
                    )
                ])
                .awaited
                .code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder([refer('graphql.QueryResult')]),
            ),
        ),
      ]),
  );
}

Iterable<Spec> printMutation(ContextOperation context) {
  return [
    printOnMutationCompleted(context),
    printMutationOptions(context),
    printMutationExtension(context),
    printResultExtension(context),
  ];
}

Iterable<Spec> printQuery(ContextOperation context) {
  return [
    printQueryOptions(context),
    printFetchMoreOptions(context),
    printQueryExtension(context),
    printResultExtension(context),
  ];
}

Iterable<Spec> printGraphQLClientSpecs(
  ContextOperation context,
) {
  final operation = context.operation;
  switch (operation?.type) {
    case OperationType.mutation:
      return printMutation(context);
    case OperationType.query:
      return printQuery(context);
    default:
      return [];
  }
}

Iterable<Directive> printGraphQLDirectives(
  ContextRoot context,
) {
  if (!context.hasOperation) return [];
  return [
    if (context.hasMutation) Directive.import('dart:async'),
    Directive.import(
      'package:graphql/client.dart',
      as: 'graphql',
    )
  ];
}
