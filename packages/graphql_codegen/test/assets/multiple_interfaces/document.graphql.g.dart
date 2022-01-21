// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ _$QueryQFromJson(Map<String, dynamic> json) {
  return QueryQ(
    field: json['field'] == null
        ? null
        : QueryQ$field.fromJson(json['field'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      'field': instance.field,
    };

QueryQ$field _$QueryQ$fieldFromJson(Map<String, dynamic> json) {
  return QueryQ$field(
    name0: json['name0'] as String?,
    name01: json['name01'] as String?,
  );
}

Map<String, dynamic> _$QueryQ$fieldToJson(QueryQ$field instance) =>
    <String, dynamic>{
      'name0': instance.name0,
      'name01': instance.name01,
    };

QueryQ$field$T1 _$QueryQ$field$T1FromJson(Map<String, dynamic> json) {
  return QueryQ$field$T1(
    size: json['size'] as int?,
    name: json['name'] as String?,
    size2: json['size2'] as int?,
    name2: json['name2'] as String?,
    name0: json['name0'] as String?,
    name01: json['name01'] as String?,
  );
}

Map<String, dynamic> _$QueryQ$field$T1ToJson(QueryQ$field$T1 instance) =>
    <String, dynamic>{
      'name0': instance.name0,
      'name01': instance.name01,
      'size': instance.size,
      'name': instance.name,
      'size2': instance.size2,
      'name2': instance.name2,
    };
