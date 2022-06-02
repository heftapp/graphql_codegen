import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/printer/clients/graphql.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';

import '../context.dart';

Spec printRunMutationTypeDef(PrintContext c) {
  final context = c.context;
  final hasVariables = context.hasVariables;
  final areVariablesRequired = context.isVariablesRequired;
  return FunctionType(
    (b) => b
      ..returnType = generic('graphql.MultiSourceResult',
          refer(c.namePrinter.printClassName(c.path)))
      ..requiredParameters = ListBuilder([
        if (hasVariables && areVariablesRequired)
          refer(c.namePrinter.printVariableClassName(context.path)),
      ])
      ..namedParameters = MapBuilder(
        <String, Reference>{
          if (hasVariables && !areVariablesRequired)
            'variables': TypeReference(
              (b) => b
                ..symbol = c.namePrinter.printVariableClassName(context.path)
                ..isNullable = true,
            ),
          'optimisticResult': TypeReference(
            (b) => b
              ..symbol = 'Object'
              ..isNullable = true,
          )
        },
      ),
  ).toTypeDef(
      c.namePrinter.printGraphQLFlutterClientRunMutationName(context.path));
}

Spec printBuilderMutationTypeDef(PrintContext context) {
  return FunctionType(
    (b) => b
      ..returnType = refer('widgets.Widget')
      ..requiredParameters = ListBuilder(
        [
          refer(context.namePrinter
              .printGraphQLFlutterClientRunMutationName(context.path)),
          generic(
            'graphql.QueryResult',
            refer(context.namePrinter.printClassName(context.path)),
            isNullable: true,
          ),
        ],
      ),
  ).toTypeDef(
      context.namePrinter.printGraphQLFlutterClientBuilderName(context.path));
}

Spec printMutation(PrintContext c) {
  final context = c.context;
  final hasVariables = context.hasVariables;
  final areVariablesRequired = context.isVariablesRequired;
  return Class(
    (b) => b
      ..name =
          c.namePrinter.printGraphQLFlutterClientOperationName(context.path)
      ..extend = TypeReference((b) => b
        ..symbol = 'graphql_flutter.Mutation'
        ..types = ListBuilder([refer(c.namePrinter.printClassName(c.path))]))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'key'
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = 'widgets.Key'
                      ..isNullable = true,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'options'
                  ..type = TypeReference(
                    (b) => b
                      ..symbol =
                          c.namePrinter.printGraphQLFlutterClientOptionsName(
                        context.path,
                      )
                      ..isNullable = true,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'builder'
                  ..required = true
                  ..type = TypeReference(
                    (b) => b
                      ..symbol =
                          c.namePrinter.printGraphQLFlutterClientBuilderName(
                        context.path,
                      ),
                  ),
              )
            ])
            ..initializers = ListBuilder([
              refer('super').call([], {
                'key': refer('key'),
                'options': refer('options').ifNullThen(
                  refer(c.namePrinter
                          .printGraphQLFlutterClientOptionsName(context.path))
                      .newInstance([]),
                ),
                'builder': Method(
                  (b) => b
                    ..requiredParameters = ListBuilder([
                      Parameter((b) => b..name = 'run'),
                      Parameter((b) => b..name = 'result'),
                    ])
                    ..body = refer('builder').call([
                      Method(
                        (b) => b
                          ..requiredParameters = ListBuilder([
                            if (areVariablesRequired)
                              Parameter((b) => b..name = 'variables'),
                          ])
                          ..optionalParameters = ListBuilder([
                            if (hasVariables && !areVariablesRequired)
                              Parameter(
                                (b) => b
                                  ..name = 'variables'
                                  ..named = true,
                              ),
                            Parameter(
                              (b) => b
                                ..name = 'optimisticResult'
                                ..named = true,
                            )
                          ])
                          ..body = refer('run').call(
                            [
                              if (!hasVariables)
                                literalConstMap({})
                              else if (areVariablesRequired)
                                refer('variables').property('toJson').call([])
                              else
                                refer('variables')
                                    .nullSafeProperty('toJson')
                                    .call([]).ifNullThen(literalConstMap({})),
                            ],
                            {'optimisticResult': refer('optimisticResult')},
                          ).code,
                      ).closure,
                      refer('result'),
                    ]).code,
                ).closure,
              }).code,
            ]),
        ),
      ]),
  );
}

Iterable<Spec> printMutationSpecs(PrintContext<ContextOperation> context) {
  _addDependencies(context);
  return [
    printMutationHookResult(context),
    printMutationHook(context),
    printWatchMutationHook(context),
    printMutationOptions(
      context,
      disableVariables: true,
      name: context.namePrinter
          .printGraphQLFlutterClientOptionsName(context.path),
    ),
    printRunMutationTypeDef(context),
    printBuilderMutationTypeDef(context),
    printMutation(context),
  ];
}

