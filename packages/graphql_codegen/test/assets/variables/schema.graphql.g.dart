// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$I1 _$Input$I1FromJson(Map<String, dynamic> json) => Input$I1(
      s: json['s'] as String,
      nested: json['nested'] == null
          ? null
          : Input$I1.fromJson(json['nested'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$I1ToJson(Input$I1 instance) => <String, dynamic>{
      's': instance.s,
      'nested': instance.nested?.toJson(),
    };
