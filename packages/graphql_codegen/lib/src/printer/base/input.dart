import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/context/name.dart';
import 'package:graphql_codegen/src/printer/base/constants.dart';
import 'package:graphql_codegen/src/printer/base/copy.dart';
import 'package:graphql_codegen/src/printer/base/equality.dart';
import 'package:graphql_codegen/src/printer/base/json.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';

List<Spec> printInputClasses(PrintContext<ContextInput> context) =>
    _printInputClasses(
      context,
      context.namePrinter.printClassName,
      context.context.properties,
    );

List<Spec> printVariableClasses(PrintContext context) => _printInputClasses(
      context,
      context.namePrinter.printVariableClassName,
      context.context.variables,
    );

List<Spec> _printInputClasses(
  PrintContext context,
  String Function(Name) name,
  Iterable<ContextProperty> properties,
) {
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
          )
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
                  Code('if(${propName} != _undefined && ${propName} != null)')
                else
                  Code('if(${propName} != _undefined)'),
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
