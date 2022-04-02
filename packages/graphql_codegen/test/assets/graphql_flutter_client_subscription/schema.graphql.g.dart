// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionNoArgs _$SubscriptionNoArgsFromJson(Map<String, dynamic> json) =>
    SubscriptionNoArgs(
      listenForChange: json['listenForChange'] == null
          ? null
          : SubscriptionNoArgs$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$SubscriptionNoArgsToJson(SubscriptionNoArgs instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

SubscriptionNoArgs$listenForChange _$SubscriptionNoArgs$listenForChangeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionNoArgs$listenForChange(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$SubscriptionNoArgs$listenForChangeToJson(
        SubscriptionNoArgs$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

VariablesSubscriptionRequiredArg _$VariablesSubscriptionRequiredArgFromJson(
        Map<String, dynamic> json) =>
    VariablesSubscriptionRequiredArg(
      name: json['name'] as String,
    );

Map<String, dynamic> _$VariablesSubscriptionRequiredArgToJson(
        VariablesSubscriptionRequiredArg instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

SubscriptionRequiredArg _$SubscriptionRequiredArgFromJson(
        Map<String, dynamic> json) =>
    SubscriptionRequiredArg(
      listenForChange: json['listenForChange'] == null
          ? null
          : SubscriptionRequiredArg$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$SubscriptionRequiredArgToJson(
        SubscriptionRequiredArg instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

SubscriptionRequiredArg$listenForChange
    _$SubscriptionRequiredArg$listenForChangeFromJson(
            Map<String, dynamic> json) =>
        SubscriptionRequiredArg$listenForChange(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$SubscriptionRequiredArg$listenForChangeToJson(
        SubscriptionRequiredArg$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

VariablesSubscriptionOptionalArg _$VariablesSubscriptionOptionalArgFromJson(
        Map<String, dynamic> json) =>
    VariablesSubscriptionOptionalArg(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VariablesSubscriptionOptionalArgToJson(
        VariablesSubscriptionOptionalArg instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

SubscriptionOptionalArg _$SubscriptionOptionalArgFromJson(
        Map<String, dynamic> json) =>
    SubscriptionOptionalArg(
      listenForChange: json['listenForChange'] == null
          ? null
          : SubscriptionOptionalArg$listenForChange.fromJson(
              json['listenForChange'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$SubscriptionOptionalArgToJson(
        SubscriptionOptionalArg instance) =>
    <String, dynamic>{
      'listenForChange': instance.listenForChange?.toJson(),
      '__typename': instance.$__typename,
    };

SubscriptionOptionalArg$listenForChange
    _$SubscriptionOptionalArg$listenForChangeFromJson(
            Map<String, dynamic> json) =>
        SubscriptionOptionalArg$listenForChange(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$SubscriptionOptionalArg$listenForChangeToJson(
        SubscriptionOptionalArg$listenForChange instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
