// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$FReport _$Fragment$FReportFromJson(Map<String, dynamic> json) =>
    Fragment$FReport(
      title: json['title'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$FReportToJson(Fragment$FReport instance) =>
    <String, dynamic>{
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      docsWithTypename: (json['docsWithTypename'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Q$docsWithTypename.fromJson(e as Map<String, dynamic>))
          .toList(),
      docsWihtoutTypename: (json['docsWihtoutTypename'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Q$docsWihtoutTypename.fromJson(e as Map<String, dynamic>))
          .toList(),
      docsWithAliasedTypename:
          (json['docsWithAliasedTypename'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$Q$docsWithAliasedTypename.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
      docsWithFragment: (json['docsWithFragment'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Q$docsWithFragment.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      'docsWithTypename':
          instance.docsWithTypename?.map((e) => e?.toJson()).toList(),
      'docsWihtoutTypename':
          instance.docsWihtoutTypename?.map((e) => e?.toJson()).toList(),
      'docsWithAliasedTypename':
          instance.docsWithAliasedTypename?.map((e) => e?.toJson()).toList(),
      'docsWithFragment':
          instance.docsWithFragment?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$Q$docsWithTypename _$Query$Q$docsWithTypenameFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWithTypename(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q$docsWithTypenameToJson(
        Query$Q$docsWithTypename instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$Q$docsWihtoutTypename _$Query$Q$docsWihtoutTypenameFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWihtoutTypename(
      title: json['title'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q$docsWihtoutTypenameToJson(
        Query$Q$docsWihtoutTypename instance) =>
    <String, dynamic>{
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Query$Q$docsWithAliasedTypename _$Query$Q$docsWithAliasedTypenameFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWithAliasedTypename(
      $__typename: json['__typename'] as String?,
    );

Map<String, dynamic> _$Query$Q$docsWithAliasedTypenameToJson(
        Query$Q$docsWithAliasedTypename instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$Q$docsWithFragment _$Query$Q$docsWithFragmentFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWithFragment(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q$docsWithFragmentToJson(
        Query$Q$docsWithFragment instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$Q$docsWithFragment$$Contract _$Query$Q$docsWithFragment$$ContractFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWithFragment$$Contract(
      $__typename: json['__typename'] as String,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Query$Q$docsWithFragment$$ContractToJson(
        Query$Q$docsWithFragment$$Contract instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'title': instance.title,
    };

Query$Q$docsWithFragment$$Report _$Query$Q$docsWithFragment$$ReportFromJson(
        Map<String, dynamic> json) =>
    Query$Q$docsWithFragment$$Report(
      $__typename: json['__typename'] as String,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Query$Q$docsWithFragment$$ReportToJson(
        Query$Q$docsWithFragment$$Report instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'title': instance.title,
    };
