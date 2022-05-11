// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variables.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$HiBob _$Variables$Query$HiBobFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HiBob(
      i: Input$I1.fromJson(json['i'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$HiBobToJson(
        Variables$Query$HiBob instance) =>
    <String, dynamic>{
      'i': instance.i.toJson(),
    };

Query$HiBob _$Query$HiBobFromJson(Map<String, dynamic> json) => Query$HiBob(
      field: json['field'] == null
          ? null
          : Query$HiBob$field.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$HiBobToJson(Query$HiBob instance) =>
    <String, dynamic>{
      'field': instance.field?.toJson(),
    };

Query$HiBob$field _$Query$HiBob$fieldFromJson(Map<String, dynamic> json) =>
    Query$HiBob$field(
      value: json['value'] as String,
    );

Map<String, dynamic> _$Query$HiBob$fieldToJson(Query$HiBob$field instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
