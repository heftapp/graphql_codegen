// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$Foobar _$Query$FoobarFromJson(Map<String, dynamic> json) => Query$Foobar(
      ts: (json['ts'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Foobar$ts.fromJson(e as Map<String, dynamic>))
          .toList(),
      tss: (json['tss'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$Foobar$tss.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FoobarToJson(Query$Foobar instance) =>
    <String, dynamic>{
      'ts': instance.ts?.map((e) => e?.toJson()).toList(),
      'tss': instance.tss
          ?.map((e) => e?.map((e) => e?.toJson()).toList())
          .toList(),
      '__typename': instance.$__typename,
    };

Query$Foobar$ts _$Query$Foobar$tsFromJson(Map<String, dynamic> json) =>
    Query$Foobar$ts(
      t: json['t'] == null
          ? null
          : Query$Foobar$ts$t.fromJson(json['t'] as Map<String, dynamic>),
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Foobar$tsToJson(Query$Foobar$ts instance) =>
    <String, dynamic>{
      't': instance.t?.toJson(),
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$Foobar$ts$t _$Query$Foobar$ts$tFromJson(Map<String, dynamic> json) =>
    Query$Foobar$ts$t(
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Foobar$ts$tToJson(Query$Foobar$ts$t instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$Foobar$tss _$Query$Foobar$tssFromJson(Map<String, dynamic> json) =>
    Query$Foobar$tss(
      nameEnforced: json['nameEnforced'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Foobar$tssToJson(Query$Foobar$tss instance) =>
    <String, dynamic>{
      'nameEnforced': instance.nameEnforced,
      '__typename': instance.$__typename,
    };
