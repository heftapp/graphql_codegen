// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$I1 _$Input$I1FromJson(Map<String, dynamic> json) => Input$I1(
      s: json['s'] as String,
      nested_input: json['nested_input'] == null
          ? null
          : Input$I1.fromJson(json['nested_input'] as Map<String, dynamic>),
      $_min: json['_min'] as int?,
    );

Map<String, dynamic> _$Input$I1ToJson(Input$I1 instance) => <String, dynamic>{
      's': instance.s,
      'nested_input': instance.nested_input?.toJson(),
      '_min': instance.$_min,
    };
