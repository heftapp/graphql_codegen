import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
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

Spec printInput(PrintContext<ContextInput> context) => _printClass(
      context,
      printClassName(context.context.path),
      context.context.properties,
    );

Spec _printClass(
  PrintContext context,
  String name,
  Iterable<ContextProperty> properties,
) {
  context.addPackage('package:json_annotation/json_annotation.dart');
  context.markAsJsonSerializable();
  return Class(
    (b) => b
      ..annotations = ListBuilder(
        [
          _JSON_SERIALIZABLE_BASE_CLASS
              .call([], {'explicitToJson': literalBool(true)})
        ],
      )
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
        properties.map(
          (property) => printClassProperty(context, property),
        ),
      )
      ..methods = ListBuilder([
        printToJsonMethod(name),
      ]),
  );
}

Spec printVariables(PrintContext<ContextOperation> context) => _printClass(
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

Spec printFragment(PrintContext<ContextFragment> f) {
  f.addDependencies(f.context.fragments);
  final extendContext = f.context.extendsContextFragment;
  return Class(
    (b) => b
      ..abstract = true
      ..name = printClassName(f.context.path)
      ..implements = ListBuilder(
        f.context.fragments.map((e) => printClassName(e)).map(refer),
      )
      ..extend = extendContext == null
          ? null
          : refer(printClassName(extendContext.path))
      ..methods = ListBuilder<Method>(
        f.context.publicProperties.map(
          (property) => printFragmentProperty(f, property),
        ),
      ),
  );
}

Method printFragmentProperty(
  PrintContext context,
  ContextProperty property,
) =>
    Method(
      (b) => b
        ..type = MethodType.getter
        ..name = printPropertyName(property.name)
        ..returns = printClassPropertyType(context, property).i1,
    );

Spec printDocument(
  PrintContext context,
  OperationDefinitionNode operation,
  Iterable<Name> fragments,
) {
  final queue = ListQueue<ExecutableDefinitionNode>.of([operation]);
  final fragments = <FragmentDefinitionNode>{};
  while (queue.isNotEmpty) {
    final definition = queue.removeFirst();
    final visitor = AccumulatingVisitor<NameNode>(
      visitors: [_FragmentsVisisitor()],
    );
    if (definition is OperationDefinitionNode) {
      visitor.visitOperationDefinitionNode(definition);
    } else if (definition is FragmentDefinitionNode) {
      visitor.visitFragmentDefinitionNode(definition);
    }
    final definitions = visitor.accumulator
        .map((e) => context.context.schema.lookupFragment(e))
        .whereType<FragmentDefinitionNode>();
    queue.addAll(definitions);
    fragments.addAll(definitions);
  }
  final fragmentNames = fragments.map(
    (e) => Name.fromSegment(FragmentNameSegment(e)),
  );
  context.addPackage('package:gql/ast.dart');
  context.addDependencies(fragmentNames);
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${printOperationDocumentName(context.context.path)} = const DocumentNode(definitions: [",
      ),
      gql_builder.fromNode(operation).code,
      Code(","),
      ...fragmentNames.expand(
        (n) => [refer(printFragmentDocumentName(n)).code, Code(",")],
      ),
      Code("]);")
    ]),
  );
}

class _FragmentsVisisitor extends SimpleVisitor<List<NameNode>> {
  @override
  visitFragmentSpreadNode(FragmentSpreadNode node) {
    return [node.name];
  }
}

Spec printFragmentDefinition(
  PrintContext<ContextFragment> context,
  FragmentDefinitionNode node,
) {
  context.addPackage('package:gql/ast.dart');
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${printFragmentDocumentName(context.context.path)} = const ",
      ),
      gql_builder.fromNode(node).code,
      Code(";")
    ]),
  );
}

Library printRootContext<TKey>(PrintContext<ContextRoot<TKey>> c) {
  final context = c.context;
  final clients = context.config.clients;
  final body = ListBuilder<Spec>([
    ...context.contextInputs.map(
      (context) => printInput(c.withContext(context)),
    ),
    ...context.contextEnums.map((context) => printEnum(c.withContext(context))),
    ...context.contextFragments.expand((context) {
      final fragmentNode = context.fragment;
      return [
        printFragment(c.withContext(context)),
        if (fragmentNode != null)
          printFragmentDefinition(
            c.withContext(context),
            fragmentNode,
          ),
      ];
    }),
    ...context.contextOperations.expand((element) {
      final operation = element.operation;
      final elementContext = c.withContext(element);
      return [
        if (element.variables.isNotEmpty) printVariables(elementContext),
        printContext(elementContext),
        if (operation != null)
          printDocument(
            elementContext,
            operation,
            element.fragmentsRecursive,
          ),
        if (clients.contains(GraphQLCodegenConfigClient.graphql))
          ...printGraphQLClientSpecs(elementContext),
        if (clients.contains(GraphQLCodegenConfigClient.graphqlFlutter))
          ...printGraphQLFlutterSpecs(elementContext),
      ];
    }),
    if (context.isMainContext) printPossibleTypesMap(c),
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
  final jsonMapReference = printJsonMap();
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
            ..type = jsonMapReference,
        ),
      ])
      ..body = body
      ..lambda = possibleTypes.isEmpty || typenameProperty == null,
  );
}

