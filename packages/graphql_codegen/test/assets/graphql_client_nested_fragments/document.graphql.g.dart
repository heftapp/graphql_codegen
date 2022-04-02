// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentF1 _$FragmentF1FromJson(Map<String, dynamic> json) => FragmentF1(
      name: json['name'] as String?,
      field: json['field'] == null
          ? null
          : FragmentF1$field.fromJson(json['field'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentF1ToJson(FragmentF1 instance) =>
    <String, dynamic>{
      'name': instance.name,
      'field': instance.field?.toJson(),
      '__typename': instance.$__typename,
    };

FragmentF1$field _$FragmentF1$fieldFromJson(Map<String, dynamic> json) =>
    FragmentF1$field(
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentF1$fieldToJson(FragmentF1$field instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
