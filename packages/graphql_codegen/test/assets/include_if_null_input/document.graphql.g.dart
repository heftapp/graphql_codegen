// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputInput _$InputInputFromJson(Map<String, dynamic> json) => InputInput(
      field: json['field'] as String?,
      flag: json['flag'] as bool?,
    );

Map<String, dynamic> _$InputInputToJson(InputInput instance) {
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

VariablesQueryQ1 _$VariablesQueryQ1FromJson(Map<String, dynamic> json) =>
    VariablesQueryQ1(
      input: json['input'] == null
          ? null
          : InputInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VariablesQueryQ1ToJson(VariablesQueryQ1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.toJson());
  return val;
}

QueryQ1 _$QueryQ1FromJson(Map<String, dynamic> json) => QueryQ1(
      field: json['field'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ1ToJson(QueryQ1 instance) => <String, dynamic>{
      'field': instance.field,
      '__typename': instance.$__typename,
    };
