import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/deep_copy.dart';
import 'package:graphql_codegen_config/config.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/printer/clients/graphql.dart';
import 'package:graphql_codegen/src/printer/clients/graphql_flutter.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:gql_code_builder/src/ast.dart' as gql_builder;

import 'context.dart';
import 'utils.dart';

const _UNKNOWN_ENUM_VALUE = "\$unknown";
const _JSON_SERIALIZABLE_BASE_CLASS = Reference("JsonSerializable");

Spec printEnum(PrintContext<ContextEnum> context) {
  context.addPackage('package:json_annotation/json_annotation.dart');
  return Enum(
    (b) => b
      ..name = context.namePrinter.printClassName(context.context.path)
      ..values = ListBuilder(
        [
          ...context.context.currentType.values
              .map((e) => printEnumValue(context, e.name)),
          EnumValue((b) => b..name = _UNKNOWN_ENUM_VALUE)
        ],
      ),
  );
}

List<Spec> printInputClasses(PrintContext<ContextInput> context) =>
    _printInputClasses(
      context,
      context.namePrinter.printClassName(context.context.path),
      context.context.properties,
    );

Expression printJsonSerializableAnnotation([bool skipNulls = false]) =>
    _JSON_SERIALIZABLE_BASE_CLASS.call(
      [],
      {
        "explicitToJson": literalTrue,
        if (skipNulls) "includeIfNull": literalFalse,
      },
    );

List<Spec> _printInputClasses(
  PrintContext context,
  String name,
  Iterable<ContextProperty> properties,
) {
  context.addPackage('package:json_annotation/json_annotation.dart');
  context.markAsJsonSerializable();
  return [
    Class(
      (b) => b
        ..annotations = ListBuilder([
          printJsonSerializableAnnotation(
            !context.context.config.includeIfNullOnInput,
          )
        ])
        ..name = name
        ..constructors = ListBuilder([
          Constructor(
            (b) => b
              ..optionalParameters = ListBuilder(
                properties.map(
                  (property) => Parameter(
                    (b) => b
                      ..named = true
                      ..toThis = true
                      ..required = property.isRequired
                      ..name =
                          context.namePrinter.printPropertyName(property.name),
                  ),
                ),
              ),
          ),
          printFromJson(context, name),
        ])
        ..fields = ListBuilder(
          properties.map((property) => printClassProperty(
                context,
                property,
              )),
        )
        ..methods = ListBuilder([
          printToJsonMethod(context, name),
          printHashCodeMethod(context, properties),
          printEqualityOperator(context, name, properties),
          printCopyWithMethod(
            name,
            context,
          ),
        ]),
    ),
    ...printCopyWithClasses(context, name, properties),
  ];
}

Method printCopyWithMethod(
  String name,
  PrintContext context,
) {
  return Method((b) => b
    ..returns = TypeReference(
      (b) => b
        ..symbol = context.namePrinter.printCopyWithClassName(name)
        ..types = ListBuilder(<Reference>[refer(name)]),
    )
    ..name = 'copyWith'
    ..type = MethodType.getter
    ..lambda = true
    ..body = refer(context.namePrinter.printCopyWithClassName(name)).call(
      [
        refer('this'),
        printIdentityFunction().closure,
      ],
    ).code);
}

Method printIdentityFunction() => Method(
      (b) => b
        ..lambda = true
        ..requiredParameters = ListBuilder([Parameter((b) => b..name = 'i')])
        ..body = refer('i').code,
    );

Method printHashCodeMethod(
        PrintContext context, Iterable<ContextProperty> properties) =>
    Method(
      (b) => b
        ..name = "hashCode"
        ..annotations = ListBuilder([refer("override")])
        ..returns = refer("int")
        ..type = MethodType.getter
        ..lambda = false
        ..body = Block((b) => b.statements = ListBuilder([
              ...properties.map(
                (e) => refer(context.namePrinter.printPropertyName(e.name))
                    .assignFinal(
                        context.namePrinter.printLocalPropertyName(e.name))
                    .statement,
              ),
              refer("Object")
                  .property("hashAll")
                  .call([
                    literalList(
                      properties.map((e) => printPropertyHash(
                            e.type,
                            refer(context.namePrinter
                                .printLocalPropertyName(e.name)),
                          )),
                    ),
                  ])
                  .returned
                  .statement,
            ])),
    );

