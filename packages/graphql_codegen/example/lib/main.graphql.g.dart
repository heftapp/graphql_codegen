// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$FetchPerson _$Variables$Query$FetchPersonFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$FetchPerson(
      id: json['id'] as String,
    );

Map<String, dynamic> _$Variables$Query$FetchPersonToJson(
        Variables$Query$FetchPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$FetchPerson _$Query$FetchPersonFromJson(Map<String, dynamic> json) =>
    Query$FetchPerson(
      fetchPerson: json['fetchPerson'] == null
          ? null
          : Query$FetchPerson$fetchPerson.fromJson(
              json['fetchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchPersonToJson(Query$FetchPerson instance) =>
    <String, dynamic>{
      'fetchPerson': instance.fetchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

Query$FetchPerson$fetchPerson _$Query$FetchPerson$fetchPersonFromJson(
        Map<String, dynamic> json) =>
    Query$FetchPerson$fetchPerson(
      nickname: json['nickname'] as String?,
      name: json['name'] as String,
      dob: _nullable$dateTimeFromJson(json['dob']),
      events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
      eventsOfEvents:
          _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
              json['eventsOfEvents']),
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) => Query$FetchPerson$fetchPerson$parents.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Query$FetchPerson$fetchPerson$children.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Query$FetchPerson$fetchPersonToJson(
        Query$FetchPerson$fetchPerson instance) =>
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

Query$FetchPerson$fetchPerson$parents
    _$Query$FetchPerson$fetchPerson$parentsFromJson(
            Map<String, dynamic> json) =>
        Query$FetchPerson$fetchPerson$parents(
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
                  Query$FetchPerson$fetchPerson$parents$parents.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Query$FetchPerson$fetchPerson$parentsToJson(
        Query$FetchPerson$fetchPerson$parents instance) =>
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

Query$FetchPerson$fetchPerson$parents$parents
    _$Query$FetchPerson$fetchPerson$parents$parentsFromJson(
            Map<String, dynamic> json) =>
        Query$FetchPerson$fetchPerson$parents$parents(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$FetchPerson$fetchPerson$parents$parentsToJson(
        Query$FetchPerson$fetchPerson$parents$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$FetchPerson$fetchPerson$children
    _$Query$FetchPerson$fetchPerson$childrenFromJson(
            Map<String, dynamic> json) =>
        Query$FetchPerson$fetchPerson$children(
          nickname: json['nickname'] as String?,
          name: json['name'] as String,
          dob: _nullable$dateTimeFromJson(json['dob']),
          events: _nullable$_list$_nullable$dateTimeFromJson(json['events']),
          eventsOfEvents:
              _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(
                  json['eventsOfEvents']),
          parents: (json['parents'] as List<dynamic>?)
              ?.map((e) =>
                  Query$FetchPerson$fetchPerson$children$parents.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$FetchPerson$fetchPerson$childrenToJson(
        Query$FetchPerson$fetchPerson$children instance) =>
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

Query$FetchPerson$fetchPerson$children$parents
    _$Query$FetchPerson$fetchPerson$children$parentsFromJson(
            Map<String, dynamic> json) =>
        Query$FetchPerson$fetchPerson$children$parents(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$FetchPerson$fetchPerson$children$parentsToJson(
        Query$FetchPerson$fetchPerson$children$parents instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Mutation$UpdatePerson _$Variables$Mutation$UpdatePersonFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$UpdatePerson(
      id: json['id'] as String,
    );

Map<String, dynamic> _$Variables$Mutation$UpdatePersonToJson(
        Variables$Mutation$UpdatePerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Mutation$UpdatePerson _$Mutation$UpdatePersonFromJson(
        Map<String, dynamic> json) =>
    Mutation$UpdatePerson(
      updatePerson: json['updatePerson'] == null
          ? null
          : Mutation$UpdatePerson$updatePerson.fromJson(
              json['updatePerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdatePersonToJson(
        Mutation$UpdatePerson instance) =>
    <String, dynamic>{
      'updatePerson': instance.updatePerson?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$UpdatePerson$updatePerson _$Mutation$UpdatePerson$updatePersonFromJson(
        Map<String, dynamic> json) =>
    Mutation$UpdatePerson$updatePerson(
      full_name: json['full_name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdatePerson$updatePersonToJson(
        Mutation$UpdatePerson$updatePerson instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      '__typename': instance.$__typename,
    };

Variables$Subscription$WatchPerson _$Variables$Subscription$WatchPersonFromJson(
        Map<String, dynamic> json) =>
    Variables$Subscription$WatchPerson(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$Variables$Subscription$WatchPersonToJson(
        Variables$Subscription$WatchPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Subscription$WatchPerson _$Subscription$WatchPersonFromJson(
        Map<String, dynamic> json) =>
    Subscription$WatchPerson(
      watchPerson: json['watchPerson'] == null
          ? null
          : Subscription$WatchPerson$watchPerson.fromJson(
              json['watchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Subscription$WatchPersonToJson(
        Subscription$WatchPerson instance) =>
    <String, dynamic>{
      'watchPerson': instance.watchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

Subscription$WatchPerson$watchPerson
    _$Subscription$WatchPerson$watchPersonFromJson(Map<String, dynamic> json) =>
        Subscription$WatchPerson$watchPerson(
          full_name: json['full_name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Subscription$WatchPerson$watchPersonToJson(
        Subscription$WatchPerson$watchPerson instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      '__typename': instance.$__typename,
    };
