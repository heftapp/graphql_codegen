// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$F _$Fragment$FFromJson(Map<String, dynamic> json) => Fragment$F(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$FToJson(Fragment$F instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

Fragment$F$$T _$Fragment$F$$TFromJson(Map<String, dynamic> json) =>
    Fragment$F$$T(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : Fragment$F$$T$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Fragment$F$$TToJson(Fragment$F$$T instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      't': instance.t?.toJson(),
    };

Fragment$F$$T$t _$Fragment$F$$T$tFromJson(Map<String, dynamic> json) =>
    Fragment$F$$T$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Fragment$F$$T$tToJson(Fragment$F$$T$t instance) =>
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
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : Query$Q$t$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$Q$tToJson(Query$Q$t instance) => <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      't': instance.t?.toJson(),
    };

Query$Q$t$t _$Query$Q$t$tFromJson(Map<String, dynamic> json) => Query$Q$t$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Query$Q$t$tToJson(Query$Q$t$t instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
