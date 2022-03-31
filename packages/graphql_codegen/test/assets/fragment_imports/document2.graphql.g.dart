// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document2.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentF1 _$FragmentF1FromJson(Map<String, dynamic> json) => FragmentF1(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FragmentF1ToJson(FragmentF1 instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      t: json['t'] == null
          ? null
          : QueryQ$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      't': instance.t,
    };

QueryQ$t _$QueryQ$tFromJson(Map<String, dynamic> json) => QueryQ$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryQ$tToJson(QueryQ$t instance) => <String, dynamic>{
      'name': instance.name,
    };
