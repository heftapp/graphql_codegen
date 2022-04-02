// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragments.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentPersonSummary _$FragmentPersonSummaryFromJson(
        Map<String, dynamic> json) =>
    FragmentPersonSummary(
      nickname: json['nickname'] as String?,
      name: json['name'] as String,
      dob: _nullable$dateTimeFromJson(json['dob']),
      events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
      eventsOfEvents:
          _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
              json['eventsOfEvents']),
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) =>
              FragmentPersonSummary$parents.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentPersonSummaryToJson(
        FragmentPersonSummary instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'dob': _nullable$dateTimeToJson(instance.dob),
      'events': _nullable$_list$_nullable$dateTimeToJson(instance.events),
      'eventsOfEvents':
          _nullable$_list$_nullable$_list$_nullable$dateTimeToJson(
              instance.eventsOfEvents),
      'parents': instance.parents?.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

FragmentPersonSummary$parents _$FragmentPersonSummary$parentsFromJson(
        Map<String, dynamic> json) =>
    FragmentPersonSummary$parents(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentPersonSummary$parentsToJson(
        FragmentPersonSummary$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

FragmentPersonParent _$FragmentPersonParentFromJson(
        Map<String, dynamic> json) =>
    FragmentPersonParent(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$FragmentPersonParentToJson(
        FragmentPersonParent instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
