// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchName _$QueryFetchNameFromJson(Map<String, dynamic> json) =>
    QueryFetchName(
      name: json['name'] == null
          ? null
          : QueryFetchName$name.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryFetchNameToJson(QueryFetchName instance) =>
    <String, dynamic>{
      'name': instance.name?.toJson(),
    };

QueryFetchName$name _$QueryFetchName$nameFromJson(Map<String, dynamic> json) =>
    QueryFetchName$name(
      name: json['name'] as String,
    );

Map<String, dynamic> _$QueryFetchName$nameToJson(
        QueryFetchName$name instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
