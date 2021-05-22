import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/errors.dart';
import 'package:graphql_codegen/printer/clients/graphql.dart';
import 'package:graphql_codegen/printer/clients/graphql_flutter.dart';
import 'package:graphql_codegen/context.dart';
import 'package:path/path.dart' as p;
import 'package:gql_code_builder/src/ast.dart' as gql_builder;

import 'utils.dart';

const _UNKNOWN_ENUM_VALUE = "\$unknown";
const _JSON_SERIALIZABLE_BASE_CLASS = Reference("JsonSerializable");

Spec printEnum(ContextEnum context) => Enum(
      (b) => b
        ..name = printClassName(context.path)
        ..values = ListBuilder(
          [
            ...context.currentType.values.map((e) => printEnumValue(e.name)),
            EnumValue((b) => b..name = _UNKNOWN_ENUM_VALUE)
          ],
        ),
    );

Spec printInput(ContextInput context) => _printClass(
      context,
      printClassName(context.path),
      context.properties,
    );

Spec _printClass(
  Context context,
  String name,
  Iterable<ContextProperty> properties,
) =>
    Class(
      (b) => b
        ..annotations = ListBuilder(
          [_JSON_SERIALIZABLE_BASE_CLASS.call([])],
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

Spec printVariables(ContextOperation context) => _printClass(
      context,
      printVariableClassName(context.path),
      context.variables,
    );

EnumValue printEnumValue(NameNode name) => EnumValue(
      (b) => b
        ..name = printEnumValueName(name)
        ..annotations = ListBuilder([
          refer('JsonValue').call([literal(name.value)]),
        ]),
    );

Spec printFragment(ContextFragment f) => Class(
      (b) => b
        ..abstract = true
        ..name = printClassName(f.path)
        ..methods = ListBuilder<Method>(
          f.publicProperties.map(
            (property) => printFragmentProperty(f, property),
          ),
        ),
    );

Method printFragmentProperty(
  Context context,
  ContextProperty property,
) =>
    Method(
      (b) => b
        ..type = MethodType.getter
        ..name = printPropertyName(property.name)
        ..returns = printClassPropertyType(context, property),
    );

Spec printDocument(
  Context context,
  OperationDefinitionNode operation,
  Iterable<Name> fragments,
) {
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${printOperationDocumentName(context.path)} = const DocumentNode(definitions: [",
      ),
      gql_builder.fromNode(operation).code,
      Code(","),
      ...fragments.where((element) => element.isRoot).expand(
            (n) => [refer(printFragmentDocumentName(n)).code, Code(",")],
          ),
      Code("]);")
    ]),
  );
}

Spec printFragmentDefinition(
  ContextFragment context,
  FragmentDefinitionNode node,
) {
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${printFragmentDocumentName(context.path)} = const ",
      ),
      gql_builder.fromNode(node).code,
      Code(";")
    ]),
  );
}

Library printRootContext<TKey>(ContextRoot<TKey> context, Set<String> clients) {
  final currentPath = context.schema.lookupPath(context.key);
  final containsJsonSerializable =
      context.contextOperations.isNotEmpty || context.contextInputs.isNotEmpty;

  final containsJsonAnnotations =
      containsJsonSerializable || context.contextEnums.isNotEmpty;
  final containsDocument = context.contextOperations.isNotEmpty ||
      context.contextFragments.isNotEmpty;
  final graphQLClientEnabled = clients.contains('graphql');
  final graphQLFlutterClientEnabled = clients.contains('graphql_flutter');
  return Library(
    (b) => b
      ..directives = ListBuilder([
        if (containsDocument) Directive.import("package:gql/ast.dart"),
        if (containsJsonAnnotations)
          Directive.import(
            "package:json_annotation/json_annotation.dart",
          ),
        ...printImports<TKey>(context),
        if (graphQLClientEnabled) ...printGraphQLDirectives(context),
        if (graphQLFlutterClientEnabled)
          ...printGraphQLFlutterDirectives(context),
        if (containsJsonSerializable)
          Directive.part(
            "${p.basenameWithoutExtension(currentPath)}.g${p.extension(currentPath)}",
          ),
      ])
      ..body = ListBuilder([
        ...context.contextInputs.map(printInput),
        ...context.contextEnums.map(printEnum),
        ...context.contextFragments.expand((context) {
          final fragmentNode = context.fragment;
          return [
            printFragment(context),
            if (fragmentNode != null)
              printFragmentDefinition(
                context,
                fragmentNode,
              ),
          ];
        }),
        ...context.contextOperations.expand((element) {
          final operation = element.operation;
          return [
            if (element.variables.isNotEmpty) printVariables(element),
            printContext(element),
            if (operation != null)
              printDocument(
                element,
                operation,
                element.fragmentsRecursive,
              ),
            if (graphQLClientEnabled) ...printGraphQLClientSpecs(element),
            if (graphQLFlutterClientEnabled)
              ...printGraphQLFlutterSpecs(element),
          ];
        }),
      ]),
  );
}

