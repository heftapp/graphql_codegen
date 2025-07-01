import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/context/name.dart';
import 'package:graphql_codegen/src/printer/base/constants.dart';
import 'package:graphql_codegen/src/printer/base/copy.dart';
import 'package:graphql_codegen/src/printer/base/equality.dart';
import 'package:graphql_codegen/src/printer/base/json.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/base/undefined.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';

List<Spec> printInputClasses(PrintContext<ContextInput> context) =>
    _printInputClasses(
      context: context,
      name: context.namePrinter.printClassName,
      properties: context.context.properties,
    );

List<Spec> printVariableClasses(PrintContext context) => _printInputClasses(
      context: context,
      name: context.namePrinter.printVariableClassName,
      properties: context.context.variables,
    );

List<Spec> _printInputClasses({
  required PrintContext context,
  required String Function(Name) name,
  required Iterable<ContextProperty> properties,
}) {
  final factoryParameters = ListBuilder<Parameter>(
    properties.map(
      (property) => Parameter(
        (b) {
          final innerType = printClassPropertyType(context, property);
          b
            ..named = true
            ..required = property.isRequired
            ..type =
                property.hasDefaultValue ? asNullable(innerType) : innerType
            ..name = context.namePrinter.printPropertyName(
              property.name,
            );
        },
      ),
    ),
  );
  return [
    Class(
      (b) => b
        ..name = name(context.path)
        ..constructors = ListBuilder([
          if (context.context.isOneOf)
            ...properties.map(
              (property) => Constructor(
                (b) => b
                  ..requiredParameters = ListBuilder([
                    Parameter(
                      (b) => b
                        ..name = context.namePrinter.printPropertyName(
                          property.name,
                        )
                        ..type = asNonNullable(
                          printClassPropertyType(
                            context,
                            property,
                          ),
                        ),
                    )
                  ])
                  ..factory = true
                  ..name = context.namePrinter.printPropertyName(property.name)
                  ..body = refer(name(context.path)).property('_').call([
                    literalMap(
                      {
                        property.name.value: refer(
                          context.namePrinter.printPropertyName(
                            property.name,
                          ),
                        ),
                      },
                    ),
                  ]).code,
              ),
            )
          else if (context.context.config.enableInputBuilders)
            _printInputBuilderConstructor(
              context: context,
              properties: properties,
              name: name,
            )
          else
            Constructor(
              (b) => b
                ..factory = true
                ..optionalParameters = factoryParameters
                ..body = refer(name(context.path)).property('_').call([
                  CodeExpression(Code(
                    """
                  {
                    ${properties.map((property) {
                      final key = property.name.value;
                      final value =
                          context.namePrinter.printPropertyName(property.name);
                      final entry = "r'${key}': ${value},";
                      if (property.isRequired) {
                        return entry;
                      }
                      return """
                    if (${value} != null) ${entry}
                    """;
                    }).join()}
                  }
                  """,
                  )),
                ]).code,
            ),
          Constructor((b) => b
            ..name = '_'
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..name = kDataVariableName
                  ..toThis = true,
              )
            ])),
          Constructor(
            (b) => b
              ..factory = true
              ..name = 'fromJson'
              ..requiredParameters = ListBuilder([
                Parameter(
                  (b) => b
                    ..name = 'data'
                    ..type = dynamicMap,
                )
              ])
              ..body = _printFromJson(
                context,
                name(context.path),
                properties,
              ),
          ),
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = kDataVariableName
              ..type = dynamicMap,
          ),
          if (context.context.config.enableInputBuilders &&
              !context.context.isOneOf)
            printUndefinedField(),
        ])
        ..methods = ListBuilder([
          ...properties.map((e) => Method(
                (b) {
                  final innerType = printClassPropertyType(context, e);
                  final returnType =
                      e.hasDefaultValue ? asNullable(innerType) : innerType;
                  b
                    ..name = context.namePrinter.printPropertyName(e.name)
                    ..returns = returnType
                    ..type = MethodType.getter
                    ..body = refer(kDataVariableName)
                        .index(literalString(e.name.value))
                        .asA(returnType)
                        .code;
                },
              )),
          Method(
            (b) => b
              ..name = 'toJson'
              ..returns = dynamicMap
              ..body = _printToJson(context, properties),
          ),
          if (!context.context.config.disableCopyWithGeneration)
            Method(
              (b) => b
                ..name = 'copyWith'
                ..type = MethodType.getter
                ..returns = generic(
                  context.namePrinter
                      .printCopyWithClassName(name(context.path)),
                  refer(name(context.path)),
                )
                ..body = refer(context.namePrinter
                        .printCopyWithClassName(name(context.path)))
                    .call([
                  refer('this'),
                  printIdentityFunction().closure,
                ]).code,
            ),
          printEqualityOperator(
            context,
            name(context.path),
            properties,
            dataObjectCheckResolver: () => refer(kDataVariableName),
          ),
          printHashCodeMethod(
            context,
            properties,
            dataObjectCheckResolver: () => refer(kDataVariableName),
          ),
        ]),
    ),
    if (!context.context.config.disableCopyWithGeneration)
      ...printCopyWithClasses(
        context,
        name(context.path),
        properties,
        refer(name(context.path)).property('_').call([
          CodeExpression(Block.of([
            Code('{'),
            Code('..._instance.${kDataVariableName},'),
            ...properties.expand((prop) {
              final propName = context.namePrinter.printPropertyName(prop.name);
              return [
                if (prop.isNonNull)
                  Code(
                      'if(${propName} != ${kUndefinedFieldName} && ${propName} != null)')
                else
                  Code('if(${propName} != ${kUndefinedFieldName})'),
                literalString(prop.name.value).code,
                Code(':'),
                refer(propName).asA(printClassPropertyType(context, prop)).code,
                Code(','),
              ];
            }),
            Code('}'),
          ])),
        ]),
      )
  ];
}

