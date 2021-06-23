// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryFetchPerson _$VariablesQueryFetchPersonFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryFetchPerson(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$VariablesQueryFetchPersonToJson(
        VariablesQueryFetchPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryFetchPerson _$QueryFetchPersonFromJson(Map<String, dynamic> json) {
  return QueryFetchPerson(
    fetchPerson: json['fetch_person'] == null
        ? null
        : QueryFetchPerson$fetchPerson.fromJson(
            json['fetch_person'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryFetchPersonToJson(QueryFetchPerson instance) =>
    <String, dynamic>{
      'fetch_person': instance.fetchPerson,
    };

QueryFetchPerson$fetchPerson _$QueryFetchPerson$fetchPersonFromJson(
    Map<String, dynamic> json) {
  return QueryFetchPerson$fetchPerson(
    nickname: json['nickname'] as String?,
    name: json['name'] as String,
    parents: (json['parents'] as List<dynamic>?)
        ?.map((e) => QueryFetchPerson$fetchPerson$parents.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    children: (json['children'] as List<dynamic>?)
        ?.map((e) => QueryFetchPerson$fetchPerson$children.fromJson(
            e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryFetchPerson$fetchPersonToJson(
        QueryFetchPerson$fetchPerson instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'parents': instance.parents,
      'children': instance.children,
    };

QueryFetchPerson$fetchPerson$parents
    _$QueryFetchPerson$fetchPerson$parentsFromJson(Map<String, dynamic> json) {
  return QueryFetchPerson$fetchPerson$parents(
    nickname: json['nickname'] as String?,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$parentsToJson(
        QueryFetchPerson$fetchPerson$parents instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
    };

QueryFetchPerson$fetchPerson$children
    _$QueryFetchPerson$fetchPerson$childrenFromJson(Map<String, dynamic> json) {
  return QueryFetchPerson$fetchPerson$children(
    nickname: json['nickname'] as String?,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$QueryFetchPerson$fetchPerson$childrenToJson(
        QueryFetchPerson$fetchPerson$children instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
    };

VariablesMutationUpdatePerson _$VariablesMutationUpdatePersonFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationUpdatePerson(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$VariablesMutationUpdatePersonToJson(
        VariablesMutationUpdatePerson instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

MutationUpdatePerson _$MutationUpdatePersonFromJson(Map<String, dynamic> json) {
  return MutationUpdatePerson(
    updatePerson: json['update_person'] == null
        ? null
        : MutationUpdatePerson$updatePerson.fromJson(
            json['update_person'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationUpdatePersonToJson(
        MutationUpdatePerson instance) =>
    <String, dynamic>{
      'update_person': instance.updatePerson,
    };

MutationUpdatePerson$updatePerson _$MutationUpdatePerson$updatePersonFromJson(
    Map<String, dynamic> json) {
  return MutationUpdatePerson$updatePerson(
    fullName: json['full_name'] as String,
  );
}

Map<String, dynamic> _$MutationUpdatePerson$updatePersonToJson(
        MutationUpdatePerson$updatePerson instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
    };