Expression printPropertyHash(TypeNode type, Expression name) {
  if (type is NamedTypeNode) {
    return name;
  }
  if (type is ListTypeNode) {
    final inner = refer("Object").property("hashAll").call([
      name.property("map").call([
        Method(
          (b) => b
            ..lambda = true
            ..requiredParameters =
                ListBuilder([Parameter((b) => b..name = "v")])
            ..body = printPropertyHash(type.type, refer("v")).code,
        ).closure,
      ]),
    ]);
    if (type.isNonNull) {
      return inner;
    }
    return name.equalTo(literalNull).conditional(literalNull, inner);
  }
  throw StateError("Unsupported type node");
}

List<Spec> printVariableClasses(PrintContext context) => _printInputClasses(
      context,
      context.namePrinter.printVariableClassName(context.context.path),
      context.context.variables,
    );

EnumValue printEnumValue(PrintContext context, NameNode name) => EnumValue(
      (b) => b
        ..name = context.namePrinter.printEnumValueName(name)
        ..annotations = ListBuilder([
          refer('JsonValue').call([literal(name.value)]),
        ]),
    );

Spec printDocument(
  PrintContext context,
  ExecutableDefinitionNode operation, [
  Code? mainDefinition,
]) {
  final fragments = context.context.fragmentDependencies;
  final fragmentNames = fragments.map(
    (e) => Name.fromSegment(FragmentNameSegment(e)),
  );
  context.addPackage('package:gql/ast.dart');
  context.addDependencies(fragmentNames);
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${context.namePrinter.printDocumentDefinitionNodeName(context.context.path)} = DocumentNode(definitions: [",
      ),
      mainDefinition ?? gql_builder.fromNode(operation).code,
      Code(","),
      ...fragmentNames.expand((n) => [
            refer(context.namePrinter.printFragmentDefinitionNodeName(n)).code,
            Code(","),
          ]),
      Code("]);")
    ]),
  );
}

Spec printFragmentDefinition(
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

Library printRootContext<TKey extends Object>(
    PrintContext<ContextRoot<TKey>> c) {
  final context = c.context;
  final clients = context.config.clients;
  final body = ListBuilder<Spec>(<Spec>[
    ...context.contextInputs.expand(
      (context) => printInputClasses(c.withContext(context)),
    ),
    ...context.contextEnums.map((context) => printEnum(c.withContext(context))),
    ...context.contextFragments
        .where((element) => element.replacementContext == null)
        .expand((context) {
      final fragmentNode = context.fragment;
      final elementContext = c.withContext(context);
      return [
        if (context.hasVariables) ...printVariableClasses(elementContext),
        printContext(elementContext),
        ...printContextExtension(elementContext),
        if (fragmentNode != null) ...[
          printFragmentDefinition(
            elementContext,
            fragmentNode,
          ),
          printDocument(
            elementContext,
            fragmentNode,
            refer(c.namePrinter
                    .printFragmentDefinitionNodeName(elementContext.path))
                .code,
          ),
        ],
        if (clients.contains(GraphQLCodegenConfigClient.graphql))
          ...printGraphQLClientFragmentSpecs(c.withContext(context))
      ];
    }),
    ...context.contextOperations
        .where((element) => element.replacementContext == null)
        .expand((element) {
      final operation = element.operation;
      final elementContext = c.withContext(element);
      return [
        if (element.hasVariables) ...printVariableClasses(elementContext),
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
    }),
    if (context.isMainContext) printPossibleTypesMap(c),
    ...c.converters,
  ]);

  final library = Library(
    (b) => b
      ..directives = ListBuilder(c.directives)
      ..body = body,
  );
  c.printWarnings();
  return library;
}

Spec printPossibleTypesMap(PrintContext<ContextRoot> context) {
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${context.namePrinter.printPossibleTypesMapName()} = ",
      ),
      literal(context.context.possibleTypesMap).code,
      Code(";")
    ]),
  );
}

