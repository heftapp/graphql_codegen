// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$F _$Fragment$FFromJson(Map<String, dynamic> json) => Fragment$F(
      other: json['other'] == null
          ? null
          : Fragment$F2.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Fragment$FToJson(Fragment$F instance) =>
    <String, dynamic>{
      'other': instance.other?.toJson(),
    };

Fragment$F2 _$Fragment$F2FromJson(Map<String, dynamic> json) => Fragment$F2(
      other: json['other'] == null
          ? null
          : Fragment$F3.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Fragment$F2ToJson(Fragment$F2 instance) =>
    <String, dynamic>{
      'other': instance.other?.toJson(),
    };

Fragment$F3 _$Fragment$F3FromJson(Map<String, dynamic> json) => Fragment$F3(
      other: json['other'] == null
          ? null
          : Fragment$F4.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Fragment$F3ToJson(Fragment$F3 instance) =>
    <String, dynamic>{
      'other': instance.other?.toJson(),
    };

Fragment$F4 _$Fragment$F4FromJson(Map<String, dynamic> json) => Fragment$F4(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$F4ToJson(Fragment$F4 instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

Query$Fetch _$Query$FetchFromJson(Map<String, dynamic> json) => Query$Fetch(
      t: json['t'] == null
          ? null
          : Fragment$F.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$FetchToJson(Query$Fetch instance) =>
    <String, dynamic>{
      't': instance.t?.toJson(),
    };
