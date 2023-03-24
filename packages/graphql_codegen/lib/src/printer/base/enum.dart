import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/schema.dart' as gql;
import 'package:graphql_codegen/graphql_codegen.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/constants.dart';
import 'package:graphql_codegen/src/printer/context.dart';

List<Spec> printEnum(PrintContext<ContextEnum> context) {
  final config =
      context.context.config.enums[context.context.currentTypeName.value];
  if (config?.type != null) {
    return [];
  }

  final fallbackEnumValue = config?.fallbackEnumValue;

  if (fallbackEnumValue != null &&
      context.context.values.whereType<gql.EnumValueDefinition?>().firstWhere(
              (element) => element?.name == fallbackEnumValue,
              orElse: () => null) !=
          null) {
    throw PrinterError(
      "Enum fallback value for enum \"${context.context.currentType.name.value}\" is not a valid value.",
    );
  }

  final values = {
    for (final v in context.context.values)
      v.name.value: context.namePrinter.printEnumValueName(v.name),
    if (fallbackEnumValue == null) kUnknowkEnumValue: kUnknowkEnumValue
  };
  final className = context.namePrinter.printClassName(context.path);
  final specs = <Spec>[
    Enum(
      (b) => b
        ..name = className
        ..values = ListBuilder<EnumValue>(
          values.entries.map((e) => EnumValue((b) => b..name = e.value)),
        ),
    ),
    Method(
      (b) => b
        ..name =
            context.namePrinter.printToJsonConverterFunctionName(context.path)
        ..returns = refer('String')
        ..requiredParameters = ListBuilder([
          Parameter(
            (b) => b
              ..name = 'e'
              ..type = refer(className),
          )
        ])
        ..body = Block.of([
          Code('switch(e) {'),
          for (final value in values.entries)
            Code('case ${className}.${value.value}: return r\'${value.key}\';'),
          Code('}')
        ]),
    ),
    Method(
      (b) => b
        ..name =
            context.namePrinter.printFromJsonConverterFunctionName(context.path)
        ..returns = refer(className)
        ..requiredParameters = ListBuilder([
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = refer('String'),
          )
        ])
        ..body = Block.of([
          Code('switch(value) {'),
          for (final value in values.entries)
            if (value.key != kUnknowkEnumValue)
              Code(
                  'case r\'${value.key}\': return ${className}.${value.value};'),
          Code(
              'default: return ${className}.${fallbackEnumValue ?? kUnknowkEnumValue};'),
          Code('}')
        ]),
    )
  ];
  return specs;
}