Constructor printFromJson(
  PrintContext context,
  String name, [
  ContextProperty? typenameProperty,
  Iterable<Context> possibleTypes = const [],
]) {
  final fromJsonFactoryName =
      context.namePrinter.printFromJsonFactoryName(name);
  Code body;
  if (typenameProperty == null || possibleTypes.isEmpty) {
    body = refer(fromJsonFactoryName).call([refer("json")]).code;
  } else {
    final cases = possibleTypes
        .map(
          (t) =>
              """case "${t.currentType.name.value}": return ${context.namePrinter.printClassName((t.replacementContext ?? t).path)}.fromJson(json);""",
        )
        .join("");
    body = Block(
      (b) => b
        ..statements = ListBuilder([
          Code("""
switch(json["${typenameProperty.name.value}"] as String) {
  ${cases}
  default:
  return ${fromJsonFactoryName}(json);
}
""")
        ]),
    );
  }
  return Constructor(
    (b) => b
      ..factory = true
      ..name = "fromJson"
      ..requiredParameters = ListBuilder([
        Parameter(
          (b) => b
            ..name = "json"
            ..type = dynamicMap,
        ),
      ])
      ..body = body
      ..lambda = possibleTypes.isEmpty || typenameProperty == null,
  );
}

Constructor printConstructor(
  PrintContext c,
  Iterable<ContextProperty> properties,
) {
  return Constructor(
    (b) => b
      ..optionalParameters = ListBuilder(
        [
          ...properties.map<Parameter>(
            (p) => Parameter(
              (b) => b
                ..required = p.isRequired
                ..named = true
                ..toThis = true
                ..name = c.namePrinter.printPropertyName(p.name),
            ),
          ),
        ],
      )
      ..initializers = ListBuilder<Code>([]),
  );
}

Iterable<ContextProperty> _mergeProperties(
  PrintContext c,
  Iterable<ContextProperty> ps1,
  Iterable<ContextProperty> ps2,
) {
  return {
    for (final v in [...ps1, ...ps2]) c.namePrinter.printPropertyName(v.name): v
  }.values;
}

Class printContext(PrintContext c) {
  c.addPackage('package:json_annotation/json_annotation.dart');
  c.markAsJsonSerializable();
  final context = c.context;
  final fragments = context.fragments.map((e) => e.replacementContext ?? e);
  c.addDependencies(fragments.map((e) => e.path));
  c.addDependencies(context.possibleTypes.map((e) => e.path));

  final extendContext = context.extendsContext;
  if (extendContext != null) {
    c.addDependency(extendContext.path);
  }
  final properties = _mergeProperties(
    c,
    extendContext?.properties ?? [],
    c.context.properties,
  );

  return Class(
    (b) => b
      ..name = c.namePrinter.printClassName(context.path)
      ..implements = ListBuilder([
        ...fragments
            .map((e) => c.namePrinter.printClassName(e.path))
            .toSet()
            .map(refer),
        if (extendContext != null)
          refer(c.namePrinter.printClassName(extendContext.path)),
      ])
      ..annotations = ListBuilder([printJsonSerializableAnnotation()])
      ..constructors = ListBuilder([
        printConstructor(c, properties),
        printFromJson(
          c,
          c.namePrinter.printClassName(context.path),
          context.typenameProperty,
          context.possibleTypes,
        ),
      ])
      ..fields = ListBuilder(properties.map((p) => printClassProperty(c, p)))
      ..methods = ListBuilder([
        printToJsonMethod(
          c,
          c.namePrinter.printClassName(context.path),
        ),
        printHashCodeMethod(c, properties),
        printEqualityOperator(
          c,
          c.namePrinter.printClassName(context.path),
          properties,
        ),
      ]),
  );
}

List<Spec> printContextExtension(PrintContext c) {
  final context = c.context;
  final extendContext = context.extendsContext;
  final properties = _mergeProperties(
    c,
    extendContext?.properties ?? [],
    c.context.properties,
  );
  return [
    Extension(
      (b) => b
        ..name = c.namePrinter.printClassExtensionName(context.path)
        ..on = refer(c.namePrinter.printClassName(context.path))
        ..methods = ListBuilder([
          printCopyWithMethod(
            c.namePrinter.printClassName(context.path),
            c,
          ),
        ]),
    ),
    ...printCopyWithClasses(
      c,
      c.namePrinter.printClassName(context.path),
      properties,
    ),
  ];
}

