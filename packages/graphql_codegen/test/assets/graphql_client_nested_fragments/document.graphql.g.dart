// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$F1 _$Fragment$F1FromJson(Map<String, dynamic> json) => Fragment$F1(
      name: json['name'] as String?,
      field: json['field'] == null
          ? null
          : Fragment$F2.fromJson(json['field'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F1ToJson(Fragment$F1 instance) =>
    <String, dynamic>{
      'name': instance.name,
      'field': instance.field?.toJson(),
      '__typename': instance.$__typename,
    };
