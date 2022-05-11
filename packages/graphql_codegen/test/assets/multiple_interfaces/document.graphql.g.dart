// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$F0 _$Fragment$F0FromJson(Map<String, dynamic> json) => Fragment$F0(
      name01: json['name01'] as String?,
    );

Map<String, dynamic> _$Fragment$F0ToJson(Fragment$F0 instance) =>
    <String, dynamic>{
      'name01': instance.name01,
    };

Fragment$F1 _$Fragment$F1FromJson(Map<String, dynamic> json) => Fragment$F1(
      size2: json['size2'] as int?,
    );

Map<String, dynamic> _$Fragment$F1ToJson(Fragment$F1 instance) =>
    <String, dynamic>{
      'size2': instance.size2,
    };

Fragment$F2 _$Fragment$F2FromJson(Map<String, dynamic> json) => Fragment$F2(
      name2: json['name2'] as String?,
    );

Map<String, dynamic> _$Fragment$F2ToJson(Fragment$F2 instance) =>
    <String, dynamic>{
      'name2': instance.name2,
    };

Fragment$F3 _$Fragment$F3FromJson(Map<String, dynamic> json) => Fragment$F3(
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$Fragment$F3ToJson(Fragment$F3 instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      field: json['field'] == null
          ? null
          : Query$Q$field.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      'field': instance.field?.toJson(),
    };

Query$Q$field _$Query$Q$fieldFromJson(Map<String, dynamic> json) =>
    Query$Q$field(
      $__typename: json['__typename'] as String,
      name0: json['name0'] as String?,
      name01: json['name01'] as String?,
    );

Map<String, dynamic> _$Query$Q$fieldToJson(Query$Q$field instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name0': instance.name0,
      'name01': instance.name01,
    };

Query$Q$field$$T1 _$Query$Q$field$$T1FromJson(Map<String, dynamic> json) =>
    Query$Q$field$$T1(
      $__typename: json['__typename'] as String,
      name0: json['name0'] as String?,
      name01: json['name01'] as String?,
      size: json['size'] as int?,
      name: json['name'] as String?,
      size2: json['size2'] as int?,
      name2: json['name2'] as String?,
    );

Map<String, dynamic> _$Query$Q$field$$T1ToJson(Query$Q$field$$T1 instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name0': instance.name0,
      'name01': instance.name01,
      'size': instance.size,
      'name': instance.name,
      'size2': instance.size2,
      'name2': instance.name2,
    };