const _undefined = '_undefined';

List<Spec> printCopyWithClasses(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties,
) {
  final parameters = properties.map((property) {
    final propertyType = printClassPropertyType(c, property).reference;
    return Parameter(
      (b) => b
        ..name = c.namePrinter.printPropertyName(property.name)
        ..named = true
        ..type = TypeReference(
          (b) => b
            ..symbol = propertyType.symbol
            ..isNullable = property.isRequired,
        ),
    );
  });
  return [
    Class(
      (b) => b
        ..types = ListBuilder([refer('TRes')])
        ..name = c.namePrinter.printCopyWithClassName(name)
        ..abstract = true
        ..constructors = ListBuilder(<Constructor>[
          Constructor(
            (b) => b
              ..initializers
              ..factory = true
              ..requiredParameters = ListBuilder(<Parameter>[
                Parameter((b) => b
                  ..name = 'instance'
                  ..type = refer(name)),
                Parameter((b) => b
                  ..name = 'then'
                  ..type = FunctionType(
                    (b) => b
                      ..returnType = refer('TRes')
                      ..requiredParameters =
                          ListBuilder(<Reference>[refer(name)]),
                  )),
              ])
              ..redirect =
                  refer(c.namePrinter.printCopyWithImplClassName(name)),
          ),
          Constructor(
            (b) => b
              ..initializers
              ..factory = true
              ..name = 'stub'
              ..requiredParameters = ListBuilder(<Parameter>[
                Parameter((b) => b
                  ..name = 'res'
                  ..type = refer('TRes')),
              ])
              ..redirect =
                  refer(c.namePrinter.printCopyWithStubImplClassName(name)),
          )
        ])
        ..methods = ListBuilder(<Method>[
          Method((b) => b
            ..name = 'call'
            ..returns = refer('TRes')
            ..optionalParameters = ListBuilder(
              parameters,
            )),
          ...properties
              .map((p) => printDeepCopy(c, p, abstract: true))
              .whereType<Method>(),
        ]),
    ),
    Class(
      (b) => b
        ..types = ListBuilder([refer('TRes')])
        ..name = c.namePrinter.printCopyWithImplClassName(name)
        ..implements = ListBuilder([
          generic(c.namePrinter.printCopyWithClassName(name), refer('TRes')),
        ])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = '_instance',
              ),
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = '_then',
              ),
            ]))
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = '_instance'
              ..type = refer(name)
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (b) => b
              ..name = '_then'
              ..type = FunctionType(
                (b) => b
                  ..requiredParameters = ListBuilder(<Reference>[refer(name)])
                  ..returnType = refer('TRes'),
              )
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (b) => b
              ..name = _undefined
              ..static = true
              ..modifier = FieldModifier.constant
              ..assignment = literalMap({}).code,
          )
        ])
        ..methods = ListBuilder(<Method>[
          Method(
            (b) => b
              ..name = 'call'
              ..returns = refer('TRes')
              ..optionalParameters = ListBuilder(
                properties.map((property) {
                  return Parameter(
                    (b) => b
                      ..name = c.namePrinter.printPropertyName(property.name)
                      ..named = true
                      ..defaultTo = refer(_undefined).code
                      ..type = refer('Object?'),
                  );
                }),
              )
              ..lambda = true
              ..body = refer('_then').call([
                refer(name).call([], Map.fromEntries(properties.map((property) {
                  final parameterName =
                      c.namePrinter.printPropertyName(property.name);
                  final propertyType =
                      printClassPropertyType(c, property).reference;
                  return MapEntry(
                      parameterName,
                      (property.isRequired
                              ? refer(parameterName)
                                  .equalTo(refer(_undefined))
                                  .or(refer(parameterName).equalTo(literalNull))
                              : refer(parameterName).equalTo(refer(_undefined)))
                          .conditional(
                              refer('_instance').property(parameterName),
                              refer(parameterName).asA(propertyType)));
                }))),
              ]).code,
          ),
          ...properties.map((p) => printDeepCopy(c, p)).whereType<Method>(),
        ]),
    ),
    Class(
      (b) => b
        ..name = c.namePrinter.printCopyWithStubImplClassName(name)
        ..types = ListBuilder([refer('TRes')])
        ..implements = ListBuilder(<Reference>[
          generic(
            c.namePrinter.printCopyWithClassName(name),
            refer('TRes'),
          )
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = '_res'
              ..type = refer('TRes'),
          )
        ])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..requiredParameters = ListBuilder([
              Parameter((b) => b
                ..toThis = true
                ..name = '_res')
            ]))
        ])
        ..methods = ListBuilder(<Method>[
          Method(
            (b) => b
              ..name = 'call'
              ..lambda = true
              ..body = refer('_res').code
              ..optionalParameters = ListBuilder(parameters),
          ),
          ...properties
              .map((property) => printDeepCopyStub(c, property))
              .whereType<Method>()
        ]),
    )
  ];
}

