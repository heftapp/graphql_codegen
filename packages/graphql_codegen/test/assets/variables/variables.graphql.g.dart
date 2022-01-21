// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variables.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryHiBob _$VariablesQueryHiBobFromJson(Map<String, dynamic> json) {
  return VariablesQueryHiBob(
    i: InputI1.fromJson(json['i'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesQueryHiBobToJson(
        VariablesQueryHiBob instance) =>
    <String, dynamic>{
      'i': instance.i,
    };

QueryHiBob _$QueryHiBobFromJson(Map<String, dynamic> json) {
  return QueryHiBob(
    field: json['field'] == null
        ? null
        : QueryHiBob$field.fromJson(json['field'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryHiBobToJson(QueryHiBob instance) =>
    <String, dynamic>{
      'field': instance.field,
    };

QueryHiBob$field _$QueryHiBob$fieldFromJson(Map<String, dynamic> json) {
  return QueryHiBob$field(
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$QueryHiBob$fieldToJson(QueryHiBob$field instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
