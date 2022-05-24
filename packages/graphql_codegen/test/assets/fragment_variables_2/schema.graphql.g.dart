// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Fragment$NameNode _$Variables$Fragment$NameNodeFromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$NameNode(
      setting: json['setting'] as String,
    );

Map<String, dynamic> _$Variables$Fragment$NameNodeToJson(
        Variables$Fragment$NameNode instance) =>
    <String, dynamic>{
      'setting': instance.setting,
    };

Fragment$NameNode _$Fragment$NameNodeFromJson(Map<String, dynamic> json) =>
    Fragment$NameNode(
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$NameNodeToJson(Fragment$NameNode instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$Q _$Variables$Query$QFromJson(Map<String, dynamic> json) =>
    Variables$Query$Q(
      setting: json['setting'] as String,
    );

Map<String, dynamic> _$Variables$Query$QToJson(Variables$Query$Q instance) =>
    <String, dynamic>{
      'setting': instance.setting,
    };

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      node: json['node'] == null
          ? null
          : Query$Q$node.fromJson(json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$Q$node _$Query$Q$nodeFromJson(Map<String, dynamic> json) => Query$Q$node(
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q$nodeToJson(Query$Q$node instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
