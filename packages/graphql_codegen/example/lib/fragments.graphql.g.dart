// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragments.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$PersonSummary _$Fragment$PersonSummaryFromJson(
        Map<String, dynamic> json) =>
    Fragment$PersonSummary(
      nickname: json['nickname'] as String?,
      name: json['name'] as String,
      dob: _nullable$dateTimeFromJson(json['dob']),
      events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
      eventsOfEvents:
          _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
              json['eventsOfEvents']),
      parents: (json['parents'] as List<dynamic>?)
          ?.map(
              (e) => Fragment$PersonParent.fromJson(e as Map<String, dynamic>))
          .toList(),
      favParent: json['favParent'] == null
          ? null
          : Fragment$PersonParent.fromJson(
              json['favParent'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PersonSummaryToJson(
        Fragment$PersonSummary instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'dob': _nullable$dateTimeToJson(instance.dob),
      'events': _nullable$_list$_nullable$dateTimeToJson(instance.events),
      'eventsOfEvents':
          _nullable$_list$_nullable$_list$_nullable$dateTimeToJson(
              instance.eventsOfEvents),
      'parents': instance.parents?.map((e) => e.toJson()).toList(),
      'favParent': instance.favParent?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$PersonParent _$Fragment$PersonParentFromJson(
        Map<String, dynamic> json) =>
    Fragment$PersonParent(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PersonParentToJson(
        Fragment$PersonParent instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
