// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'b.query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$FetchPerson _$Query$FetchPersonFromJson(Map<String, dynamic> json) =>
    Query$FetchPerson(
      fetchPerson: json['fetchPerson'] == null
          ? null
          : Query$FetchPerson$fetchPerson.fromJson(
              json['fetchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchPersonToJson(Query$FetchPerson instance) =>
    <String, dynamic>{
      'fetchPerson': instance.fetchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

Query$FetchPerson$fetchPerson _$Query$FetchPerson$fetchPersonFromJson(
        Map<String, dynamic> json) =>
    Query$FetchPerson$fetchPerson(
      age: json['age'] as int?,
      name: json['name'] as String?,
      status: $enumDecodeNullable(_$Enum$StatusEnumMap, json['status'],
          unknownValue: Enum$Status.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchPerson$fetchPersonToJson(
        Query$FetchPerson$fetchPerson instance) =>
    <String, dynamic>{
      'age': instance.age,
      'name': instance.name,
      'status': _$Enum$StatusEnumMap[instance.status],
      '__typename': instance.$__typename,
    };

const _$Enum$StatusEnumMap = {
  Enum$Status.COOL: 'COOL',
  Enum$Status.SMEANS: 'SMEANS',
  Enum$Status.$unknown: r'$unknown',
};
