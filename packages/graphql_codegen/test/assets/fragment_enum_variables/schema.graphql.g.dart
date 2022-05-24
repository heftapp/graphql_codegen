// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$I _$Input$IFromJson(Map<String, dynamic> json) => Input$I(
      s: json['s'] as String?,
    );

Map<String, dynamic> _$Input$IToJson(Input$I instance) => <String, dynamic>{
      's': instance.s,
    };

Variables$Fragment$F1 _$Variables$Fragment$F1FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F1(
      locale: $enumDecode(_$Enum$LocaleEnumMap, json['locale'],
          unknownValue: Enum$Locale.$unknown),
    );

Map<String, dynamic> _$Variables$Fragment$F1ToJson(
        Variables$Fragment$F1 instance) =>
    <String, dynamic>{
      'locale': _$Enum$LocaleEnumMap[instance.locale],
    };

const _$Enum$LocaleEnumMap = {
  Enum$Locale.da_DK: 'da_DK',
  Enum$Locale.nb_NO: 'nb_NO',
  Enum$Locale.$unknown: r'$unknown',
};

Fragment$F1 _$Fragment$F1FromJson(Map<String, dynamic> json) => Fragment$F1(
      n2: json['n2'] as String?,
      $__typename: json['__typename'] as String,
      n1: json['n1'] as String?,
    );

Map<String, dynamic> _$Fragment$F1ToJson(Fragment$F1 instance) =>
    <String, dynamic>{
      'n2': instance.n2,
      '__typename': instance.$__typename,
      'n1': instance.n1,
    };

Variables$Fragment$F2 _$Variables$Fragment$F2FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F2(
      locale: $enumDecode(_$Enum$LocaleEnumMap, json['locale'],
          unknownValue: Enum$Locale.$unknown),
    );

Map<String, dynamic> _$Variables$Fragment$F2ToJson(
        Variables$Fragment$F2 instance) =>
    <String, dynamic>{
      'locale': _$Enum$LocaleEnumMap[instance.locale],
    };

Fragment$F2 _$Fragment$F2FromJson(Map<String, dynamic> json) => Fragment$F2(
      n2: json['n2'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F2ToJson(Fragment$F2 instance) =>
    <String, dynamic>{
      'n2': instance.n2,
      '__typename': instance.$__typename,
    };

Variables$Fragment$F3 _$Variables$Fragment$F3FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F3(
      i: Input$I.fromJson(json['i'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Fragment$F3ToJson(
        Variables$Fragment$F3 instance) =>
    <String, dynamic>{
      'i': instance.i.toJson(),
    };

Fragment$F3 _$Fragment$F3FromJson(Map<String, dynamic> json) => Fragment$F3(
      test: json['test'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F3ToJson(Fragment$F3 instance) =>
    <String, dynamic>{
      'test': instance.test,
      '__typename': instance.$__typename,
    };

Variables$Fragment$F4 _$Variables$Fragment$F4FromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$F4(
      locale: $enumDecode(_$Enum$LocaleEnumMap, json['locale'],
          unknownValue: Enum$Locale.$unknown),
    );

Map<String, dynamic> _$Variables$Fragment$F4ToJson(
        Variables$Fragment$F4 instance) =>
    <String, dynamic>{
      'locale': _$Enum$LocaleEnumMap[instance.locale],
    };

Fragment$F4 _$Fragment$F4FromJson(Map<String, dynamic> json) => Fragment$F4(
      n1: json['n1'] as String?,
      n2: json['n2'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$F4ToJson(Fragment$F4 instance) =>
    <String, dynamic>{
      'n1': instance.n1,
      'n2': instance.n2,
      '__typename': instance.$__typename,
    };