Method printEqualityOperator(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties,
) =>
    Method((b) => b
      ..name = "operator=="
      ..returns = refer("bool")
      ..requiredParameters = ListBuilder([
        Parameter(
          (b) => b
            ..type = refer("Object")
            ..name = "other",
        )
      ])
      ..lambda = false
      ..annotations = ListBuilder([refer("override")])
      ..body = Block((b) => b
        ..statements = ListBuilder([
          Code("if (identical(this, other)) return true;"),
          Code(
              "if (!(other is ${name}) || runtimeType != other.runtimeType) return false;"),
          ...properties.expand(
            (e) => [
              refer(c.namePrinter.printPropertyName(e.name))
                  .assignFinal(c.namePrinter.printLocalPropertyName(e.name))
                  .statement,
              refer("other")
                  .property(c.namePrinter.printPropertyName(e.name))
                  .assignFinal(
                      c.namePrinter.printLocalPropertyName(e.name, "lOther"))
                  .statement,
              printPropertyEqualityCheck(
                e.type,
                c.namePrinter.printLocalPropertyName(e.name),
                c.namePrinter.printLocalPropertyName(e.name, "lOther"),
              )
            ],
          ),
          literalTrue.returned.statement,
        ])));

Code printPropertyEqualityCheck(
  TypeNode type,
  String self,
  String other,
) {
  if (type is NamedTypeNode) {
    return Code(
      "if (${self} != ${other}) return false;",
    );
  }
  if (type is ListTypeNode) {
    final emitter = DartEmitter(useNullSafetySyntax: true);
    final selfEntryName = "${self}\$entry";
    final otherEntryName = "${other}\$entry";
    final innerCheck = printPropertyEqualityCheck(
      type.type,
      selfEntryName,
      otherEntryName,
    ).accept(emitter);
    final listCheck = Block((b) => b
      ..statements = ListBuilder([
        Code("if (${self}.length != ${other}.length) return false;"),
        Code("""
          for (int i = 0; i < ${self}.length; i ++) {
            final ${selfEntryName} = ${self}[i];
            final ${otherEntryName} = ${other}[i];
            ${innerCheck}
          }
          """)
      ]));
    if (type.isNonNull) return listCheck;
    return Code("""
    if (${self} != null && ${other} != null) {
      ${listCheck.accept(emitter)}
    } else if (${self} != ${other}) {
      return false;
    }
    """);
  }
  throw new StateError("Unsupported type node");
}

Method printToJsonMethod(PrintContext c, String name) => Method(
      (b) => b
        ..returns = dynamicMap
        ..name = "toJson"
        ..lambda = true
        ..body = refer(c.namePrinter.printToJsonFactoryName(name))
            .call([refer("this")]).code,
    );

