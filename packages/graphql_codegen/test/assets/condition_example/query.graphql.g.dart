// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$FetchShouldRender _$Query$FetchShouldRenderFromJson(
        Map<String, dynamic> json) =>
    Query$FetchShouldRender(
      shouldRender: Fragment$CompositeCondition.fromJson(
          json['shouldRender'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchShouldRenderToJson(
        Query$FetchShouldRender instance) =>
    <String, dynamic>{
      'shouldRender': instance.shouldRender.toJson(),
      '__typename': instance.$__typename,
    };
