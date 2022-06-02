// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query___Q _$Query___QFromJson(Map<String, dynamic> json) => Query___Q(
      status: $enumDecodeNullable(_$Enum___StatusEnumMap, json['status'],
          unknownValue: Enum___Status.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query___QToJson(Query___Q instance) => <String, dynamic>{
      'status': _$Enum___StatusEnumMap[instance.status],
      '__typename': instance.$__typename,
    };

const _$Enum___StatusEnumMap = {
  Enum___Status.Pending: 'Pending',
  Enum___Status.Successful: 'Successful',
  Enum___Status.Failure: 'Failure',
  Enum___Status.InProgress: 'InProgress',
  Enum___Status.$unknown: r'$unknown',
};
