// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchImplementations _$QueryFetchImplementationsFromJson(
        Map<String, dynamic> json) =>
    QueryFetchImplementations(
      $interface: json['interface'] == null
          ? null
          : QueryFetchImplementations$interface.fromJson(
              json['interface'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryFetchImplementationsToJson(
        QueryFetchImplementations instance) =>
    <String, dynamic>{
      'interface': instance.$interface,
    };

QueryFetchImplementations$interface
    _$QueryFetchImplementations$interfaceFromJson(Map<String, dynamic> json) =>
        QueryFetchImplementations$interface(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$QueryFetchImplementations$interfaceToJson(
        QueryFetchImplementations$interface instance) =>
    <String, dynamic>{
      'typename': instance.typename,
      'b': instance.b,
      'self': instance.self,
    };

QueryFetchImplementations$interface$self
    _$QueryFetchImplementations$interface$selfFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryFetchImplementations$interface$selfToJson(
        QueryFetchImplementations$interface$self instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryFetchImplementations$interface$self$ImplementationA
    _$QueryFetchImplementations$interface$self$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self$ImplementationA(
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$QueryFetchImplementations$interface$self$ImplementationAToJson(
        QueryFetchImplementations$interface$self$ImplementationA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      's': instance.s,
      '_s': instance.$_s,
    };

QueryFetchImplementations$interface$self$ImplementationB
    _$QueryFetchImplementations$interface$self$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self$ImplementationB(
          i: json['i'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$QueryFetchImplementations$interface$self$ImplementationBToJson(
        QueryFetchImplementations$interface$self$ImplementationB instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'i': instance.i,
    };

QueryFetchImplementations$interface$ImplementationA
    _$QueryFetchImplementations$interface$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$ImplementationA(
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$QueryFetchImplementations$interface$ImplementationAToJson(
            QueryFetchImplementations$interface$ImplementationA instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self,
          's': instance.s,
          '_s': instance.$_s,
        };

QueryFetchImplementations$interface$ImplementationB
    _$QueryFetchImplementations$interface$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$ImplementationB(
          i: json['i'] as int?,
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$QueryFetchImplementations$interface$ImplementationBToJson(
            QueryFetchImplementations$interface$ImplementationB instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self,
          'i': instance.i,
        };
