// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$I _$Input$IFromJson(Map<String, dynamic> json) => Input$I(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Input$IToJson(Input$I instance) => <String, dynamic>{
      'title': instance.title,
    };

Input$I_ _$Input$I_FromJson(Map<String, dynamic> json) => Input$I_(
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$Input$I_ToJson(Input$I_ instance) => <String, dynamic>{
      'value': instance.value,
    };

Input$i _$Input$iFromJson(Map<String, dynamic> json) => Input$i(
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$Input$iToJson(Input$i instance) => <String, dynamic>{
      'enabled': instance.enabled,
    };
