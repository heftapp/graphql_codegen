// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchStuff _$QueryFetchStuffFromJson(Map<String, dynamic> json) =>
    QueryFetchStuff(
      $__typename: json['__typename'] as String,
      field: json['field'] == null
          ? null
          : QueryFetchStuff$field.fromJson(
              json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryFetchStuffToJson(QueryFetchStuff instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'field': instance.field,
    };

QueryFetchStuff$field _$QueryFetchStuff$fieldFromJson(
        Map<String, dynamic> json) =>
    QueryFetchStuff$field(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryFetchStuff$fieldToJson(
        QueryFetchStuff$field instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

QueryFetchStuff$field$FieldA _$QueryFetchStuff$field$FieldAFromJson(
        Map<String, dynamic> json) =>
    QueryFetchStuff$field$FieldA(
      value: json['value'] as String?,
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryFetchStuff$field$FieldAToJson(
        QueryFetchStuff$field$FieldA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      'value': instance.value,
    };
