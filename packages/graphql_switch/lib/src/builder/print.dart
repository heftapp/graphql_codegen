import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/utils.dart' show NamePrinter;
export 'package:graphql_codegen/src/printer/context.dart' show PrintContext;
import 'package:gql_code_builder/src/ast.dart' as gql_builder;
import 'package:graphql_codegen/src/printer/base/json.dart';
import 'package:graphql_switch/src/builder/transform.dart';
import 'package:graphql_switch/src/builder/visitors/visitors.dart';
import 'package:graphql_codegen/src/printer/base/equality.dart';

const String kInitializerName = '_initialzer';

final dynamicMap = TypeReference(
  (b) => b
    ..symbol = 'Map'
    ..types = ListBuilder(
      [
        refer('String'),
        refer('dynamic'),
      ],
    ),
);

extension NamePrinterExtension on NamePrinter {
  String printDocumentReference(Name name) => printName(name);

  String printHookName(Name name) {
    return "use${printName(name)}";
  }

  String printFragmentKeyClassName(Name name) {
    return printName(name, prefix: 'FragmentKey');
  }
}

enum _FragmentOption { plural, maybe, one }

bool _isFlagEnabled(ArgumentNode node) {
  final value = node.value;
  if (value is BooleanValueNode) {
    return value.value;
  }
  return false;
}

TypeReference nullableRefer(Reference symbol) => TypeReference(
      (b) => b
        ..symbol = symbol.symbol
        ..isNullable = true,
    );

TypeReference iterableRefer(Reference inner) => TypeReference(
      (b) => b
        ..symbol = 'Iterable'
        ..types = ListBuilder([inner]),
    );
TypeReference futureRefer(Reference inner) => TypeReference(
      (b) => b
        ..symbol = 'Future'
        ..types = ListBuilder([inner]),
    );

_FragmentOption _fragmentOptionFromDirectives(List<DirectiveNode> directives) =>
    directives
        .where((element) => element.name.value == 'switch')
        .map<_FragmentOption>((e) {
      final ArgumentNode? pluralArgument =
          e.arguments.whereType<ArgumentNode?>().firstWhere(
                (element) => element?.name.value == 'plural',
                orElse: () => null,
              );
      if (pluralArgument != null && _isFlagEnabled(pluralArgument)) {
        return _FragmentOption.plural;
      }
      final ArgumentNode? maybeArgument =
          e.arguments.whereType<ArgumentNode?>().firstWhere(
                (element) => element?.name.value == 'maybe',
                orElse: () => null,
              );
      if (maybeArgument != null && _isFlagEnabled(maybeArgument)) {
        return _FragmentOption.maybe;
      }
      return _FragmentOption.one;
    }).firstWhere((element) => true, orElse: () => _FragmentOption.one);

bool _shouldKeepField(ContextProperty property) => !property.directives
        .where((element) => element.name.value == 'switch')
        .any((e) {
      final arg = e.arguments.whereType<ArgumentNode?>().firstWhere(
            (element) => element?.name.value == 'ignore',
            orElse: () => null,
          );
      return arg != null && _isFlagEnabled(arg);
    });

