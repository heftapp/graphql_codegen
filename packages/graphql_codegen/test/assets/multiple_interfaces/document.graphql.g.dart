// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentF0 _$FragmentF0FromJson(Map<String, dynamic> json) => FragmentF0(
      name01: json['name01'] as String?,
    );

Map<String, dynamic> _$FragmentF0ToJson(FragmentF0 instance) =>
    <String, dynamic>{
      'name01': instance.name01,
    };

FragmentF1 _$FragmentF1FromJson(Map<String, dynamic> json) => FragmentF1(
      size2: json['size2'] as int?,
    );

Map<String, dynamic> _$FragmentF1ToJson(FragmentF1 instance) =>
    <String, dynamic>{
      'size2': instance.size2,
    };

FragmentF2 _$FragmentF2FromJson(Map<String, dynamic> json) => FragmentF2(
      name2: json['name2'] as String?,
    );

Map<String, dynamic> _$FragmentF2ToJson(FragmentF2 instance) =>
    <String, dynamic>{
      'name2': instance.name2,
    };

FragmentF3 _$FragmentF3FromJson(Map<String, dynamic> json) => FragmentF3(
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FragmentF3ToJson(FragmentF3 instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      field: json['field'] == null
          ? null
          : QueryQ$field.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      'field': instance.field?.toJson(),
    };

QueryQ$field _$QueryQ$fieldFromJson(Map<String, dynamic> json) => QueryQ$field(
      $__typename: json['__typename'] as String,
      name0: json['name0'] as String?,
      name01: json['name01'] as String?,
    );

Map<String, dynamic> _$QueryQ$fieldToJson(QueryQ$field instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name0': instance.name0,
      'name01': instance.name01,
    };

QueryQ$field$T1 _$QueryQ$field$T1FromJson(Map<String, dynamic> json) =>
    QueryQ$field$T1(
      $__typename: json['__typename'] as String,
      name0: json['name0'] as String?,
      name01: json['name01'] as String?,
      size: json['size'] as int?,
      name: json['name'] as String?,
      size2: json['size2'] as int?,
      name2: json['name2'] as String?,
    );

Map<String, dynamic> _$QueryQ$field$T1ToJson(QueryQ$field$T1 instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name0': instance.name0,
      'name01': instance.name01,
      'size': instance.size,
      'name': instance.name,
      'size2': instance.size2,
      'name2': instance.name2,
    };
