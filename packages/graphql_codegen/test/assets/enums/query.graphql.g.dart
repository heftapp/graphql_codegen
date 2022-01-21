// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFoobar _$QueryFoobarFromJson(Map<String, dynamic> json) {
  return QueryFoobar(
    field: _$enumDecodeNullable(_$EnumEnumEnumMap, json['field'],
        unknownValue: EnumEnum.$unknown),
    fields: (json['fields'] as List<dynamic>?)
        ?.map((e) =>
            _$enumDecode(_$EnumEnumEnumMap, e, unknownValue: EnumEnum.$unknown))
        .toList(),
  );
}

Map<String, dynamic> _$QueryFoobarToJson(QueryFoobar instance) =>
    <String, dynamic>{
      'field': _$EnumEnumEnumMap[instance.field],
      'fields': instance.fields?.map((e) => _$EnumEnumEnumMap[e]).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$EnumEnumEnumMap = {
  EnumEnum.foo: 'FOO',
  EnumEnum.bar: 'BAR',
  EnumEnum.bazBob: 'BAZ_BOB',
  EnumEnum.$void: 'VOID',
  EnumEnum.$unknown: r'$unknown',
};
