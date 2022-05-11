// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$Input _$Input$InputFromJson(Map<String, dynamic> json) => Input$Input(
      field: json['field'] as String?,
      flag: json['flag'] as bool?,
    );

Map<String, dynamic> _$Input$InputToJson(Input$Input instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  writeNotNull('flag', instance.flag);
  return val;
}

Variables$Query$Q1 _$Variables$Query$Q1FromJson(Map<String, dynamic> json) =>
    Variables$Query$Q1(
      input: json['input'] == null
          ? null
          : Input$Input.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$Q1ToJson(Variables$Query$Q1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.toJson());
  return val;
}

Query$Q1 _$Query$Q1FromJson(Map<String, dynamic> json) => Query$Q1(
      field: json['field'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q1ToJson(Query$Q1 instance) => <String, dynamic>{
      'field': instance.field,
      '__typename': instance.$__typename,
    };
