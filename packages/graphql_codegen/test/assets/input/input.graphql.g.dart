// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputI1 _$InputI1FromJson(Map<String, dynamic> json) {
  return InputI1(
    s: json['s'] as String,
    nestedInput: json['nested_input'] == null
        ? null
        : InputI1.fromJson(json['nested_input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputI1ToJson(InputI1 instance) => <String, dynamic>{
      's': instance.s,
      'nested_input': instance.nestedInput,
    };