Constructor _printInputBuilderConstructor(
    {required PrintContext context,
    required String Function(Name) name,
    required Iterable<ContextProperty> properties}) {
  final buildPropertyMapEntry = (ContextProperty property) => MapEntry(
        context.namePrinter.printPropertyName(
          property.name,
        ),
        property.hasDefaultValue
            ? asNullable(
                printClassPropertyType(
                  context,
                  property,
                ),
              )
            : printClassPropertyType(
                context,
                property,
              ),
      );
  final fnName = 'fn';
  return Constructor(
    (b) => b
      ..factory = true
      ..requiredParameters = ListBuilder<Parameter>(
        [
          Parameter(
            (b) => b
              ..name = fnName
              ..type = FunctionType(
                (b) => b
                  ..returnType = refer(name(context.path))
                  ..requiredParameters = ListBuilder<Reference>(
                    [
                      FunctionType(
                        (b) => b
                          ..namedParameters = MapBuilder(
                            Map.fromEntries(
                              properties
                                  .where((property) => !property.isRequired)
                                  .map(buildPropertyMapEntry),
                            ),
                          )
                          ..namedRequiredParameters = MapBuilder(
                            Map.fromEntries(
                              properties
                                  .where((property) => property.isRequired)
                                  .map(buildPropertyMapEntry),
                            ),
                          )
                          ..returnType = refer(
                            name(context.path),
                          ),
                      )
                    ],
                  ),
              ),
          )
        ],
      )
      ..body = refer(fnName).call(
        [
          Method(
            (b) => b
              ..optionalParameters = ListBuilder(
                properties.map(
                  (property) => Parameter(
                    (b) => b
                      ..name = context.namePrinter.printPropertyName(
                        property.name,
                      )
                      ..named = true
                      ..required = property.isRequired
                      ..defaultTo = property.isRequired
                          ? null
                          : refer(kUndefinedFieldName).code
                      ..type = property.isRequired
                          ? printClassPropertyType(context, property)
                          : refer('Object?'),
                  ),
                ),
              )
              ..body = refer(name(context.path)).property('_').call([
                CodeExpression(Code(
                  """
                  {
                    ${properties.map((property) {
                    final key = property.name.value;
                    final value = context.namePrinter.printPropertyName(
                      property.name,
                    );
                    final entry = "r'${key}': ${value},";
                    if (property.isRequired) {
                      return entry;
                    }
                    return """
                    if (${value} != ${kUndefinedFieldName}) ${entry}
                    """;
                  }).join()}
                  }
                  """,
                )),
              ]).code,
          ).closure
        ],
      ).code,
  );
}

