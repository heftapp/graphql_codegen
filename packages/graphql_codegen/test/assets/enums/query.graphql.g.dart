// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$Foobar _$Query$FoobarFromJson(Map<String, dynamic> json) => Query$Foobar(
      field: $enumDecodeNullable(_$Enum$EnumEnumMap, json['field'],
          unknownValue: Enum$Enum.$unknown),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$Enum$EnumEnumMap, e,
              unknownValue: Enum$Enum.$unknown))
          .toList(),
    );

Map<String, dynamic> _$Query$FoobarToJson(Query$Foobar instance) =>
    <String, dynamic>{
      'field': _$Enum$EnumEnumMap[instance.field],
      'fields': instance.fields?.map((e) => _$Enum$EnumEnumMap[e]).toList(),
    };

const _$Enum$EnumEnumMap = {
  Enum$Enum.FOO: 'FOO',
  Enum$Enum.BAR: 'BAR',
  Enum$Enum.BAZ_BOB: 'BAZ_BOB',
  Enum$Enum.VOID: 'VOID',
  Enum$Enum.$unknown: r'$unknown',
};
