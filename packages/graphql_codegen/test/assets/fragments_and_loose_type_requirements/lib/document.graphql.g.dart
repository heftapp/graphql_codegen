// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ1 _$QueryQ1FromJson(Map<String, dynamic> json) => QueryQ1(
      t: json['t'] == null
          ? null
          : QueryQ1$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQ1ToJson(QueryQ1 instance) => <String, dynamic>{
      't': instance.t,
    };

QueryQ1$t _$QueryQ1$tFromJson(Map<String, dynamic> json) => QueryQ1$t(
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : QueryQ1$t$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQ1$tToJson(QueryQ1$t instance) => <String, dynamic>{
      'name': instance.name,
      't': instance.t,
    };

QueryQ1$t$t _$QueryQ1$t$tFromJson(Map<String, dynamic> json) => QueryQ1$t$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryQ1$t$tToJson(QueryQ1$t$t instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryQ2 _$QueryQ2FromJson(Map<String, dynamic> json) => QueryQ2(
      t: json['t'] == null
          ? null
          : QueryQ2$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQ2ToJson(QueryQ2 instance) => <String, dynamic>{
      't': instance.t,
    };

QueryQ2$t _$QueryQ2$tFromJson(Map<String, dynamic> json) => QueryQ2$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryQ2$tToJson(QueryQ2$t instance) => <String, dynamic>{
      'name': instance.name,
    };