Code _printToJson(PrintContext context, Iterable<ContextProperty> properties) {
  const resultDataVariableName = r'result$data';
  return Block.of([
    declareFinal(resultDataVariableName)
        .assign(literalMap(
          {},
          refer('String'),
          refer('dynamic'),
        ))
        .statement,
    for (final property in properties) ...[
      if (context.context.config.allowMissingNullableKeysInFromJson &&
          !property.isNonNull) ...[
        // For nullable properties when allowMissingNullableKeysInFromJson is true
        declareFinal(context.namePrinter.printLocalPropertyName(property.name))
            .assign(refer(kDataVariableName)
                .property('containsKey')
                .call([literalString(property.name.value)]).conditional(
              refer(context.namePrinter.printPropertyName(property.name)),
              literalNull,
            ))
            .statement,
        refer(resultDataVariableName)
            .index(literalString(property.name.value))
            .assign(
              printToJsonValueOnExpression(
                context,
                property,
                printMaybeAddCast(
                  refer(
                    context.namePrinter.printLocalPropertyName(property.name),
                  ),
                  property.hasDefaultValue && property.isNonNull,
                  printClassPropertyType(context, property),
                ),
              ),
            )
            .statement,
      ] else ...[
        // Original logic for required properties or when allowMissingNullableKeysInFromJson is false
        if (!property.isRequired)
          Code(
              'if(${kDataVariableName}.containsKey(\'${property.name.value}\')) {'),
        declareFinal(context.namePrinter.printLocalPropertyName(property.name))
            .assign(refer(context.namePrinter.printPropertyName(property.name)))
            .statement,
        refer(resultDataVariableName)
            .index(literalString(property.name.value))
            .assign(
              printToJsonValueOnExpression(
                context,
                property,
                printMaybeAddCast(
                  refer(
                    context.namePrinter.printLocalPropertyName(property.name),
                  ),
                  property.hasDefaultValue && property.isNonNull,
                  printClassPropertyType(context, property),
                ),
              ),
            )
            .statement,
        if (!property.isRequired) Code('}'),
      ]
    ],
    refer(resultDataVariableName).returned.statement,
  ]);
}

Code _printFromJson(
  PrintContext context,
  String name,
  Iterable<ContextProperty> properties,
) {
  const resultDataVariableName = r'result$data';
  return Block.of([
    declareFinal(resultDataVariableName)
        .assign(literalMap(
          {},
          refer('String'),
          refer('dynamic'),
        ))
        .statement,
    for (final property in properties) ...[
      if (!property.isRequired)
        Code('if(data.containsKey(\'${property.name.value}\')) {'),
      declareFinal(context.namePrinter.printLocalPropertyName(property.name))
          .assign(refer('data').index(literalString(property.name.value)))
          .statement,
      refer(resultDataVariableName)
          .index(literalString(property.name.value))
          .assign(
            printFromJsonValue(
              context,
              property,
              context.namePrinter.printLocalPropertyName(property.name),
            ),
          )
          .statement,
      if (!property.isRequired) Code('}')
    ],
    refer(name)
        .property('_')
        .call([refer(resultDataVariableName)])
        .returned
        .statement,
  ]);
}
