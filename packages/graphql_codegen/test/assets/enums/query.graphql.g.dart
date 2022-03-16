// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFoobar _$QueryFoobarFromJson(Map<String, dynamic> json) => QueryFoobar(
      field: $enumDecodeNullable(_$EnumEnumEnumMap, json['field'],
          unknownValue: EnumEnum.$unknown),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EnumEnumEnumMap, e,
              unknownValue: EnumEnum.$unknown))
          .toList(),
    );

Map<String, dynamic> _$QueryFoobarToJson(QueryFoobar instance) =>
    <String, dynamic>{
      'field': _$EnumEnumEnumMap[instance.field],
      'fields': instance.fields?.map((e) => _$EnumEnumEnumMap[e]).toList(),
    };

const _$EnumEnumEnumMap = {
  EnumEnum.foo: 'FOO',
  EnumEnum.bar: 'BAR',
  EnumEnum.bazBob: 'BAZ_BOB',
  EnumEnum.$void: 'VOID',
  EnumEnum.$unknown: r'$unknown',
};
