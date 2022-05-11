// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$FragmentA _$Fragment$FragmentAFromJson(Map<String, dynamic> json) =>
    Fragment$FragmentA(
      $__typename: json['__typename'] as String,
      value: json['value'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$FragmentAToJson(Fragment$FragmentA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'value': instance.value,
      'name': instance.name,
    };

Fragment$FragmentI _$Fragment$FragmentIFromJson(Map<String, dynamic> json) =>
    Fragment$FragmentI(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$FragmentIToJson(Fragment$FragmentI instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

Query$FetchStuff _$Query$FetchStuffFromJson(Map<String, dynamic> json) =>
    Query$FetchStuff(
      $__typename: json['__typename'] as String,
      field: json['field'] == null
          ? null
          : Query$FetchStuff$field.fromJson(
              json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$FetchStuffToJson(Query$FetchStuff instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'field': instance.field?.toJson(),
    };

Query$FetchStuff$field _$Query$FetchStuff$fieldFromJson(
        Map<String, dynamic> json) =>
    Query$FetchStuff$field(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Query$FetchStuff$fieldToJson(
        Query$FetchStuff$field instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

Query$FetchStuff$field$$FieldA _$Query$FetchStuff$field$$FieldAFromJson(
        Map<String, dynamic> json) =>
    Query$FetchStuff$field$$FieldA(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$Query$FetchStuff$field$$FieldAToJson(
        Query$FetchStuff$field$$FieldA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      'value': instance.value,
    };
