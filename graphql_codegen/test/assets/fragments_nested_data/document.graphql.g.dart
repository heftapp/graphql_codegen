// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetch _$QueryFetchFromJson(Map<String, dynamic> json) {
  return QueryFetch(
    t: json['t'] == null
        ? null
        : QueryFetch$t.fromJson(json['t'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryFetchToJson(QueryFetch instance) =>
    <String, dynamic>{
      't': instance.t,
    };

QueryFetch$t _$QueryFetch$tFromJson(Map<String, dynamic> json) {
  return QueryFetch$t(
    other: json['other'] == null
        ? null
        : QueryFetch$t$other.fromJson(json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryFetch$tToJson(QueryFetch$t instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

QueryFetch$t$other _$QueryFetch$t$otherFromJson(Map<String, dynamic> json) {
  return QueryFetch$t$other(
    other: json['other'] == null
        ? null
        : QueryFetch$t$other$other.fromJson(
            json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryFetch$t$otherToJson(QueryFetch$t$other instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

QueryFetch$t$other$other _$QueryFetch$t$other$otherFromJson(
    Map<String, dynamic> json) {
  return QueryFetch$t$other$other(
    other: json['other'] == null
        ? null
        : QueryFetch$t$other$other$other.fromJson(
            json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryFetch$t$other$otherToJson(
        QueryFetch$t$other$other instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

QueryFetch$t$other$other$other _$QueryFetch$t$other$other$otherFromJson(
    Map<String, dynamic> json) {
  return QueryFetch$t$other$other$other(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$QueryFetch$t$other$other$otherToJson(
        QueryFetch$t$other$other$other instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