Iterable<Spec> _printHooks(PrintContext<ContextRoot> pc) {
  return [
    ...pc.context.contextOperations
        .where((element) => element.operation?.type == OperationType.query)
        .map(
          (e) => Method(
            (b) => b
              ..name = pc.namePrinter.printHookName(e.path)
              ..body = refer('useQuery').call([
                literalString(
                  pc.namePrinter.printDocumentReference(e.path),
                  raw: true,
                ),
                refer(pc.namePrinter.printClassName(e.path))
                    .property('fromJson'),
                refer('options'),
                if (e.hasVariables) refer('variables') else literalNull,
              ]).code
              ..requiredParameters = ListBuilder([
                Parameter(
                  (b) => b
                    ..name = 'document'
                    ..type = refer('DocumentNode'),
                ),
                if (e.hasVariables && e.isVariablesRequired)
                  Parameter(
                    (b) => b
                      ..name = 'variables'
                      ..type =
                          refer(pc.namePrinter.printVariableClassName(e.path)),
                  ),
              ])
              ..optionalParameters = ListBuilder([
                if (e.hasVariables && !e.isVariablesRequired)
                  Parameter(
                    (b) => b
                      ..name = 'variables'
                      ..named = true
                      ..type = nullableRefer(
                        refer(pc.namePrinter.printVariableClassName(e.path)),
                      ),
                  ),
                Parameter(
                  (b) => b
                    ..name = 'options'
                    ..named = true
                    ..type = nullableRefer(refer('QueryOptions')),
                )
              ])
              ..returns = TypeReference(
                (b) => b
                  ..symbol = 'QueryResult'
                  ..types = ListBuilder([
                    refer(pc.namePrinter.printClassName(e.path)),
                  ]),
              ),
          ),
        ),
    ...pc.context.contextFragments.map(
      (e) {
        final fragment = e.fragment;
        if (fragment == null) {
          return null;
        }

        final flag = _fragmentOptionFromDirectives(fragment.directives);
        switch (flag) {
          case _FragmentOption.one:
            return Method(
              (b) => b
                ..name = pc.namePrinter.printHookName(e.path)
                ..body = refer('useFragment').call([
                  literalString(
                    pc.namePrinter.printDocumentReference(e.path),
                    raw: true,
                  ),
                  refer('key'),
                  refer(pc.namePrinter.printClassName(e.path))
                      .property('fromJson'),
                ]).code
                ..requiredParameters = ListBuilder([
                  Parameter(
                    (b) => b
                      ..name = 'document'
                      ..type = refer('DocumentNode'),
                  ),
                  Parameter(
                    (b) => b
                      ..name = 'key'
                      ..type = refer(
                        pc.namePrinter.printFragmentKeyClassName(e.path),
                      ),
                  )
                ])
                ..returns = refer(pc.namePrinter.printClassName(e.path)),
            );
          case _FragmentOption.maybe:
            return Method(
              (b) => b
                ..name = pc.namePrinter.printHookName(e.path)
                ..body = refer('useMaybeFragment').call([
                  literalString(
                    pc.namePrinter.printDocumentReference(e.path),
                    raw: true,
                  ),
                  refer('key'),
                  refer(pc.namePrinter.printClassName(e.path))
                      .property('fromJson')
                ]).code
                ..requiredParameters = ListBuilder([
                  Parameter(
                    (b) => b
                      ..name = 'document'
                      ..type = refer('DocumentNode'),
                  ),
                  Parameter(
                    (b) => b
                      ..name = 'key'
                      ..type = nullableRefer(
                        refer(
                          pc.namePrinter.printFragmentKeyClassName(e.path),
                        ),
                      ),
                  )
                ])
                ..returns =
                    nullableRefer(refer(pc.namePrinter.printClassName(e.path))),
            );
          case _FragmentOption.plural:
            return Method(
              (b) => b
                ..name = pc.namePrinter.printHookName(e.path)
                ..body = refer('useFragments').call([
                  literalString(
                    pc.namePrinter.printDocumentReference(e.path),
                    raw: true,
                  ),
                  refer('keys'),
                  refer(pc.namePrinter.printClassName(e.path))
                      .property('fromJson')
                ]).code
                ..requiredParameters = ListBuilder([
                  Parameter(
                    (b) => b
                      ..name = 'document'
                      ..type = refer('DocumentNode'),
                  ),
                  Parameter(
                    (b) => b
                      ..name = 'keys'
                      ..type = iterableRefer(refer(
                        pc.namePrinter.printFragmentKeyClassName(e.path),
                      )),
                  )
                ])
                ..returns = iterableRefer(refer(
                  pc.namePrinter.printClassName(e.path),
                )),
            );
        }
      },
    ).whereType<Method>()
  ];
}

Expression _printGql(Node e) => gql_builder.fromNode(postProcessNode(e));

