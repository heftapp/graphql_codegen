// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$Input _$Input$InputFromJson(Map<String, dynamic> json) => Input$Input(
      inputField: json['inputField'] as bool?,
    );

Map<String, dynamic> _$Input$InputToJson(Input$Input instance) =>
    <String, dynamic>{
      'inputField': instance.inputField,
    };

Variables$Fragment$F1 _$Variables$Fragment$F1FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F1(
      i: json['i'] as bool?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$Variables$Fragment$F1ToJson(
        Variables$Fragment$F1 instance) =>
    <String, dynamic>{
      'i': instance.i,
      'name': instance.name,
    };

Fragment$F1 _$Fragment$F1FromJson(Map<String, dynamic> json) => Fragment$F1(
      level1: json['level1'] == null
          ? null
          : Fragment$F1$level1.fromJson(json['level1'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F1ToJson(Fragment$F1 instance) =>
    <String, dynamic>{
      'level1': instance.level1?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$F1$level1 _$Fragment$F1$level1FromJson(Map<String, dynamic> json) =>
    Fragment$F1$level1(
      level2: json['level2'] == null
          ? null
          : Fragment$F1$level1$level2.fromJson(
              json['level2'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F1$level1ToJson(Fragment$F1$level1 instance) =>
    <String, dynamic>{
      'level2': instance.level2?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$F1$level1$level2 _$Fragment$F1$level1$level2FromJson(
        Map<String, dynamic> json) =>
    Fragment$F1$level1$level2(
      level3: json['level3'] == null
          ? null
          : Fragment$F1$level1$level2$level3.fromJson(
              json['level3'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F1$level1$level2ToJson(
        Fragment$F1$level1$level2 instance) =>
    <String, dynamic>{
      'level3': instance.level3?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$F1$level1$level2$level3 _$Fragment$F1$level1$level2$level3FromJson(
        Map<String, dynamic> json) =>
    Fragment$F1$level1$level2$level3(
      level4: json['level4'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F1$level1$level2$level3ToJson(
        Fragment$F1$level1$level2$level3 instance) =>
    <String, dynamic>{
      'level4': instance.level4,
      '__typename': instance.$__typename,
    };

Variables$Fragment$F2 _$Variables$Fragment$F2FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F2(
      i: json['i'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Variables$Fragment$F2ToJson(
        Variables$Fragment$F2 instance) =>
    <String, dynamic>{
      'i': instance.i,
      'name': instance.name,
    };

Fragment$F2 _$Fragment$F2FromJson(Map<String, dynamic> json) => Fragment$F2(
      level1: json['level1'] == null
          ? null
          : Fragment$F21.fromJson(json['level1'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F2ToJson(Fragment$F2 instance) =>
    <String, dynamic>{
      'level1': instance.level1?.toJson(),
      '__typename': instance.$__typename,
    };

Variables$Fragment$F21 _$Variables$Fragment$F21FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F21(
      i: json['i'] as bool?,
    );

Map<String, dynamic> _$Variables$Fragment$F21ToJson(
        Variables$Fragment$F21 instance) =>
    <String, dynamic>{
      'i': instance.i,
    };

Fragment$F21 _$Fragment$F21FromJson(Map<String, dynamic> json) => Fragment$F21(
      level2: json['level2'] == null
          ? null
          : Fragment$F21$level2.fromJson(
              json['level2'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F21ToJson(Fragment$F21 instance) =>
    <String, dynamic>{
      'level2': instance.level2?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$F21$level2 _$Fragment$F21$level2FromJson(Map<String, dynamic> json) =>
    Fragment$F21$level2(
      level3: json['level3'] == null
          ? null
          : Fragment$F21$level2$level3.fromJson(
              json['level3'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F21$level2ToJson(
        Fragment$F21$level2 instance) =>
    <String, dynamic>{
      'level3': instance.level3?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$F21$level2$level3 _$Fragment$F21$level2$level3FromJson(
        Map<String, dynamic> json) =>
    Fragment$F21$level2$level3(
      level4: json['level4'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F21$level2$level3ToJson(
        Fragment$F21$level2$level3 instance) =>
    <String, dynamic>{
      'level4': instance.level4,
      '__typename': instance.$__typename,
    };
