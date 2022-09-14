import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/constants.dart';
import 'package:graphql_codegen/src/printer/context.dart';

List<Spec> printEnum(PrintContext<ContextEnum> context) {
  final typeDef = context.context.currentType;
  final values = {
    for (final v in typeDef.values)
      v.name.value: context.namePrinter.printEnumValueName(v.name),
    kUnknowkEnumValue: kUnknowkEnumValue
  };
  final className = context.namePrinter.printClassName(context.path);
  final specs = <Spec>[
    Enum(
      (b) => b
        ..name = className
        ..values = ListBuilder(
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
          Code('default: return ${className}.${kUnknowkEnumValue};'),
          Code('}')
        ]),
    )
  ];
  return specs;
}