Iterable<Spec> _printHelpers(PrintContext<ContextRoot> pc) {
  final fragmentDependencies = Map.fromEntries(pc.context.contextOperations
      .expand((element) => element.fragmentDependencies)
      .map((e) => MapEntry(e.name.value, e))).values;
  return [
    Method(
      (b) => b
        ..name = kInitializerName
        ..modifier = MethodModifier.async
        ..returns = TypeReference(
          (b) => b
            ..symbol = 'Future'
            ..types = ListBuilder([refer('void')]),
        )
        ..requiredParameters = ListBuilder([
          Parameter(
            (b) => b
              ..name = 'initializer'
              ..type = refer('ClientInitializer'),
          )
        ])
        ..body = Block.of([
          ...fragmentDependencies.map(
            (e) => declareConst(pc.namePrinter.printLocalPropertyName(e.name))
                .assign(_printGql(e))
                .statement,
          ),
          pc.context.contextOperations.fold<Expression>(
            refer('initializer'),
            (e, op) {
              final def = op.operation;
              if (def == null) return e;
              return e.cascade('registerOperation').call([
                literalString(
                  pc.namePrinter.printDocumentReference(op.path),
                  raw: true,
                ),
                refer('DocumentNode').constInstance([], {
                  'definitions': literalList([
                    _printGql(def),
                    ...op.fragmentDependencies.map(
                      (e) =>
                          refer(pc.namePrinter.printLocalPropertyName(e.name)),
                    ),
                  ])
                }),
              ]);
            },
          ).statement,
          refer('initializer').property('setup').call([]).awaited.statement,
        ]),
    ),
    Class(
      (b) => b
        ..name = 'SwitchClient'
        ..extend = refer('InternalSwitchClient')
        ..methods = ListBuilder([
          Method(
            (b) => b
              ..static = true
              ..name = 'initialize'
              ..types = ListBuilder([refer('TClientContext extends Object?')])
              ..optionalParameters = ListBuilder([
                Parameter(
                  (b) => b
                    ..name = 'fetch'
                    ..required = true
                    ..named = true
                    ..type = TypeReference(
                      (b) => b
                        ..symbol = 'FetchFn'
                        ..types = ListBuilder([refer('TClientContext')]),
                    ),
                ),
                Parameter(
                  (b) => b
                    ..name = 'clientContext'
                    ..required = true
                    ..named = true
                    ..type = refer('TClientContext'),
                )
              ])
              ..returns = futureRefer(refer('InitializeResult'))
              ..body = refer('InternalSwitchClient')
                  .property('initialize')
                  .call([
                refer(kInitializerName),
                refer('fetch'),
                refer('clientContext')
              ], {}, [
                refer('TClientContext')
              ]).code,
          )
        ])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..required = true
                  ..named = true
                  ..name = 'child'
                  ..type = refer('Widget'),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..required = true
                  ..name = 'initializeResult'
                  ..type = refer('InitializeResult'),
              ),
              Parameter(
                (b) => b
                  ..named = true
                  ..required = false
                  ..name = 'key'
                  ..type = nullableRefer(refer('Key')),
              )
            ])
            ..initializers = ListBuilder<Code>([
              refer('super').call([
                refer('child'),
                refer('initializeResult'),
                refer('key'),
              ]).code,
            ])),
        ]),
    ),
  ];
}

const String kDataFieldName = r'$rawData';