Spec printQuerySpec(PrintContext c) {
  final context = c.context;
  return Class(
    (b) => b
      ..name =
          c.namePrinter.printGraphQLFlutterClientOperationName(context.path)
      ..extend = TypeReference((b) => b
        ..symbol = 'graphql_flutter.Query'
        ..types =
            ListBuilder([refer(c.namePrinter.printClassName(context.path))]))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'key'
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = 'widgets.Key'
                      ..isNullable = true,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'options'
                  ..required = context.isVariablesRequired
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = c.namePrinter
                          .printGraphQLClientOptionsName(context.path)
                      ..isNullable = !context.isVariablesRequired,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'builder'
                  ..required = true
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = "graphql_flutter.QueryBuilder"
                      ..types = ListBuilder(
                          [refer(c.namePrinter.printClassName(context.path))]),
                  ),
              ),
            ])
            ..initializers = ListBuilder([
              refer('super').call([], {
                'key': refer('key'),
                'options': context.isVariablesRequired
                    ? refer('options')
                    : refer('options').ifNullThen(
                        refer(c.namePrinter
                                .printGraphQLClientOptionsName(context.path))
                            .newInstance([]),
                      ),
                'builder': refer('builder'),
              }).code,
            ]),
        )
      ]),
  );
}

Iterable<Spec> printQuerySpecs(PrintContext<Context> context) {
  _addDependencies(context);
  return [
    printQueryHook(context),
    printWatchQueryHook(context),
    printQuerySpec(context),
  ];
}

Spec printMutationHookResult(PrintContext context) {
  return Class(
    (b) => b
      ..name =
          context.namePrinter.printGraphQLFlutterClientMutationHookResultName(
        context.path,
      )
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = 'runMutation',
              ),
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = 'result',
              ),
            ]),
        ),
      ])
      ..fields = ListBuilder([
        Field(
          (b) => b
            ..name = 'runMutation'
            ..modifier = FieldModifier.final$
            ..type = refer(
              context.namePrinter
                  .printGraphQLFlutterClientRunMutationName(context.path),
            ),
        ),
        Field(
          (b) => b
            ..name = 'result'
            ..modifier = FieldModifier.final$
            ..type = TypeReference(
              (b) => b
                ..symbol = 'graphql.QueryResult'
                ..types = ListBuilder([
                  refer(context.namePrinter.printClassName(context.path)),
                ]),
            ),
        ),
      ]),
  );
}

Spec printMutationHook(PrintContext context) {
  final runMutation = context.context.hasVariables
      ? context.context.isVariablesRequired
          ? '(variables, {optimisticResult}) => result.runMutation(variables.toJson(), optimisticResult: optimisticResult, )'
          : '({variables, optimisticResult}) => result.runMutation(variables?.toJson() ?? const {}, optimisticResult: optimisticResult, )'
      : '({optimisticResult}) => result.runMutation(const {}, optimisticResult: optimisticResult, )';
  return Method(
    (b) => b
      ..optionalParameters = ListBuilder([
        Parameter(
          (b) => b
            ..type = TypeReference(
              (b) => b
                ..symbol = context.namePrinter
                    .printGraphQLFlutterClientOptionsName(context.path)
                ..isNullable = true,
            )
            ..name = 'options',
        )
      ])
      ..returns = refer(
          context.namePrinter.printGraphQLFlutterClientMutationHookResultName(
        context.path,
      ))
      ..name = context.namePrinter
          .printGraphQLFlutterClientMutationHookName(context.path)
      ..body = Code("""
      final result = graphql_flutter.useMutation(options ?? ${context.namePrinter.printGraphQLFlutterClientOptionsName(context.path)}());
      return ${context.namePrinter.printGraphQLFlutterClientMutationHookResultName(context.path)}(
        ${runMutation},
        result.result,
      );
      """),
  );
}

Spec printWatchHook(PrintContext context, String libraryHookName) {
  final isOptionsRequried = context.context.isVariablesRequired;
  final parameter = Parameter(
    (b) => b
      ..type = TypeReference(
        (b) => b
          ..symbol = context.namePrinter
              .printGraphQLClientWatchOptionsName(context.path)
          ..isNullable = !isOptionsRequried,
      )
      ..name = 'options',
  );
  return Method(
    (b) => b
      ..requiredParameters = ListBuilder([
        if (isOptionsRequried) parameter,
      ])
      ..optionalParameters = ListBuilder([
        if (!isOptionsRequried) parameter,
      ])
      ..returns = TypeReference(
        (b) => b
          ..symbol = 'graphql.ObservableQuery'
          ..types = ListBuilder(
              [refer(context.namePrinter.printClassName(context.path))]),
      )
      ..name = context.namePrinter
          .printGraphQLFlutterClientWatchHookName(context.path)
      ..body = refer('graphql_flutter').property(libraryHookName).call([
        isOptionsRequried
            ? refer('options')
            : refer('options').ifNullThen(refer(context.namePrinter
                    .printGraphQLClientWatchOptionsName(context.path))
                .newInstance([]))
      ]).code,
  );
}

