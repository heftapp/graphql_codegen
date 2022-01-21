// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryQ _$QueryQFromJson(Map<String, dynamic> json) {
  return QueryQ(
    u: json['u'] == null
        ? null
        : QueryQ$u.fromJson(json['u'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      'u': instance.u,
    };

QueryQ$u _$QueryQ$uFromJson(Map<String, dynamic> json) {
  return QueryQ$u();
}

Map<String, dynamic> _$QueryQ$uToJson(QueryQ$u instance) => <String, dynamic>{};

QueryQ$u$Ta _$QueryQ$u$TaFromJson(Map<String, dynamic> json) {
  return QueryQ$u$Ta(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$QueryQ$u$TaToJson(QueryQ$u$Ta instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryQ$u$Tb _$QueryQ$u$TbFromJson(Map<String, dynamic> json) {
  return QueryQ$u$Tb(
    velocity: json['velocity'] as int?,
  );
}

Map<String, dynamic> _$QueryQ$u$TbToJson(QueryQ$u$Tb instance) =>
    <String, dynamic>{
      'velocity': instance.velocity,
    };