Spec _printSerializer(PrintContext pc) {
  final e = pc.context;
  final extendsC = pc.context.extendsContext;
  final properties = e.ownProperties.where(_shouldKeepField);
  final parentProperties =
      extendsC?.ownProperties.where(_shouldKeepField) ?? [];
  final propertiesAndParentProperties = [...properties, ...parentProperties];
  final selfFromJsonBlock = Block.of([
    ...propertiesAndParentProperties.map(
      (prop) => declareFinal(pc.namePrinter.printLocalPropertyName(prop.name))
          .assign(refer('json').index(
            literalString(prop.name.value),
          ))
          .statement,
    ),
    refer(pc.namePrinter.printClassName(pc.path))
        .property('_')
        .call([
          refer('json'),
          ...propertiesAndParentProperties.map(
            (prop) => printFromJsonValue(
              pc,
              prop,
              pc.namePrinter.printLocalPropertyName(prop.name),
            ),
          )
        ])
        .returned
        .statement,
  ]);
  Code fromJson;
  final typenameProperty = e.typenameProperty;
  if (e.possibleTypes.isEmpty || typenameProperty == null) {
    fromJson = selfFromJsonBlock;
  } else {
    fromJson = Block.of([
      Code('switch(json["${typenameProperty.name.value}"] as String) {'),
      ...e.possibleTypes.map((t) => Code("""
        case "${t.currentType.name.value}":
          return ${pc.namePrinter.printClassName(t.path)}.fromJson(json);
      """)),
      Code("default:"),
      selfFromJsonBlock,
      Code('}'),
    ]);
  }
  return Class(
    (b) => b
      ..extend = extendsC == null
          ? null
          : refer(pc.namePrinter.printClassName(extendsC.path))
      ..name = pc.namePrinter.printClassName(e.path)
      ..fields = ListBuilder([
        Field(
          (b) => b
            ..name = kDataFieldName
            ..type = dynamicMap
            ..modifier = FieldModifier.final$,
        ),
        ...properties.map(
          (e) => printClassProperty(
            pc,
            e,
          ),
        )
      ])
      ..implements = ListBuilder(e.fragments.map(
        (e) => refer(pc.namePrinter.printFragmentKeyClassName(e.path)),
      ))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..name = '_'
            ..requiredParameters = ListBuilder(
              [
                Parameter(
                  (b) => b
                    ..name = kDataFieldName
                    ..toThis = true,
                ),
                ...properties.map(
                  (e) => Parameter(
                    (b) => b
                      ..name = pc.namePrinter.printPropertyName(e.name)
                      ..toThis = true,
                  ),
                ),
                ...parentProperties.map(
                  (e) => Parameter(
                    (b) => b
                      ..name = pc.namePrinter.printPropertyName(e.name)
                      ..type = printClassPropertyType(pc, e),
                  ),
                )
              ],
            )
            ..initializers = ListBuilder([
              if (extendsC != null)
                refer('super').property('_').call([
                  refer(kDataFieldName),
                  ...parentProperties.map(
                      (e) => refer(pc.namePrinter.printPropertyName(e.name)))
                ]).code,
            ]),
        ),
      ])
      ..methods = ListBuilder([
        printEqualityOperator(
          pc,
          pc.namePrinter.printClassName(pc.path),
          propertiesAndParentProperties,
        ),
        printHashCodeMethod(
          pc,
          propertiesAndParentProperties,
        ),
        Method(
          (b) => b
            ..name = 'fromJson'
            ..static = true
            ..returns = refer(pc.namePrinter.printClassName(e.path))
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..name = 'json'
                  ..type = dynamicMap,
              )
            ])
            ..body = fromJson,
        )
      ]),
  );
}

Iterable<Spec> _printSerializers(PrintContext<ContextRoot> pc) {
  return [
    ...pc.context.contextFragments.map(
      (e) => Class(
        (b) => b
          ..name = pc.namePrinter.printFragmentKeyClassName(e.path)
          ..implements = ListBuilder([refer('FragmentKey')])
          ..abstract = true,
      ),
    ),
    ...pc.context.contextFragments
        .map((c) => _printSerializer(pc.withContext(c))),
    ...pc.context.contextOperations
        .map((c) => _printSerializer(pc.withContext(c)))
  ];
}

Library printRootContext(PrintContext<ContextRoot> o) {
  return Library((b) => b
    ..directives = ListBuilder([
      Directive.import('package:gql/ast.dart'),
      Directive.import('package:flutter/widgets.dart'),
      Directive.import('package:graphql_switch/graphql_switch.dart'),
      Directive.export(
        'package:graphql_switch/graphql_switch.dart',
        show: ['graphql'],
      ),
    ])
    ..body = ListBuilder([
      ..._printHelpers(o),
      ..._printHooks(o),
      ..._printSerializers(o),
      ..._printVariables(o),
    ]));
}

Iterable<Spec> _printVariables(PrintContext<ContextRoot> pc) {
  return [
    ...pc.context.contextOperations.expand((context) {
      return [
        if (context.hasVariables)
          ..._printVariablesClass(pc.withContext(context))
      ];
    }),
    ...pc.context.contextInputs.expand(
      (context) => _printVariablesClass(pc.withContext(context)),
    )
  ];
}