Spec printWatchMutationHook(PrintContext context) =>
    printWatchHook(context, 'useWatchMutation');

Spec printQueryHook(PrintContext c) {
  final context = c.context;
  final isOptionsRequired = context.isVariablesRequired;
  final parameter = Parameter(
    (b) => b
      ..type = TypeReference(
        (b) => b
          ..symbol = c.namePrinter.printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      )
      ..name = 'options',
  );
  return Method(
    (b) => b
      ..requiredParameters = ListBuilder([
        if (isOptionsRequired) parameter,
      ])
      ..optionalParameters = ListBuilder([
        if (!isOptionsRequired) parameter,
      ])
      ..returns = TypeReference(
        (b) => b
          ..symbol = 'graphql_flutter.QueryHookResult'
          ..types =
              ListBuilder([refer(c.namePrinter.printClassName(context.path))]),
      )
      ..name =
          c.namePrinter.printGraphQLFlutterClientMutationHookName(context.path)
      ..body = refer('graphql_flutter').property('useQuery').call([
        isOptionsRequired
            ? refer('options')
            : refer('options').ifNullThen(
                refer(c.namePrinter.printGraphQLClientOptionsName(context.path))
                    .newInstance([]),
              ),
      ]).code,
  );
}

Spec printWatchQueryHook(PrintContext context) =>
    printWatchHook(context, 'useWatchQuery');

Spec printSubscriptionHook(PrintContext context) {
  return Method(
    (b) => b
      ..requiredParameters = ListBuilder([
        Parameter(
          (b) => b
            ..type = refer(
                context.namePrinter.printGraphQLClientOptionsName(context.path))
            ..name = 'options',
        )
      ])
      ..returns = TypeReference(
        (b) => b
          ..symbol = 'graphql.QueryResult'
          ..types = ListBuilder(
              [refer(context.namePrinter.printClassName(context.path))]),
      )
      ..name = context.namePrinter
          .printGraphQLFlutterClientMutationHookName(context.path)
      ..body = refer('graphql_flutter').property('useSubscription').call([
        refer('options'),
      ]).code,
  );
}

Spec printSubscriptionSpec(PrintContext c) {
  final context = c.context;
  return Class(
    (b) => b
      ..name =
          c.namePrinter.printGraphQLFlutterClientOperationName(context.path)
      ..extend = TypeReference((b) => b
        ..symbol = 'graphql_flutter.Subscription'
        ..types =
            ListBuilder([refer(c.namePrinter.printClassName(context.path))]))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'key'
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = 'widgets.Key'
                      ..isNullable = true,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'options'
                  ..required = context.isVariablesRequired
                  ..type = TypeReference(
                    (b) => b
                      ..symbol = c.namePrinter
                          .printGraphQLClientOptionsName(context.path)
                      ..isNullable = !context.isVariablesRequired,
                  ),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'builder'
                  ..required = true
                  ..type = generic('graphql_flutter.SubscriptionBuilder',
                      refer(c.namePrinter.printClassName(context.path))),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..name = 'onSubscriptionResult'
                  ..required = false
                  ..type = generic('graphql_flutter.OnSubscriptionResult',
                      refer(c.namePrinter.printClassName(context.path)),
                      isNullable: true),
              ),
            ])
            ..initializers = ListBuilder([
              refer('super').call([], {
                'key': refer('key'),
                'options': context.isVariablesRequired
                    ? refer('options')
                    : refer('options').ifNullThen(
                        refer(c.namePrinter
                                .printGraphQLClientOptionsName(context.path))
                            .newInstance([]),
                      ),
                'builder': refer('builder'),
                'onSubscriptionResult': refer('onSubscriptionResult'),
              }).code,
            ]),
        )
      ]),
  );
}

Iterable<Spec> printSubscriptionSpecs(PrintContext<Context> context) {
  _addDependencies(context);
  return [
    printSubscriptionHook(context),
    printSubscriptionSpec(context),
  ];
}

Iterable<Spec> printGraphQLFlutterSpecs(
  PrintContext<ContextOperation> context,
) {
  switch (context.context.operation?.type) {
    case OperationType.mutation:
      return printMutationSpecs(context);
    case OperationType.query:
      return printQuerySpecs(context);
    case OperationType.subscription:
      return printSubscriptionSpecs(context);
    default:
      return [];
  }
}

void _addDependencies(PrintContext c) {
  c.addPackage('package:flutter/widgets.dart', 'widgets');
  c.addPackage(
    'package:graphql_flutter/graphql_flutter.dart',
    'graphql_flutter',
  );
}
