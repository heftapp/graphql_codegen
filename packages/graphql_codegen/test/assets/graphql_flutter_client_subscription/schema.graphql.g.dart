// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription$NoArgs _$Subscription$NoArgsFromJson(Map<String, dynamic> json) =>
    Subscription$NoArgs(
      listenForChange: json['listenForChange'] == null
          ? null
          : Subscription$NoArgs$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Subscription$NoArgsToJson(
        Subscription$NoArgs instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

Subscription$NoArgs$listenForChange
    _$Subscription$NoArgs$listenForChangeFromJson(Map<String, dynamic> json) =>
        Subscription$NoArgs$listenForChange(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Subscription$NoArgs$listenForChangeToJson(
        Subscription$NoArgs$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Subscription$RequiredArg _$Variables$Subscription$RequiredArgFromJson(
        Map<String, dynamic> json) =>
    Variables$Subscription$RequiredArg(
      name: json['name'] as String,
    );

Map<String, dynamic> _$Variables$Subscription$RequiredArgToJson(
        Variables$Subscription$RequiredArg instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

Subscription$RequiredArg _$Subscription$RequiredArgFromJson(
        Map<String, dynamic> json) =>
    Subscription$RequiredArg(
      listenForChange: json['listenForChange'] == null
          ? null
          : Subscription$RequiredArg$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Subscription$RequiredArgToJson(
        Subscription$RequiredArg instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

Subscription$RequiredArg$listenForChange
    _$Subscription$RequiredArg$listenForChangeFromJson(
            Map<String, dynamic> json) =>
        Subscription$RequiredArg$listenForChange(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Subscription$RequiredArg$listenForChangeToJson(
        Subscription$RequiredArg$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Subscription$OptionalArg _$Variables$Subscription$OptionalArgFromJson(
        Map<String, dynamic> json) =>
    Variables$Subscription$OptionalArg(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$Variables$Subscription$OptionalArgToJson(
        Variables$Subscription$OptionalArg instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

Subscription$OptionalArg _$Subscription$OptionalArgFromJson(
        Map<String, dynamic> json) =>
    Subscription$OptionalArg(
      listenForChange: json['listenForChange'] == null
          ? null
          : Subscription$OptionalArg$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Subscription$OptionalArgToJson(
        Subscription$OptionalArg instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

Subscription$OptionalArg$listenForChange
    _$Subscription$OptionalArg$listenForChangeFromJson(
            Map<String, dynamic> json) =>
        Subscription$OptionalArg$listenForChange(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Subscription$OptionalArg$listenForChangeToJson(
        Subscription$OptionalArg$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
