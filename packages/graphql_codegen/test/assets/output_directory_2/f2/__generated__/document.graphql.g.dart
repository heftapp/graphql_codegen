// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      name: $enumDecodeNullable(_$Enum$EEnumMap, json['name'],
          unknownValue: Enum$E.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      'name': _$Enum$EEnumMap[instance.name],
      '__typename': instance.$__typename,
    };

const _$Enum$EEnumMap = {
  Enum$E.ONE: 'ONE',
  Enum$E.TWO: 'TWO',
  Enum$E.THREE: 'THREE',
  Enum$E.$unknown: r'$unknown',
};
