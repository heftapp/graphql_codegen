// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document2.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$F1 _$Fragment$F1FromJson(Map<String, dynamic> json) => Fragment$F1(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$F1ToJson(Fragment$F1 instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      t: json['t'] == null
          ? null
          : Query$Q$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      't': instance.t?.toJson(),
    };

Query$Q$t _$Query$Q$tFromJson(Map<String, dynamic> json) => Query$Q$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Query$Q$tToJson(Query$Q$t instance) => <String, dynamic>{
      'name': instance.name,
    };
