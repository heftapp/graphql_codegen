// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryFetchPerson _$VariablesQueryFetchPersonFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryFetchPerson(
      id: json['id'] as String,
    );

Map<String, dynamic> _$VariablesQueryFetchPersonToJson(
        VariablesQueryFetchPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryFetchPerson _$QueryFetchPersonFromJson(Map<String, dynamic> json) =>
    QueryFetchPerson(
      fetchPerson: json['fetchPerson'] == null
          ? null
          : QueryFetchPerson$fetchPerson.fromJson(
              json['fetchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryFetchPersonToJson(QueryFetchPerson instance) =>
    <String, dynamic>{
      'fetchPerson': instance.fetchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

QueryFetchPerson$fetchPerson _$QueryFetchPerson$fetchPersonFromJson(
        Map<String, dynamic> json) =>
    QueryFetchPerson$fetchPerson(
      nickname: json['nickname'] as String?,
      name: json['name'] as String,
      dob: _nullable$dateTimeFromJson(json['dob']),
      events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
      eventsOfEvents:
          _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
              json['eventsOfEvents']),
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) => QueryFetchPerson$fetchPerson$parents.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => QueryFetchPerson$fetchPerson$children.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueryFetchPerson$fetchPersonToJson(
        QueryFetchPerson$fetchPerson instance) =>
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
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

QueryFetchPerson$fetchPerson$parents
    _$QueryFetchPerson$fetchPerson$parentsFromJson(Map<String, dynamic> json) =>
        QueryFetchPerson$fetchPerson$parents(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          nickname: json['nickname'] as String?,
          dob: _nullable$dateTimeFromJson(json['dob']),
          events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
          eventsOfEvents:
              _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
                  json['eventsOfEvents']),
          parents: (json['parents'] as List<dynamic>?)
              ?.map((e) =>
                  QueryFetchPerson$fetchPerson$parents$parents.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$parentsToJson(
        QueryFetchPerson$fetchPerson$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'nickname': instance.nickname,
      'dob': _nullable$dateTimeToJson(instance.dob),
      'events': _nullable$_list$_nullable$dateTimeToJson(instance.events),
      'eventsOfEvents':
          _nullable$_list$_nullable$_list$_nullable$dateTimeToJson(
              instance.eventsOfEvents),
      'parents': instance.parents?.map((e) => e.toJson()).toList(),
    };

QueryFetchPerson$fetchPerson$parents$parents
    _$QueryFetchPerson$fetchPerson$parents$parentsFromJson(
            Map<String, dynamic> json) =>
        QueryFetchPerson$fetchPerson$parents$parents(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$parents$parentsToJson(
        QueryFetchPerson$fetchPerson$parents$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryFetchPerson$fetchPerson$children
    _$QueryFetchPerson$fetchPerson$childrenFromJson(
            Map<String, dynamic> json) =>
        QueryFetchPerson$fetchPerson$children(
          nickname: json['nickname'] as String?,
          name: json['name'] as String,
          dob: _nullable$dateTimeFromJson(json['dob']),
          events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
          eventsOfEvents:
              _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
                  json['eventsOfEvents']),
          parents: (json['parents'] as List<dynamic>?)
              ?.map((e) =>
                  QueryFetchPerson$fetchPerson$children$parents.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$childrenToJson(
        QueryFetchPerson$fetchPerson$children instance) =>
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

QueryFetchPerson$fetchPerson$children$parents
    _$QueryFetchPerson$fetchPerson$children$parentsFromJson(
            Map<String, dynamic> json) =>
        QueryFetchPerson$fetchPerson$children$parents(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$children$parentsToJson(
        QueryFetchPerson$fetchPerson$children$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

VariablesMutationUpdatePerson _$VariablesMutationUpdatePersonFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationUpdatePerson(
      id: json['id'] as String,
    );

Map<String, dynamic> _$VariablesMutationUpdatePersonToJson(
        VariablesMutationUpdatePerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

MutationUpdatePerson _$MutationUpdatePersonFromJson(
        Map<String, dynamic> json) =>
    MutationUpdatePerson(
      updatePerson: json['updatePerson'] == null
          ? null
          : MutationUpdatePerson$updatePerson.fromJson(
              json['updatePerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdatePersonToJson(
        MutationUpdatePerson instance) =>
    <String, dynamic>{
      'updatePerson': instance.updatePerson?.toJson(),
      '__typename': instance.$__typename,
    };

MutationUpdatePerson$updatePerson _$MutationUpdatePerson$updatePersonFromJson(
        Map<String, dynamic> json) =>
    MutationUpdatePerson$updatePerson(
      full_name: json['full_name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdatePerson$updatePersonToJson(
        MutationUpdatePerson$updatePerson instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      '__typename': instance.$__typename,
    };

VariablesSubscriptionWatchPerson _$VariablesSubscriptionWatchPersonFromJson(
        Map<String, dynamic> json) =>
    VariablesSubscriptionWatchPerson(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$VariablesSubscriptionWatchPersonToJson(
        VariablesSubscriptionWatchPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SubscriptionWatchPerson _$SubscriptionWatchPersonFromJson(
        Map<String, dynamic> json) =>
    SubscriptionWatchPerson(
      watchPerson: json['watchPerson'] == null
          ? null
          : SubscriptionWatchPerson$watchPerson.fromJson(
              json['watchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$SubscriptionWatchPersonToJson(
        SubscriptionWatchPerson instance) =>
    <String, dynamic>{
      'watchPerson': instance.watchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

SubscriptionWatchPerson$watchPerson
    _$SubscriptionWatchPerson$watchPersonFromJson(Map<String, dynamic> json) =>
        SubscriptionWatchPerson$watchPerson(
          full_name: json['full_name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$SubscriptionWatchPerson$watchPersonToJson(
        SubscriptionWatchPerson$watchPerson instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      '__typename': instance.$__typename,
    };