Field printClassProperty(
  PrintContext context,
  ContextProperty property,
) {
  final jsonKeyAnnotations = <String, Expression>{};

  if (context.namePrinter.printPropertyName(property.name) !=
      property.name.value) {
    jsonKeyAnnotations['name'] = literal(property.name.value);
  }
  final classPropertyTypeT = printClassPropertyType(
    context,
    property,
  );
  jsonKeyAnnotations.addAll(classPropertyTypeT.annotations);
  context.addConverters(classPropertyTypeT.converters);
  return Field(
    (b) => b
      ..annotations = ListBuilder([
        if (jsonKeyAnnotations.isNotEmpty)
          refer("JsonKey").call(
            [],
            jsonKeyAnnotations,
          )
      ])
      ..modifier = FieldModifier.final$
      ..name = context.namePrinter.printPropertyName(property.name)
      ..type = classPropertyTypeT.reference,
  );
}

class PrintPropertyResult {
  final Reference reference;
  final Map<String, Expression> annotations;
  final Map<String, Spec> converters;

  factory PrintPropertyResult.withAnnotations(
    Reference reference,
    Map<String, Expression> annotations,
  ) =>
      PrintPropertyResult._(reference, annotations, {});

  factory PrintPropertyResult(Reference reference) =>
      PrintPropertyResult._(reference, {}, {});

  PrintPropertyResult._(
    this.reference,
    this.annotations,
    this.converters,
  );

  PrintPropertyResult _mapJsonConverters(
      Reference Function(Reference r) generateNewReference,
      Spec Function(Reference oldRef, Reference newRef) generateToJson,
      Spec Function(Reference oldRef, Reference newRef) generateFromJson) {
    final annotations = {...this.annotations};
    final converters = {...this.converters};
    final currentFromJson = this.annotations[_FROM_JSON_ANNOTATION_KEY];
    final currentToJson = this.annotations[_TO_JSON_ANNOTATION_KEY];
    if (currentFromJson is Reference) {
      final newFromJson = generateNewReference(currentFromJson);
      annotations[_FROM_JSON_ANNOTATION_KEY] = newFromJson;
      converters[newFromJson.symbol ?? ''] =
          generateFromJson(currentFromJson, newFromJson);
    }
    if (currentToJson is Reference) {
      final newToJson = generateNewReference(currentToJson);
      annotations[_TO_JSON_ANNOTATION_KEY] = newToJson;
      converters[newToJson.symbol ?? ''] =
          generateToJson(currentToJson, newToJson);
    }
    return PrintPropertyResult._(
      reference,
      annotations,
      converters,
    );
  }

  PrintPropertyResult asNullable() {
    final reference = refer("${this.reference.symbol}?");
    return PrintPropertyResult._(
      reference,
      annotations,
      converters,
    )._mapJsonConverters(
      (r) => refer("_nullable\$${r.symbol}"),
      (oldRef, newRef) => Method(
        (b) => b
          ..name = newRef.symbol
          ..returns = refer('dynamic')
          ..requiredParameters = ListBuilder([
            Parameter(
              (b) => b
                ..name = 'data'
                ..type = reference,
            )
          ])
          ..body = printNullCheck(
            refer('data'),
            oldRef.call([refer('data')]),
          ).code,
      ),
      (oldRef, newRef) => Method(
        (b) => b
          ..name = newRef.symbol
          ..returns = reference
          ..requiredParameters = ListBuilder([
            Parameter(
              (b) => b
                ..name = 'data'
                ..type = refer('dynamic'),
            )
          ])
          ..body = printNullCheck(
            refer('data'),
            oldRef.call([refer('data')]),
          ).code,
      ),
    );
  }

  PrintPropertyResult asList() {
    final reference = refer("List<${this.reference.symbol}>");
    return PrintPropertyResult._(
      reference,
      annotations,
      converters,
    )._mapJsonConverters(
      (r) => refer("_list\$${r.symbol}"),
      (oldRef, newRef) => Method(
        (b) => b
          ..name = newRef.symbol
          ..returns = refer('dynamic')
          ..requiredParameters = ListBuilder([
            Parameter(
              (b) => b
                ..name = 'data'
                ..type = reference,
            )
          ])
          ..body = refer("data")
              .property("map")
              .call([oldRef])
              .property('toList')
              .call([])
              .code,
      ),
      (oldRef, newRef) => Method(
        (b) => b
          ..name = newRef.symbol
          ..returns = reference
          ..requiredParameters = ListBuilder([
            Parameter(
              (b) => b
                ..name = 'data'
                ..type = refer('dynamic'),
            )
          ])
          ..body = refer('data')
              .isA(refer('List'))
              .conditional(
                refer('data')
                    .property('map')
                    .call([oldRef])
                    .property('toList')
                    .call([]),
                literalList([]),
              )
              .code,
      ),
    );
  }
}

