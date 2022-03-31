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
      '__typename': instance.$__typename,
    };
