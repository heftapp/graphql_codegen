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

Spec printOnMutationUpdate(ContextOperation context) => FunctionType(
      (b) => b
        ..requiredParameters = ListBuilder([
          refer('graphql.GraphQLDataProxy'),
          TypeReference(
            (b) => b
              ..symbol = printGraphQLClientResultName(context.path)
              ..isNullable = true,
          )
        ])
        ..returnType = TypeReference(
          (b) => b
            ..symbol = 'FutureOr'
            ..types = ListBuilder([refer("void")]),
        ),
    ).toTypeDef(printGraphQLClientOnMutationUpdateName(context.path));

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

Spec printMutationOptions(ContextOperation context) {
  return Class(
    (b) => b
      ..name = printGraphQLClientOptionsName(context.path)
      ..extend = refer("graphql.MutationOptions")
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter('operationName', 'String'),
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
                  'context',
                  'graphql.Context',
                ),
                printOptionsParameter(
                  'onCompleted',
                  printGraphQLClientOnMutationCompleteName(context.path),
                ),
                printOptionsParameter(
                  'update',
                  printGraphQLClientOnMutationUpdateName(context.path),
                ),
                printOptionsParameter(
                  'onError',
                  "graphql.OnError",
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
                'update': printNullCheck(
                  refer('update'),
                  Method(
                    (b) => b
                      ..lambda = true
                      ..requiredParameters = ListBuilder([
                        Parameter((b) => b..name = 'cache'),
                        Parameter((b) => b..name = 'result'),
                      ])
                      ..body = refer('update').call([
                        refer('cache'),
                        printNullCheck(
                          refer('result'),
                          refer(printGraphQLClientResultName(context.path))
                              .call(
                            [refer('result')],
                          ),
                        )
                      ]).code,
                  ).closure,
                ),
                'onError': refer('onError'),
                'document': refer(printOperationDocumentName(context.path))
              }).code,
            ]),
        ),
      ]),
  );
}

Expression printNullCheck(Reference variable, Expression whenNotNull) =>
    variable.equalTo(literalNull).conditional(literalNull, whenNotNull);

Spec printResult(ContextOperation context) {
  return Class(
    (b) => b
      ..name = printGraphQLClientResultName(context.path)
      ..fields = ListBuilder([
        Field(
          (b) => b
            ..name = "result"
            ..modifier = FieldModifier.final$
            ..type = refer("graphql.QueryResult"),
        ),
        Field(
          (b) => b
            ..name = "parsedData"
            ..modifier = FieldModifier.final$
            ..type = TypeReference(
              (b) => b
                ..symbol = printClassName(context.path)
                ..isNullable = true,
            ),
        ),
      ])
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..name = '_'
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..name = "result"
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = "parsedData"
                  ..toThis = true,
              ),
            ]),
        ),
        Constructor(
          (b) => b
            ..factory = true
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..name = "result"
                  ..type = refer("graphql.QueryResult"),
              )
            ])
            ..body = Code("""
            final data = result.data;
            final parsedData = data == null ? null : ${printClassName(context.path)}.fromJson(data);
            return ${printGraphQLClientResultName(context.path)}._(result, parsedData);
            """),
        )
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
            ..body = refer(printGraphQLClientResultName(context.path)).call([
              refer("this").property("mutate").call([
                if (isOptionsRequired)
                  refer("options")
                else
                  refer("options").ifNullThen(
                    refer(printGraphQLClientOptionsName(context.path)).call([]),
                  )
              ]).awaited
            ]).code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder(
                    [refer(printGraphQLClientResultName(context.path))]),
            ),
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
            ..body = refer(printGraphQLClientResultName(context.path)).call([
              refer("this").property("query").call([
                if (isOptionsRequired)
                  refer("options")
                else
                  refer("options").ifNullThen(
                    refer(printGraphQLClientOptionsName(context.path)).call([]),
                  )
              ]).awaited
            ]).code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder(
                    [refer(printGraphQLClientResultName(context.path))]),
            ),
        ),
      ]),
  );
}

Iterable<Spec> printMutation(ContextOperation context) {
  return [
    printOnMutationCompleted(context),
    printOnMutationUpdate(context),
    printMutationOptions(context),
    printResult(context),
    printMutationExtension(context)
  ];
}

Iterable<Spec> printQuery(ContextOperation context) {
  return [
    printQueryOptions(context),
    printResult(context),
    printQueryExtension(context),
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