Iterable<Spec> _printVariablesClass(PrintContext<Context> pc) {
  final className = pc.context is ContextInput
      ? pc.namePrinter.printClassName(pc.context.path)
      : pc.namePrinter.printVariableClassName(pc.context.path);
  final builderName = '_Builder${className}';
  final allProperties = pc.context is ContextInput
      ? pc.context.ownProperties
      : pc.context.variables;
  final requiredParameters =
      allProperties.where((element) => element.isRequired);
  final otherParameters = allProperties.where((element) => !element.isRequired);
  return [
    FunctionType(
      (b) => b
        ..returnType = refer(className)
        ..requiredParameters = ListBuilder([
          FunctionType(
            (b) => b
              ..returnType = refer(className)
              ..namedRequiredParameters = MapBuilder({
                for (final variable in requiredParameters)
                  pc.namePrinter.printPropertyName(variable.name):
                      printClassPropertyType(pc, variable)
              })
              ..namedParameters = MapBuilder({
                for (final variable in otherParameters)
                  pc.namePrinter.printPropertyName(variable.name):
                      printClassPropertyType(pc, variable)
              }),
          )
        ]),
    ).toTypeDef(builderName),
    Class(
      (b) => b
        ..name = className
        ..implements = ListBuilder([refer('Input')])
        ..constructors = ListBuilder([
          Constructor(
            (b) => b
              ..name = '_'
              ..requiredParameters = ListBuilder([
                Parameter(
                  (b) => b
                    ..name = r'_data'
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
                    ..name = 'builder'
                    ..type = refer(builderName),
                )
              ])
              ..body = refer('builder').call([
                Method(
                  (b) => b
                    ..body = refer(className).property('_').call([
                      CodeExpression(Block.of([
                        Code('{'),
                        ...requiredParameters.map(
                          (p) => Code(
                            'r"${p.name.value}": ${pc.namePrinter.printPropertyName(p.name)},',
                          ),
                        ),
                        ...otherParameters.map(
                          (p) {
                            final param =
                                pc.namePrinter.printPropertyName(p.name);
                            return Code(
                              'if(${param} != \$undefined) r"${p.name.value}": ${param},',
                            );
                          },
                        ),
                        Code('},'),
                      ]))
                    ]).code
                    ..optionalParameters = ListBuilder([
                      for (final e in requiredParameters)
                        Parameter(
                          (b) => b
                            ..name = pc.namePrinter.printPropertyName(e.name)
                            ..type = refer('Object')
                            ..required = true
                            ..named = true,
                        ),
                      for (final e in otherParameters)
                        Parameter(
                          (b) => b
                            ..name = pc.namePrinter.printPropertyName(e.name)
                            ..named = true
                            ..defaultTo = refer(r'$undefined').code
                            ..type = nullableRefer(refer('Object')),
                        ),
                    ]),
                ).closure
              ]).code,
          )
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = r'_data'
              ..type = dynamicMap,
          )
        ])
        ..methods = ListBuilder([
          printEqualityOperator(
            pc,
            className,
            allProperties,
            dataObjectCheckResolver: () => refer('_data'),
          ),
          printHashCodeMethod(
            pc,
            allProperties,
            dataObjectCheckResolver: () => refer('_data'),
          ),
          Method(
            (b) => b
              ..name = 'toJson'
              ..returns = dynamicMap
              ..body = Block.of([
                for (final param in allProperties)
                  declareFinal(
                          pc.namePrinter.printLocalPropertyName(param.name))
                      .assign(refer('_data')
                          .index(literalString(param.name.value))
                          .asA(printClassPropertyType(pc, param)))
                      .statement,
                Code('return {'),
                for (final param in requiredParameters) ...[
                  Code('"${param.name.value}":'),
                  printToJsonValue(
                    pc,
                    param,
                    pc.namePrinter.printLocalPropertyName(param.name),
                  ).code,
                  Code(',')
                ],
                for (final param in otherParameters) ...[
                  Code('if (_data.containsKey("${param.name.value}"))'),
                  Code('"${param.name.value}":'),
                  printToJsonValue(
                    pc,
                    param,
                    pc.namePrinter.printLocalPropertyName(param.name),
                  ).code,
                  Code(',')
                ],
                Code('};'),
              ]),
          ),
          ...allProperties.map((e) => Method(
                (b) => b
                  ..name = pc.namePrinter.printPropertyName(e.name)
                  ..body = refer('_data')
                      .index(literalString(e.name.value))
                      .asA(printClassPropertyType(pc, e))
                      .code
                  ..returns = printClassPropertyType(pc, e)
                  ..type = MethodType.getter,
              ))
        ]),
    )
  ];
}
