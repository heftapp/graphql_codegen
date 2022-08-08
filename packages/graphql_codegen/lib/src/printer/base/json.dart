import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';

typedef _Converter = Expression Function(TypeNode, Expression);

Expression _convertDoubleFromJson(TypeNode type, Expression valueRef) {
  final casted = valueRef.asA(
    TypeReference((b) => b
      ..symbol = 'num'
      ..isNullable = !type.isNonNull),
  );
  final converter = 'toDouble';
  final accessed = type.isNonNull
      ? casted.property(converter)
      : casted.nullSafeProperty(converter);
  return accessed.call([]);
}

Expression _convertDateTimeFromJson(TypeNode type, Expression valueRef) {
  final parsed =
      refer('DateTime').property('parse').call([valueRef.asA(refer('String'))]);
  if (type.isNonNull) {
    return parsed;
  }
  return printNullCheck(valueRef, parsed);
}

Expression _convertDateTimeToJson(TypeNode type, Expression valueRef) {
  const isoGetter = 'toIso8601String';
  return (type.isNonNull
          ? valueRef.property(isoGetter)
          : valueRef.nullSafeProperty(isoGetter))
      .call([]);
}

const _customFromJson = <String, _Converter>{
  'double': _convertDoubleFromJson,
  'DateTime': _convertDateTimeFromJson,
};

const _customToJson = <String, _Converter>{
  'DateTime': _convertDateTimeToJson,
};

Expression printFromJsonValue(
  PrintContext context,
  ContextProperty property,
  String value,
) =>
    _printFromJsonValue(
      context,
      property.type,
      value,
      property.path,
    );

Expression _printFromJsonValue(
  PrintContext context,
  TypeNode type,
  String value,
  Name? propertyContext,
) {
  final valueRef = refer(value);
  if (type is ListTypeNode) {
    final cast = generic('List', refer('dynamic'), isNullable: !type.isNonNull);
    final castedValue = valueRef.asA(cast);
    final mappedAccess = (type.isNonNull
            ? castedValue.property('map')
            : castedValue.nullSafeProperty('map'))
        .call([
          Method(
            (b) => b
              ..requiredParameters =
                  ListBuilder([Parameter((b) => b..name = 'e')])
              ..body = _printFromJsonValue(
                context,
                type.type,
                'e',
                propertyContext,
              ).code,
          ).closure
        ])
        .property('toList')
        .call([]);
    return mappedAccess;
  }
  if (type is! NamedTypeNode) {
    throw StateError("Unsupported type node");
  }

  final typeDefinition = context.schema.lookupTypeDefinitionFromTypeNode(type);
  final replacementContext = propertyContext != null
      ? context.context
              .lookupContext(propertyContext)
              ?.replacementContext
              ?.path ??
          propertyContext
      : null;
  if (replacementContext != null) {
    context.addDependency(replacementContext);
  }

  if (typeDefinition is ScalarTypeDefinitionNode) {
    final ref = scalarConfigFromScalarDefinition(context, typeDefinition);
    final fromJson = ref.fromJsonFunctionName;
    if (fromJson != null) {
      final v = refer(fromJson).call([valueRef]);
      return !type.isNonNull ? printNullCheck(valueRef, v) : v;
    }
    return _customFromJson[ref.type]?.call(type, valueRef) ??
        valueRef.asA(
          TypeReference((b) => b
            ..symbol = ref.type
            ..isNullable = !type.isNonNull),
        );
  }

  if (typeDefinition is EnumTypeDefinitionNode && replacementContext != null) {
    final inner = refer(context.namePrinter
            .printFromJsonConverterFunctionName(replacementContext))
        .call([valueRef.asA(refer('String'))]);
    return type.isNonNull ? inner : printNullCheck(valueRef, inner);
  }

  if (replacementContext != null) {
    final constructed =
        refer(context.namePrinter.printClassName(replacementContext))
            .property('fromJson')
            .call([valueRef.asA(dynamicMap)]);
    return type.isNonNull
        ? constructed
        : printNullCheck(
            valueRef,
            constructed,
          );
  }

  throw StateError('Failed to construct `fromJson`');
}

Expression printToJsonValue(
  PrintContext context,
  ContextProperty property,
  String value,
) =>
    _printToJsonValue(
      context,
      property.type,
      value,
      property.path,
    );

Expression _printToJsonValue(
  PrintContext context,
  TypeNode type,
  String value,
  Name? propertyContext,
) {
  final valueRef = refer(value);
  if (type is ListTypeNode) {
    final mappedAccess = (type.isNonNull
            ? valueRef.property('map')
            : valueRef.nullSafeProperty('map'))
        .call([
          Method(
            (b) => b
              ..requiredParameters =
                  ListBuilder([Parameter((b) => b..name = 'e')])
              ..body = _printToJsonValue(
                context,
                type.type,
                'e',
                propertyContext,
              ).code,
          ).closure
        ])
        .property('toList')
        .call([]);
    return mappedAccess;
  }
  if (type is! NamedTypeNode) {
    throw StateError("Unsupported type node");
  }

  final typeDefinition = context.schema.lookupTypeDefinitionFromTypeNode(type);
  final replacementContext = propertyContext != null
      ? context.context
              .lookupContext(propertyContext)
              ?.replacementContext
              ?.path ??
          propertyContext
      : null;
  if (replacementContext != null) {
    context.addDependency(replacementContext);
  }

  if (typeDefinition is ScalarTypeDefinitionNode) {
    final ref = scalarConfigFromScalarDefinition(context, typeDefinition);
    final toJson = ref.toJsonFunctionName;
    if (toJson != null) {
      final v = refer(toJson).call([valueRef]);
      return !type.isNonNull ? printNullCheck(valueRef, v) : v;
    }
    return _customToJson[ref.type]?.call(type, valueRef) ?? valueRef;
  }

  if (typeDefinition is EnumTypeDefinitionNode && replacementContext != null) {
    final inner = refer(context.namePrinter
            .printToJsonConverterFunctionName(replacementContext))
        .call([valueRef]);
    return type.isNonNull ? inner : printNullCheck(valueRef, inner);
  }

  if (replacementContext != null) {
    return (type.isNonNull
            ? valueRef.property('toJson')
            : valueRef.nullSafeProperty('toJson'))
        .call([]);
  }

  throw StateError('Failed to construct `toJson`');
}
