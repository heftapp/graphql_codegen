// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      t: json['t'] == null
          ? null
          : QueryQ$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      't': instance.t,
    };

QueryQ$t _$QueryQ$tFromJson(Map<String, dynamic> json) => QueryQ$t(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : QueryQ$t$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQ$tToJson(QueryQ$t instance) => <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      't': instance.t,
    };

QueryQ$t$t _$QueryQ$t$tFromJson(Map<String, dynamic> json) => QueryQ$t$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryQ$t$tToJson(QueryQ$t$t instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
