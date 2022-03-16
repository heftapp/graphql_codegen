// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      u: json['u'] == null
          ? null
          : QueryQ$u.fromJson(json['u'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      'u': instance.u,
    };

QueryQ$u _$QueryQ$uFromJson(Map<String, dynamic> json) => QueryQ$u(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$uToJson(QueryQ$u instance) => <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryQ$u$Ta _$QueryQ$u$TaFromJson(Map<String, dynamic> json) => QueryQ$u$Ta(
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$u$TaToJson(QueryQ$u$Ta instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

QueryQ$u$Tb _$QueryQ$u$TbFromJson(Map<String, dynamic> json) => QueryQ$u$Tb(
      velocity: json['velocity'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$u$TbToJson(QueryQ$u$Tb instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'velocity': instance.velocity,
    };
