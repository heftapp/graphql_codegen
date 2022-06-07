// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$FetchShouldRender _$Query$FetchShouldRenderFromJson(
        Map<String, dynamic> json) =>
    Query$FetchShouldRender(
      shouldRender: Query$FetchShouldRender$shouldRender.fromJson(
          json['shouldRender'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchShouldRenderToJson(
        Query$FetchShouldRender instance) =>
    <String, dynamic>{
      'shouldRender': instance.shouldRender.toJson(),
      '__typename': instance.$__typename,
    };

Query$FetchShouldRender$shouldRender
    _$Query$FetchShouldRender$shouldRenderFromJson(Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$FetchShouldRender$shouldRenderToJson(
        Query$FetchShouldRender$shouldRender instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$FetchShouldRender$shouldRender$$TimeCondition
    _$Query$FetchShouldRender$shouldRender$$TimeConditionFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$TimeCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          before: json['before'] as String,
        );

Map<String, dynamic>
    _$Query$FetchShouldRender$shouldRender$$TimeConditionToJson(
            Query$FetchShouldRender$shouldRender$$TimeCondition instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$__typename,
          'before': instance.before,
        };

Query$FetchShouldRender$shouldRender$$AndCondition
    _$Query$FetchShouldRender$shouldRender$$AndConditionFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$AndCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          left:
              Query$FetchShouldRender$shouldRender$$AndCondition$left.fromJson(
                  json['left'] as Map<String, dynamic>),
          right:
              Query$FetchShouldRender$shouldRender$$AndCondition$right.fromJson(
                  json['right'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$FetchShouldRender$shouldRender$$AndConditionToJson(
        Query$FetchShouldRender$shouldRender$$AndCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'left': instance.left.toJson(),
      'right': instance.right.toJson(),
    };

Query$FetchShouldRender$shouldRender$$AndCondition$left
    _$Query$FetchShouldRender$shouldRender$$AndCondition$leftFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$AndCondition$left(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$FetchShouldRender$shouldRender$$AndCondition$leftToJson(
            Query$FetchShouldRender$shouldRender$$AndCondition$left instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
    _$Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeConditionFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          before: json['before'] as String,
        );

Map<String, dynamic>
    _$Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeConditionToJson(
            Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$__typename,
          'before': instance.before,
        };

Query$FetchShouldRender$shouldRender$$AndCondition$right
    _$Query$FetchShouldRender$shouldRender$$AndCondition$rightFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$AndCondition$right(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$FetchShouldRender$shouldRender$$AndCondition$rightToJson(
        Query$FetchShouldRender$shouldRender$$AndCondition$right instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
    _$Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeConditionFromJson(
            Map<String, dynamic> json) =>
        Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          before: json['before'] as String,
        );

Map<String, dynamic>
    _$Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeConditionToJson(
            Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$__typename,
          'before': instance.before,
        };
