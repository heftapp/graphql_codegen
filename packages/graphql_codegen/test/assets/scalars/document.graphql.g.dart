// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchScalars _$QueryFetchScalarsFromJson(Map<String, dynamic> json) {
  return QueryFetchScalars(
    i: json['i'] as int?,
    id: json['id'] as int?,
    s: json['s'] as String?,
    c1: json['c1'] as String?,
    c2: json['c2'] == null ? null : DateTime.parse(json['c2'] as String),
    c3: _nullable$fobbobFromJson(json['c3']),
    c3s: _nullable$_list$_nullable$fobbobFromJson(json['c3s']),
  );
}

Map<String, dynamic> _$QueryFetchScalarsToJson(QueryFetchScalars instance) =>
    <String, dynamic>{
      'i': instance.i,
      'id': instance.id,
      's': instance.s,
      'c1': instance.c1,
      'c2': instance.c2?.toIso8601String(),
      'c3': _nullable$fobbobToJson(instance.c3),
      'c3s': _nullable$_list$_nullable$fobbobToJson(instance.c3s),
    };
