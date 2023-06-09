import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/schema.dart' as gql;
import 'package:graphql_codegen/graphql_codegen.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/printer/base/constants.dart';
import 'package:graphql_codegen/src/printer/base/deprecation.dart';
import 'package:graphql_codegen/src/printer/context.dart';

class _EnumMappedValue {
  final String graphQLName;
  final String dartName;
  final String? deprecatedReason;

  _EnumMappedValue({
    required this.graphQLName,
    required this.dartName,
    required this.deprecatedReason,
  });
}

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

  final values = [
    for (final v in context.context.values)
      _EnumMappedValue(
        graphQLName: v.name.value,
        dartName: context.namePrinter.printEnumValueName(v.name),
        deprecatedReason: extractDeprecatedReason(v.directives),
      ),
    if (fallbackEnumValue == null)
      _EnumMappedValue(
          graphQLName: kUnknowkEnumValue,
          dartName: kUnknowkEnumValue,
          deprecatedReason: null),
  ];
  final className = context.namePrinter.printClassName(context.path);
  final specs = <Spec>[
    Enum(
      (b) => b
        ..name = className
        ..values = ListBuilder<EnumValue>(
          values.map(
            (e) {
              final reason = e.deprecatedReason;
              return EnumValue(
                (b) => b
                  ..name = e.dartName
                  ..annotations = ListBuilder(
                    [
                      if (reason != null)
                        refer(
                          'Deprecated(\'${reason.replaceAll("'", r"\'")}\')',
                        ),
                    ],
                  ),
              );
            },
          ).toList(growable: false),
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
          for (final value in values)
            Code(
                'case ${className}.${value.dartName}: return r\'${value.graphQLName}\';'),
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
          for (final value in values)
            if (value.graphQLName != kUnknowkEnumValue)
              Code(
                  'case r\'${value.graphQLName}\': return ${className}.${value.dartName};'),
          Code(
              'default: return ${className}.${fallbackEnumValue ?? kUnknowkEnumValue};'),
          Code('}')
        ]),
    )
  ];
  return specs;
}
