import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
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
      ..name = printClassName(context.context.path)
      ..values = ListBuilder(
        [
          ...context.context.currentType.values
              .map((e) => printEnumValue(e.name)),
          EnumValue((b) => b..name = _UNKNOWN_ENUM_VALUE)
        ],
      ),
  );
}

Spec printInput(PrintContext<ContextInput> context) => _printInputClass(
      context,
      printClassName(context.context.path),
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

Spec _printInputClass(
  PrintContext context,
  String name,
  Iterable<ContextProperty> properties,
) {
  context.addPackage('package:json_annotation/json_annotation.dart');
  context.markAsJsonSerializable();
  return Class(
    (b) => b
      ..annotations = ListBuilder([
        printJsonSerializableAnnotation(
          !context.context.config.includeIfNullOnInput,
        )
      ])
      ..extend = _JSON_SERIALIZABLE_BASE_CLASS
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
                    ..name = printPropertyName(property.name),
                ),
              ),
            ),
        ),
        printFromJson(name),
      ])
      ..fields = ListBuilder(
        properties.map((property) => printClassProperty(
              context,
              property,
            )),
      )
      ..methods = ListBuilder([
        printToJsonMethod(name),
        printHashCodeMethod(properties),
        printEqualityOperator(name, properties),
      ]),
  );
}

Method printCopyWithMethod(
  PrintContext context,
  Iterable<ContextProperty> properties,
) {
  final name = refer(printClassName(context.path));
  return Method(
    (b) => b
      ..returns = name
      ..name = 'copyWith'
      ..optionalParameters = ListBuilder(properties.map(
        (property) {
          final parameterType =
              printClassPropertyType(context, property).reference;
          return Parameter(
            (b) => b
              ..name = printPropertyName(property.name)
              ..named = true
              ..type = property.type.isNonNull
                  ? TypeReference(
                      (b) => b
                        ..isNullable = true
                        ..symbol = parameterType.symbol,
                    )
                  : FunctionType(
                      (b) => b
                        ..returnType =
                            printClassPropertyType(context, property).reference
                        ..isNullable = true,
                    ),
          );
        },
      ))
      ..lambda = true
      ..body = name.call(
        [],
        Map.fromEntries(properties.map((property) {
          final propertyName = printPropertyName(property.name);
          return MapEntry(
            propertyName,
            refer(propertyName).equalTo(literalNull).conditional(
                  refer('this').property(propertyName),
                  property.type.isNonNull
                      ? refer(propertyName)
                      : refer(propertyName).call([]),
                ),
          );
        })),
      ).code,
  );
}

String printLocalPropertyName(NameNode name, [String prefix = "l"]) =>
    "${prefix}\$" + printPropertyName(name);

