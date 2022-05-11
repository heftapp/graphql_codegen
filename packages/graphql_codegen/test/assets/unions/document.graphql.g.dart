// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$Q _$Query$QFromJson(Map<String, dynamic> json) => Query$Q(
      u: json['u'] == null
          ? null
          : Query$Q$u.fromJson(json['u'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$QToJson(Query$Q instance) => <String, dynamic>{
      'u': instance.u?.toJson(),
    };

Query$Q$u _$Query$Q$uFromJson(Map<String, dynamic> json) => Query$Q$u(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Q$uToJson(Query$Q$u instance) => <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$Q$u$$TA _$Query$Q$u$$TAFromJson(Map<String, dynamic> json) =>
    Query$Q$u$$TA(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Query$Q$u$$TAToJson(Query$Q$u$$TA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

Query$Q$u$$TB _$Query$Q$u$$TBFromJson(Map<String, dynamic> json) =>
    Query$Q$u$$TB(
      $__typename: json['__typename'] as String,
      velocity: json['velocity'] as int?,
    );

Map<String, dynamic> _$Query$Q$u$$TBToJson(Query$Q$u$$TB instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'velocity': instance.velocity,
    };