Iterable<Directive> printImports<TKey>(ContextRoot<TKey> context) {
  final currentPath = context.schema.lookupPath(context.key);
  final currentPathDir = p.dirname(currentPath);
  final paths = context.dependencies
      .map((e) => context.schema.lookupPathFromName(e))
      .whereType<String>()
      .where((element) => element != currentPath);
  final relativePaths = {
    ...paths.map((e) => p.relative(e, from: currentPathDir))
  };
  return relativePaths.map((e) => Directive.import(e));
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

Class printContext(ContextOperation context) {
  final extendContext = context.possibleTypeOfContext;
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
      ..implements =
          ListBuilder(context.fragments.map((e) => refer(printClassName(e))))
      ..annotations = ListBuilder(
        [_JSON_SERIALIZABLE_BASE_CLASS.call([])],
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
                      ..type = printClassPropertyType(context, p),
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
          (p) => printClassProperty(
            context,
            p,
          ),
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
  Context context,
  ContextProperty property,
) {
  final isEnum = property.isEnum;
  final propertyPath = property.path;
  final name = propertyPath == null ? null : printClassName(propertyPath);
  final jsonKeyAnnotations = <String, Expression>{};
  if (isEnum && name != null) {
    jsonKeyAnnotations['unknownEnumValue'] =
        refer(name).property(_UNKNOWN_ENUM_VALUE);
  }

  if (printPropertyName(property.name) != property.name.value) {
    jsonKeyAnnotations['name'] = literal(property.name.value);
  }

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
      ..type = printClassPropertyType(
        context,
        property,
      ),
  );
}

Reference printClassPropertyType(
  Context context,
  ContextProperty property,
) {
  final typeNode = property.type;
  return printTypeNode(
    context,
    typeNode,
    propertyContext: property.path,
  );
}

Reference printTypeNode(
  Context context,
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

Reference printListTypeNode(
  Context context,
  ListTypeNode typeNode, {
  Name? propertyContext,
}) {
  final innerRef = printTypeNode(
    context,
    typeNode.type,
    propertyContext: propertyContext,
  );
  return refer("List<${innerRef.symbol}>${typeNode.isNonNull ? "" : "?"}");
}

Reference printNamedTypeNode(
  Context context,
  NamedTypeNode typeNode, {
  Name? propertyContext,
}) {
  final typeDefinition = context.schema.lookupTypeDefinitionFromTypeNode(
    typeNode,
  );
  if (typeDefinition == null) {
    throw PrinterError(
      "Failed to find type definition for type ${typeNode.name.value}",
    );
  }

  Reference reference;
  if (propertyContext != null) {
    reference = refer(printClassName(propertyContext));
  } else if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = printScalarType(typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode) {
    reference = refer(typeDefinition.name.value);
  } else {
    throw StateError("Field type was not a scalar");
  }
  if (typeNode.isNonNull) {
    return reference;
  }
  return refer("${reference.symbol}?");
}

Reference printScalarType(ScalarTypeDefinitionNode node) {
  final ref = _SCALAR_MAP[node.name.value];
  if (ref == null) {
    print("Missing scalar ${node.name.value}. Defaulting to String");
  }
  return ref ?? Reference("String");
}

const _SCALAR_MAP = const {
  'Int': Reference("int"),
  'Boolean': Reference("bool"),
  'String': Reference("String"),
  'ID': Reference("String"),
};

// TODO print graphql_client
// TODO handle custom scalars
