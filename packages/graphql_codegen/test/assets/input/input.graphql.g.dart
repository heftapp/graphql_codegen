// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputI1 _$InputI1FromJson(Map<String, dynamic> json) => InputI1(
      s: json['s'] as String,
      nested_input: json['nested_input'] == null
          ? null
          : InputI1.fromJson(json['nested_input'] as Map<String, dynamic>),
      $_min: json['_min'] as int?,
    );

Map<String, dynamic> _$InputI1ToJson(InputI1 instance) => <String, dynamic>{
      's': instance.s,
      'nested_input': instance.nested_input?.toJson(),
      '_min': instance.$_min,
    };
