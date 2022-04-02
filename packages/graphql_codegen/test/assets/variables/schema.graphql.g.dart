// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputI1 _$InputI1FromJson(Map<String, dynamic> json) => InputI1(
      s: json['s'] as String,
      nested: json['nested'] == null
          ? null
          : InputI1.fromJson(json['nested'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputI1ToJson(InputI1 instance) => <String, dynamic>{
      's': instance.s,
      'nested': instance.nested?.toJson(),
    };
