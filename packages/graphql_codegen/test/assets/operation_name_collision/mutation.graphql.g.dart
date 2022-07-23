// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mutation$Operation _$Mutation$OperationFromJson(Map<String, dynamic> json) =>
    Mutation$Operation(
      setName: json['setName'] == null
          ? null
          : Mutation$Operation$setName.fromJson(
              json['setName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Mutation$OperationToJson(Mutation$Operation instance) =>
    <String, dynamic>{
      'setName': instance.setName?.toJson(),
    };

Mutation$Operation$setName _$Mutation$Operation$setNameFromJson(
        Map<String, dynamic> json) =>
    Mutation$Operation$setName(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Mutation$Operation$setNameToJson(
        Mutation$Operation$setName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