Reference printJsonMap() => TypeReference(
      (b) => b
        ..symbol = "Map"
        ..types = ListBuilder([
          refer('String'),
          refer('dynamic'),
        ]),
    );

Class printContext(PrintContext<ContextOperation> c) {
  c.addPackage('package:json_annotation/json_annotation.dart');
  c.markAsJsonSerializable();
  final context = c.context;
  c.addDependencies(context.fragments);
  c.addDependencies(context.possibleTypes.map((e) => e.name));

  final extendContext = context.extendsContextOperation;
  if (extendContext != null) {
    c.addDependency(extendContext.path);
  }
  final parentProperties = extendContext?.publicProperties ?? [];
  final parentPropertiesSet = Set<String>.of(
    parentProperties.map((e) => printPropertyName(e.name)),
  );
  final properties = context.publicProperties.where(
    (element) => !parentPropertiesSet.contains(printPropertyName(element.name)),
  );

  return Class(
    (b) => b
      ..name = printClassName(context.path)
      ..implements = ListBuilder(
        context.fragments.map((e) => printClassName(e)).map(refer),
      )
      ..annotations = ListBuilder(
        [
          _JSON_SERIALIZABLE_BASE_CLASS
              .call([], {'explicitToJson': literalBool(true)})
        ],
      )
      ..extend = extendContext == null
          ? _JSON_SERIALIZABLE_BASE_CLASS
          : refer(printClassName(extendContext.path))
      ..constructors = ListBuilder([
        Constructor(
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
                ...parentProperties.map<Parameter>(
                  (p) => Parameter(
                    (b) => b
                      ..required = p.isRequired
                      ..named = true
                      ..name = printPropertyName(p.name)
                      ..type = printClassPropertyType(c, p).i1,
                  ),
                ),
              ],
            )
            ..initializers = ListBuilder<Code>([
              if (extendContext != null)
                refer('super').call(
                  [],
                  Map.fromEntries(
                    parentProperties.map(
                      (e) => MapEntry(
                        printPropertyName(e.name),
                        refer(printPropertyName(e.name)),
                      ),
                    ),
                  ),
                ).code,
            ]),
        ),
        printFromJson(
          printClassName(context.path),
          context.typenameProperty,
          context.possibleTypes,
        ),
      ])
      ..fields = ListBuilder(
        properties.map(
          (p) => printClassProperty(c, p),
        ),
      )
      ..methods = ListBuilder([
        printToJsonMethod(
          printClassName(context.path),
        ),
      ]),
  );
}

Method printToJsonMethod(String name) => Method(
      (b) => b
        ..annotations = ListBuilder([refer("override")])
        ..returns = printJsonMap()
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
  jsonKeyAnnotations.addAll(classPropertyTypeT.i2);

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
      ..type = classPropertyTypeT.i1,
  );
}

class Tuple2<T1, T2> {
  final T1 i1;
  final T2 i2;

  Tuple2(this.i1, this.i2);

  withI1(T1 i1) => Tuple2(i1, i2);

  withI2(T1 i2) => Tuple2(i1, i2);
}

Tuple2<Reference, Map<String, Expression>> printClassPropertyType(
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

Tuple2<Reference, Map<String, Expression>> printTypeNode(
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

Tuple2<Reference, Map<String, Expression>> printListTypeNode(
  PrintContext context,
  ListTypeNode typeNode, {
  Name? propertyContext,
}) {
  final innerRef = printTypeNode(
    context,
    typeNode.type,
    propertyContext: propertyContext,
  );
  return innerRef.withI1(
    refer("List<${innerRef.i1.symbol}>${typeNode.isNonNull ? "" : "?"}"),
  );
}

Tuple2<Reference, Map<String, Expression>> printNamedTypeNode(
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
  Tuple2<Reference, Map<String, Expression>> reference;
  if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = printScalarType(context, typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode &&
      propertyContext != null) {
    reference = printEnumType(context, propertyContext);
  } else if (propertyContext != null) {
    reference = Tuple2(refer(printClassName(propertyContext)), {});
  } else {
    throw StateError("Failed to generate type.");
  }
  if (typeNode.isNonNull) {
    return reference;
  }
  return reference.withI1(refer("${reference.i1.symbol}?"));
}

Tuple2<Reference, Map<String, Expression>> printEnumType(
  PrintContext context,
  Name name,
) {
  final typeName = printClassName(name);
  return Tuple2(
    refer(typeName),
    {'unknownEnumValue': refer(typeName).property(_UNKNOWN_ENUM_VALUE)},
  );
}

Tuple2<Reference, Map<String, Expression>> printScalarType(
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
    return Tuple2(refer("String"), {});
  }
  final import = ref.import;
  if (import != null) {
    context.addPackage(import);
  }
  final fromJson = ref.fromJsonFunctionName;
  final toJson = ref.toJsonFunctionName;
  return Tuple2(
    Reference(ref.type),
    {
      if (fromJson != null) 'fromJson': refer(fromJson),
      if (toJson != null) 'toJson': refer(toJson),
    },
  );
}
