// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      docsWithTypename: (json['docsWithTypename'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryQ$docsWithTypename.fromJson(e as Map<String, dynamic>))
          .toList(),
      docsWihtoutTypename: (json['docsWihtoutTypename'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryQ$docsWihtoutTypename.fromJson(e as Map<String, dynamic>))
          .toList(),
      docsWithAliasedTypename:
          (json['docsWithAliasedTypename'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : QueryQ$docsWithAliasedTypename.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
      docsWithFragment: (json['docsWithFragment'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryQ$docsWithFragment.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      'docsWithTypename': instance.docsWithTypename,
      'docsWihtoutTypename': instance.docsWihtoutTypename,
      'docsWithAliasedTypename': instance.docsWithAliasedTypename,
      'docsWithFragment': instance.docsWithFragment,
      '__typename': instance.$__typename,
    };

QueryQ$docsWithTypename _$QueryQ$docsWithTypenameFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWithTypename(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$docsWithTypenameToJson(
        QueryQ$docsWithTypename instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryQ$docsWihtoutTypename _$QueryQ$docsWihtoutTypenameFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWihtoutTypename(
      title: json['title'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$docsWihtoutTypenameToJson(
        QueryQ$docsWihtoutTypename instance) =>
    <String, dynamic>{
      'title': instance.title,
      '__typename': instance.$__typename,
    };

QueryQ$docsWithAliasedTypename _$QueryQ$docsWithAliasedTypenameFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWithAliasedTypename(
      $__typename: json['__typename'] as String?,
    );

Map<String, dynamic> _$QueryQ$docsWithAliasedTypenameToJson(
        QueryQ$docsWithAliasedTypename instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryQ$docsWithFragment _$QueryQ$docsWithFragmentFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWithFragment(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$docsWithFragmentToJson(
        QueryQ$docsWithFragment instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryQ$docsWithFragment$Contract _$QueryQ$docsWithFragment$ContractFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWithFragment$Contract(
      title: json['title'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$docsWithFragment$ContractToJson(
        QueryQ$docsWithFragment$Contract instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'title': instance.title,
    };

QueryQ$docsWithFragment$Report _$QueryQ$docsWithFragment$ReportFromJson(
        Map<String, dynamic> json) =>
    QueryQ$docsWithFragment$Report(
      title: json['title'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryQ$docsWithFragment$ReportToJson(
        QueryQ$docsWithFragment$Report instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'title': instance.title,
    };