PrintPropertyResult printClassPropertyType(
  PrintContext context,
  ContextProperty property,
) {
  final typeNode = property.type;
  return printTypeNode(
    context,
    typeNode,
    propertyContext: property.path,
  );
}

PrintPropertyResult printTypeNode(
  PrintContext context,
  TypeNode typeNode, {
  Name? propertyContext,
}) {
  if (typeNode is NamedTypeNode) {
    return printNamedTypeNode(
      context,
      typeNode,
      propertyContext: propertyContext,
    );
  }
  if (typeNode is ListTypeNode) {
    return printListTypeNode(
      context,
      typeNode,
      propertyContext: propertyContext,
    );
  }
  throw StateError("Unsupported node");
}

PrintPropertyResult printListTypeNode(
  PrintContext context,
  ListTypeNode typeNode, {
  Name? propertyContext,
}) {
  final innerRef = printTypeNode(
    context,
    typeNode.type,
    propertyContext: propertyContext,
  ).asList();
  return typeNode.isNonNull ? innerRef : innerRef.asNullable();
}

PrintPropertyResult printNamedTypeNode(
  PrintContext context,
  NamedTypeNode typeNode, {
  Name? propertyContext,
}) {
  final typeDefinition =
      context.context.schema.lookupTypeDefinitionFromTypeNode(
    typeNode,
  );
  if (typeDefinition == null) {
    throw PrinterError(
      "Failed to find type definition for type ${typeNode.name.value}",
    );
  }
  final replacementContext = propertyContext != null
      ? context.context
              .lookupContext(propertyContext)
              ?.replacementContext
              ?.path ??
          propertyContext
      : null;
  if (replacementContext != null) {
    context.addDependency(replacementContext);
  }

  PrintPropertyResult reference;
  if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = printScalarType(context, typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode &&
      propertyContext != null) {
    reference = printEnumType(context, propertyContext);
  } else if (replacementContext != null) {
    reference = PrintPropertyResult(
        refer(context.namePrinter.printClassName(replacementContext)));
  } else {
    throw StateError("Failed to generate type.");
  }
  if (typeNode.isNonNull) {
    return reference;
  }
  return reference.asNullable();
}

PrintPropertyResult printEnumType(
  PrintContext context,
  Name name,
) {
  final typeName = context.namePrinter.printClassName(name);
  return PrintPropertyResult.withAnnotations(
    refer(typeName),
    {'unknownEnumValue': refer(typeName).property(_UNKNOWN_ENUM_VALUE)},
  );
}

PrintPropertyResult printScalarType(
  PrintContext context,
  ScalarTypeDefinitionNode node,
) {
  final scalars = {
    'Int': const GraphQLCodegenConfigScalar(type: 'int'),
    'Boolean': const GraphQLCodegenConfigScalar(type: 'bool'),
    'String': const GraphQLCodegenConfigScalar(type: 'String'),
    'ID': const GraphQLCodegenConfigScalar(type: 'String'),
    'Float': const GraphQLCodegenConfigScalar(type: 'double'),
    ...context.context.config.scalars,
  };

  final ref = scalars[node.name.value];
  if (ref == null) {
    context.markScalarAsBad(node.name.value);
    return PrintPropertyResult(refer("String"));
  }
  final import = ref.import;
  if (import != null) {
    context.addPackage(import);
  }
  final fromJson = ref.fromJsonFunctionName;
  final toJson = ref.toJsonFunctionName;
  return PrintPropertyResult.withAnnotations(
    Reference(ref.type),
    {
      if (fromJson != null) _FROM_JSON_ANNOTATION_KEY: refer(fromJson),
      if (toJson != null) _TO_JSON_ANNOTATION_KEY: refer(toJson),
    },
  );
}

const _FROM_JSON_ANNOTATION_KEY = 'fromJson';
const _TO_JSON_ANNOTATION_KEY = 'toJson';
