import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/errors.dart';
import 'package:graphql_codegen/utils.dart';
import 'package:path/path.dart' as p;

Spec printEnum(Schema schema, EnumTypeDefinitionNode e) {
  return Enum(
    (b) => b
      ..name = e.name.value
      ..values = ListBuilder(
        e.values.map((e) => printEnumValue(e.name)),
      ),
  );
}

EnumValue printEnumValue(NameNode name) {
  return EnumValue((b) => b..name = name.value);
}

Spec printFragment(ContextFragment f) => Class(
      (b) => b
        ..abstract = true
        ..name = f.path.key
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
        ..name = property.name
        ..returns = printClassPropertyType(context, property),
    );

const _DEFAULT_IMPORTS = <String>[
  "package:json_annotation/json_annotation.dart"
];

Library printRootContext<TKey>(ContextRoot<TKey> context) {
  final currentPath = context.schema.lookupPath(context.key);
  return Library(
    (b) => b
      ..directives = ListBuilder([
        if (context.contextsOperations.isNotEmpty)
          ..._DEFAULT_IMPORTS.map((e) => Directive.import(e)),
        ...printImports<TKey>(context),
        if (context.contextsOperations.isNotEmpty)
          Directive.part(
            "${p.basenameWithoutExtension(currentPath)}.g${p.extension(currentPath)}",
          ),
      ])
      ..body = ListBuilder([
        ...context.contextFragments.map(printFragment),
        ...context.contextsOperations.map(printContext),
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
  final relativePaths = paths.map((e) => p.relative(e, from: currentPathDir));
  return relativePaths.map((e) => Directive.import(e));
}

Constructor printFromJson(ContextOperation context) {
  final jsonMapReference = printJsonMap();
  final typenameProperty = context.typenameProperty;
  final possibleTypes = context.possibleTypes;
  final toJsonFactoryName = "_\$${context.path.key}FromJson";
  Code body;
  if (typenameProperty == null || possibleTypes.isEmpty) {
    body = refer(toJsonFactoryName).call([refer("json")]).code;
  } else {
    final cases = possibleTypes
        .map(
          (t) => """case "${t.type.value}": return ${t.key}.fromJson(json);""",
        )
        .join("");
    body = Block(
      (b) => b
        ..statements = ListBuilder([
          Code("""
switch(json["${typenameProperty.name}"] as String) {
  ${cases}
  default:
  return ${toJsonFactoryName}(json);
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
  final jsonMapReference = printJsonMap();
  final properties = context.publicProperties;
  return Class(
    (b) => b
      ..name = context.path.key
      ..implements = ListBuilder(context.fragmentKeys.map((e) => refer(e)))
      ..annotations = ListBuilder([refer('JsonSerializable').call([])])
      ..extend = extendContext == null
          ? refer("JsonSerializable")
          : refer(extendContext.path.key)
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..requiredParameters = ListBuilder(
              [
                ...properties.map<Parameter>(
                  (p) => Parameter(
                    (b) => b
                      ..toThis = true
                      ..name = p.name,
                  ),
                ),
                if (extendContext != null)
                  ...extendContext.publicProperties.map<Parameter>(
                    (p) => Parameter(
                      (b) => b
                        ..name = p.name
                        ..type = printClassPropertyType(context, p),
                    ),
                  ),
              ],
            )
            ..initializers = ListBuilder<Code>([
              if (extendContext != null)
                refer('super')
                    .call(
                      extendContext.publicProperties.map((e) => refer(e.name)),
                    )
                    .code,
            ]),
        ),
        printFromJson(context),
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
        Method(
          (b) => b
            ..annotations = ListBuilder([refer("override")])
            ..returns = jsonMapReference
            ..name = "toJson"
            ..lambda = true
            ..body = refer("_\$${context.path.key}ToJson")
                .call([refer("this")]).code,
        )
      ]),
  );
}

Field printClassProperty(
  Context context,
  ContextProperty property,
) =>
    Field(
      (b) => b
        ..modifier = FieldModifier.final$
        ..name = property.name
        ..type = printClassPropertyType(
          context,
          property,
        ),
    );

Reference printClassPropertyType(
  Context context,
  ContextProperty property,
) {
  final currentType = context.currentType;
  final typeNode = context.schema.lookupTypeNodeFromField(
    currentType,
    property.field,
  );
  if (typeNode == null) {
    throw PrinterError(
      "Failed to find type for field ${property.field} on ${currentType.name}",
    );
  }

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
    reference = refer(propertyContext.key);
  } else if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = printScalarType(typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode) {
    reference = refer(typeDefinition.name.value);
  } else {
    print(typeDefinition);
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
    throw PrinterError("Unsupported scalar ${node.name.value}");
  }
  return ref;
}

const _SCALAR_MAP = const {
  'Int': Reference("int"),
  'Boolean': Reference("bool"),
  'String': Reference("String"),
  'ID': Reference("String"),
};

// TODO print document
// TODO print input
// TODO print enum
// TODO print graphql_client
