// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragments.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Condition _$Fragment$ConditionFromJson(Map<String, dynamic> json) =>
    Fragment$Condition(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$ConditionToJson(Fragment$Condition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$AndCondition _$Fragment$AndConditionFromJson(
        Map<String, dynamic> json) =>
    Fragment$AndCondition(
      left: Fragment$NonCompositeCondition.fromJson(
          json['left'] as Map<String, dynamic>),
      right: Fragment$NonCompositeCondition.fromJson(
          json['right'] as Map<String, dynamic>),
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$AndConditionToJson(
        Fragment$AndCondition instance) =>
    <String, dynamic>{
      'left': instance.left.toJson(),
      'right': instance.right.toJson(),
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$CompositeCondition _$Fragment$CompositeConditionFromJson(
        Map<String, dynamic> json) =>
    Fragment$CompositeCondition(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$CompositeConditionToJson(
        Fragment$CompositeCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$CompositeCondition$$TimeCondition
    _$Fragment$CompositeCondition$$TimeConditionFromJson(
            Map<String, dynamic> json) =>
        Fragment$CompositeCondition$$TimeCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          before: json['before'] as String,
        );

Map<String, dynamic> _$Fragment$CompositeCondition$$TimeConditionToJson(
        Fragment$CompositeCondition$$TimeCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'before': instance.before,
    };

Fragment$CompositeCondition$$AndCondition
    _$Fragment$CompositeCondition$$AndConditionFromJson(
            Map<String, dynamic> json) =>
        Fragment$CompositeCondition$$AndCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          left: Fragment$NonCompositeCondition.fromJson(
              json['left'] as Map<String, dynamic>),
          right: Fragment$NonCompositeCondition.fromJson(
              json['right'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Fragment$CompositeCondition$$AndConditionToJson(
        Fragment$CompositeCondition$$AndCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'left': instance.left.toJson(),
      'right': instance.right.toJson(),
    };

Fragment$NonCompositeCondition _$Fragment$NonCompositeConditionFromJson(
        Map<String, dynamic> json) =>
    Fragment$NonCompositeCondition(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$NonCompositeConditionToJson(
        Fragment$NonCompositeCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$NonCompositeCondition$$TimeCondition
    _$Fragment$NonCompositeCondition$$TimeConditionFromJson(
            Map<String, dynamic> json) =>
        Fragment$NonCompositeCondition$$TimeCondition(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
          before: json['before'] as String,
        );

Map<String, dynamic> _$Fragment$NonCompositeCondition$$TimeConditionToJson(
        Fragment$NonCompositeCondition$$TimeCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'before': instance.before,
    };

Fragment$TimeCondition _$Fragment$TimeConditionFromJson(
        Map<String, dynamic> json) =>
    Fragment$TimeCondition(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
      before: json['before'] as String,
    );

Map<String, dynamic> _$Fragment$TimeConditionToJson(
        Fragment$TimeCondition instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
      'before': instance.before,
    };
