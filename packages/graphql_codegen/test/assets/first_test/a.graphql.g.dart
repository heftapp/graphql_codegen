// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$FetchName _$Query$FetchNameFromJson(Map<String, dynamic> json) =>
    Query$FetchName(
      name: json['name'] == null
          ? null
          : Fragment$F.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$FetchNameToJson(Query$FetchName instance) =>
    <String, dynamic>{
      'name': instance.name?.toJson(),
    };