Method printHashCodeMethod(Iterable<ContextProperty> properties) => Method(
      (b) => b
        ..name = "hashCode"
        ..returns = refer("int")
        ..type = MethodType.getter
        ..lambda = false
        ..body = Block((b) => b.statements = ListBuilder([
              ...properties.map(
                (e) => refer(printPropertyName(e.name))
                    .assignFinal(printLocalPropertyName(e.name))
                    .statement,
              ),
              refer("Object")
                  .property("hashAll")
                  .call([
                    literalList(
                      properties.map((e) => printPropertyHash(
                            e.type,
                            refer(printLocalPropertyName(e.name)),
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

Spec printVariables(PrintContext context) => _printInputClass(
      context,
      printVariableClassName(context.context.path),
      context.context.variables,
    );

EnumValue printEnumValue(NameNode name) => EnumValue(
      (b) => b
        ..name = printEnumValueName(name)
        ..annotations = ListBuilder([
          refer('JsonValue').call([literal(name.value)]),
        ]),
    );

Spec printDocument(
  PrintContext context,
  ExecutableDefinitionNode operation, [
  Code? mainDefinition,
]) {
  final fragments = findFragments(context.context.schema, operation);
  final fragmentNames = fragments.map(
    (e) => Name.fromSegment(FragmentNameSegment(e)),
  );
  context.addPackage('package:gql/ast.dart');
  context.addDependencies(fragmentNames);
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${printDocumentDefinitionNodeName(context.context.path)} = const DocumentNode(definitions: [",
      ),
      mainDefinition ?? gql_builder.fromNode(operation).code,
      Code(","),
      ...fragmentNames.expand((n) => [
            refer(printFragmentDefinitionNodeName(n)).code,
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
        "const ${printFragmentDefinitionNodeName(context.context.path)} = const ",
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
  final body = ListBuilder<Spec>([
    ...context.contextInputs.map(
      (context) => printInput(c.withContext(context)),
    ),
    ...context.contextEnums.map((context) => printEnum(c.withContext(context))),
    ...context.contextFragments.expand((context) {
      final fragmentNode = context.fragment;
      final elementContext = c.withContext(context);
      return [
        if (context.hasVariables) printVariables(elementContext),
        printContext(elementContext),
        printContextExtension(elementContext),
        if (fragmentNode != null) ...[
          printFragmentDefinition(
            elementContext,
            fragmentNode,
          ),
          printDocument(
            elementContext,
            fragmentNode,
            refer(printFragmentDefinitionNodeName(elementContext.path)).code,
          ),
        ],
        if (clients.contains(GraphQLCodegenConfigClient.graphql))
          ...printGraphQLClientFragmentSpecs(c.withContext(context))
      ];
    }),
    ...context.contextOperations.expand((element) {
      final operation = element.operation;
      final elementContext = c.withContext(element);
      return [
        if (element.hasVariables) printVariables(elementContext),
        printContext(elementContext),
        printContextExtension(elementContext),
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
        "const ${printPossibleTypesMapName()} = const ",
      ),
      literal(context.context.possibleTypesMap).code,
      Code(";")
    ]),
  );
}

Constructor printFromJson(
  String name, [
  ContextProperty? typenameProperty,
  Iterable<TypedName> possibleTypes = const [],
]) {
  final fromJsonFactoryName = printFromJsonFactoryName(name);
  Code body;
  if (typenameProperty == null || possibleTypes.isEmpty) {
    body = refer(fromJsonFactoryName).call([refer("json")]).code;
  } else {
    final cases = possibleTypes
        .map(
          (t) =>
              """case "${t.type.value}": return ${printClassName(t.name)}.fromJson(json);""",
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
      ..annotations = ListBuilder([refer("override")])
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
                ..name = printPropertyName(p.name),
            ),
          ),
        ],
      )
      ..initializers = ListBuilder<Code>([]),
  );
}

Iterable<ContextProperty> _mergeProperties(
  Iterable<ContextProperty> ps1,
  Iterable<ContextProperty> ps2,
) {
  return {
    for (final v in [...ps1, ...ps2]) printPropertyName(v.name): v
  }.values;
}

Class printContext(PrintContext c) {
  c.addPackage('package:json_annotation/json_annotation.dart');
  c.markAsJsonSerializable();
  final context = c.context;
  c.addDependencies(context.fragments);
  c.addDependencies(context.possibleTypes.map((e) => e.name));

  final extendContext = context.extendsContext;
  if (extendContext != null) {
    c.addDependency(extendContext.path);
  }
  final properties = _mergeProperties(
    extendContext?.properties ?? [],
    c.context.properties,
  );

  return Class(
    (b) => b
      ..name = printClassName(context.path)
      ..implements = ListBuilder([
        ...context.fragments.map((e) => printClassName(e)).map(refer),
        if (extendContext != null) refer(printClassName(extendContext.path)),
      ])
      ..annotations = ListBuilder([printJsonSerializableAnnotation()])
      ..extend = _JSON_SERIALIZABLE_BASE_CLASS
      ..constructors = ListBuilder([
        printConstructor(c, properties),
        printFromJson(
          printClassName(context.path),
          context.typenameProperty,
          context.possibleTypes,
        ),
      ])
      ..fields = ListBuilder(properties.map((p) => printClassProperty(c, p)))
      ..methods = ListBuilder([
        printToJsonMethod(
          printClassName(context.path),
        ),
        printHashCodeMethod(properties),
        printEqualityOperator(
          printClassName(context.path),
          properties,
        ),
      ]),
  );
}

Extension printContextExtension(PrintContext c) {
  final context = c.context;
  final extendContext = context.extendsContext;
  final properties = _mergeProperties(
    extendContext?.properties ?? [],
    c.context.properties,
  );
  return Extension(
    (b) => b
      ..name = printClassExtensionName(context.path)
      ..on = refer(printClassName(context.path))
      ..methods = ListBuilder([
        printCopyWithMethod(c, properties),
      ]),
  );
}

Method printEqualityOperator(
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
              refer(printPropertyName(e.name))
                  .assignFinal(printLocalPropertyName(e.name))
                  .statement,
              refer("other")
                  .property(printPropertyName(e.name))
                  .assignFinal(printLocalPropertyName(e.name, "lOther"))
                  .statement,
              printPropertyEqualityCheck(
                e.type,
                printLocalPropertyName(e.name),
                printLocalPropertyName(e.name, "lOther"),
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

Method printToJsonMethod(String name) => Method(
      (b) => b
        ..annotations = ListBuilder([refer("override")])
        ..returns = dynamicMap
        ..name = "toJson"
        ..lambda = true
        ..body = refer(printToJsonFactoryName(name)).call([refer("this")]).code,
    );

Field printClassProperty(
  PrintContext context,
  ContextProperty property,
) {
  final jsonKeyAnnotations = <String, Expression>{};

  if (printPropertyName(property.name) != property.name.value) {
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
      ..name = printPropertyName(property.name)
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
  if (propertyContext != null) {
    context.addDependency(propertyContext);
  }
  PrintPropertyResult reference;
  if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = printScalarType(context, typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode &&
      propertyContext != null) {
    reference = printEnumType(context, propertyContext);
  } else if (propertyContext != null) {
    reference = PrintPropertyResult(refer(printClassName(propertyContext)));
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
  final typeName = printClassName(name);
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
