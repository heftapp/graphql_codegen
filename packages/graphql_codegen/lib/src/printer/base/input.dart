import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context.dart';
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
      context.namePrinter.printImplClassName,
      context.context.properties,
    );

List<Spec> printVariableClasses(PrintContext context) => _printInputClasses(
      context,
      context.namePrinter.printVariableClassName,
      context.namePrinter.printVariableImplClassName,
      context.context.variables,
    );

List<Spec> _printInputClasses(
  PrintContext context,
  String Function(Name) name,
  String Function(Name) implClassName,
  Iterable<ContextProperty> properties,
) {
  final factoryParameters = ListBuilder<Parameter>(
    properties.map(
      (property) => Parameter(
        (b) => b
          ..named = true
          ..required = property.isRequired
          ..type = printClassPropertyType(context, property)
          ..name = context.namePrinter.printPropertyName(
            property.name,
          ),
      ),
    ),
  );
  return [
    Class(
      (b) => b
        ..name = name(context.path)
        ..abstract = true
        ..constructors = ListBuilder([
          Constructor(
            (b) => b
              ..factory = true
              ..optionalParameters = factoryParameters
              ..lambda = true
              ..body = refer(implClassName(context.path)).call([
                literalMap({
                  for (final property in properties)
                    property.name.value: refer(
                        context.namePrinter.printPropertyName(property.name))
                })
              ]).code,
          ),
          Constructor(
            (b) => b
              ..factory = true
              ..name = 'withoutNulls'
              ..optionalParameters = factoryParameters
              ..body = Block.of([
                literalMap(
                  {
                    for (final property in properties)
                      if (property.isRequired)
                        property.name.value: refer(context.namePrinter
                            .printPropertyName(property.name))
                  },
                  refer('String'),
                  refer('dynamic'),
                ).assignFinal(r'l$data').statement,
                for (final property in properties)
                  if (!property.isRequired)
                    Code(
                        'if(${context.namePrinter.printPropertyName(property.name)} != null) l\$data[\'${property.name.value}\'] = ${context.namePrinter.printPropertyName(property.name)}; '),
                refer(implClassName(context.path))
                    .call([refer(r'l$data')])
                    .returned
                    .statement,
              ]),
          ),
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
                implClassName(context.path),
                properties,
              ),
          ),
        ])
        ..methods = ListBuilder([
          ...properties.map(
            (e) => Method(
              (b) => b
                ..name = context.namePrinter.printPropertyName(e.name)
                ..returns = printClassPropertyType(context, e)
                ..type = MethodType.getter,
            ),
          ),
          Method((b) => b
            ..name = 'toJson'
            ..returns = dynamicMap),
          Method((b) => b
            ..name = 'copyWith'
            ..type = MethodType.getter
            ..returns = TypeReference((b) => b
              ..symbol = context.namePrinter.printCopyWithClassName(
                name(context.path),
              )
              ..types = ListBuilder([refer(name(context.path))]))),
          Method(
            (b) => b
              ..name = kImplInstanceFieldName
              ..type = MethodType.getter
              ..returns = refer(implClassName(context.path)),
          ),
        ]),
    ),
    Class(
      (b) => b
        ..name = implClassName(context.path)
        ..implements = ListBuilder([refer(name(context.path))])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = kDataVariableName,
              )
            ]))
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = kDataVariableName
              ..modifier = FieldModifier.final$
              ..type = dynamicMap,
          ),
        ])
        ..methods = ListBuilder([
          ...properties.map((e) => Method(
                (b) => b
                  ..name = context.namePrinter.printPropertyName(e.name)
                  ..returns = printClassPropertyType(context, e)
                  ..type = MethodType.getter
                  ..body = refer(kDataVariableName)
                      .index(literalString(e.name.value))
                      .asA(printClassPropertyType(context, e))
                      .code,
              )),
          Method(
            (b) => b
              ..name = 'toJson'
              ..returns = dynamicMap
              ..body = _printToJson(context, properties),
          ),
          Method(
            (b) => b
              ..name = 'copyWith'
              ..type = MethodType.getter
              ..returns = generic(
                context.namePrinter.printCopyWithClassName(name(context.path)),
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
            implClassName(context.path),
            properties,
            dataObjectCheck: true,
          ),
          printHashCodeMethod(
            context,
            properties,
            dataObjectCheck: true,
          ),
          Method(
            (b) => b
              ..name = kImplInstanceFieldName
              ..type = MethodType.getter
              ..returns = refer(implClassName(context.path))
              ..body = refer('this').code,
          )
        ]),
    ),
    ...printCopyWithClasses(
      context,
      name(context.path),
      properties,
      refer(implClassName(context.path)),
      refer(implClassName(context.path)).call([
        CodeExpression(Block.of([
          Code('{'),
          Code('..._instance.${kDataVariableName},'),
          ...properties.expand((prop) {
            final propName = context.namePrinter.printPropertyName(prop.name);
            return [
              if (prop.isRequired)
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
    literalMap(
      {},
      refer('String'),
      refer('dynamic'),
    ).assignFinal(resultDataVariableName).statement,
    for (final property in properties) ...[
      if (!property.isRequired)
        Code(
            'if(${kDataVariableName}.containsKey(\'${property.name.value}\')) {'),
      refer(context.namePrinter.printPropertyName(property.name))
          .assignFinal(
            context.namePrinter.printLocalPropertyName(property.name),
          )
          .statement,
      refer(resultDataVariableName)
          .index(literalString(property.name.value))
          .assign(
            printToJsonValue(
              context,
              property,
              context.namePrinter.printLocalPropertyName(property.name),
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
  String implClassName,
  Iterable<ContextProperty> properties,
) {
  const resultDataVariableName = r'result$data';
  return Block.of([
    literalMap(
      {},
      refer('String'),
      refer('dynamic'),
    ).assignFinal(resultDataVariableName).statement,
    for (final property in properties) ...[
      if (!property.isRequired)
        Code('if(data.containsKey(\'${property.name.value}\')) {'),
      refer('data')
          .index(literalString(property.name.value))
          .assignFinal(
            context.namePrinter.printLocalPropertyName(property.name),
          )
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
    refer(implClassName)
        .call([refer(resultDataVariableName)])
        .returned
        .statement,
  ]);
}
