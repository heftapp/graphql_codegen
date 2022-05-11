// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$FragmentA _$Fragment$FragmentAFromJson(Map<String, dynamic> json) =>
    Fragment$FragmentA(
      s: json['s'] as String?,
      $_s: json['_s'] as String?,
    );

Map<String, dynamic> _$Fragment$FragmentAToJson(Fragment$FragmentA instance) =>
    <String, dynamic>{
      's': instance.s,
      '_s': instance.$_s,
    };

Fragment$FragmentB _$Fragment$FragmentBFromJson(Map<String, dynamic> json) =>
    Fragment$FragmentB(
      i: json['i'] as int?,
    );

Map<String, dynamic> _$Fragment$FragmentBToJson(Fragment$FragmentB instance) =>
    <String, dynamic>{
      'i': instance.i,
    };

Query$FetchImplementations _$Query$FetchImplementationsFromJson(
        Map<String, dynamic> json) =>
    Query$FetchImplementations(
      $interface: json['interface'] == null
          ? null
          : Query$FetchImplementations$interface.fromJson(
              json['interface'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$FetchImplementationsToJson(
        Query$FetchImplementations instance) =>
    <String, dynamic>{
      'interface': instance.$interface?.toJson(),
    };

Query$FetchImplementations$interface
    _$Query$FetchImplementations$interfaceFromJson(Map<String, dynamic> json) =>
        Query$FetchImplementations$interface(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: Query$FetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$FetchImplementations$interfaceToJson(
        Query$FetchImplementations$interface instance) =>
    <String, dynamic>{
      'typename': instance.typename,
      'b': instance.b,
      'self': instance.self.toJson(),
    };

Query$FetchImplementations$interface$self
    _$Query$FetchImplementations$interface$selfFromJson(
            Map<String, dynamic> json) =>
        Query$FetchImplementations$interface$self(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$FetchImplementations$interface$selfToJson(
        Query$FetchImplementations$interface$self instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$FetchImplementations$interface$self$$ImplementationA
    _$Query$FetchImplementations$interface$self$$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        Query$FetchImplementations$interface$self$$ImplementationA(
          $__typename: json['__typename'] as String,
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
        );

Map<String,
    dynamic> _$Query$FetchImplementations$interface$self$$ImplementationAToJson(
        Query$FetchImplementations$interface$self$$ImplementationA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      's': instance.s,
      '_s': instance.$_s,
    };

Query$FetchImplementations$interface$self$$ImplementationB
    _$Query$FetchImplementations$interface$self$$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        Query$FetchImplementations$interface$self$$ImplementationB(
          $__typename: json['__typename'] as String,
          i: json['i'] as int?,
        );

Map<String,
    dynamic> _$Query$FetchImplementations$interface$self$$ImplementationBToJson(
        Query$FetchImplementations$interface$self$$ImplementationB instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'i': instance.i,
    };

Query$FetchImplementations$interface$$ImplementationA
    _$Query$FetchImplementations$interface$$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        Query$FetchImplementations$interface$$ImplementationA(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: Query$FetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
        );

Map<String, dynamic>
    _$Query$FetchImplementations$interface$$ImplementationAToJson(
            Query$FetchImplementations$interface$$ImplementationA instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self.toJson(),
          's': instance.s,
          '_s': instance.$_s,
        };

Query$FetchImplementations$interface$$ImplementationB
    _$Query$FetchImplementations$interface$$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        Query$FetchImplementations$interface$$ImplementationB(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: Query$FetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
          i: json['i'] as int?,
        );

Map<String, dynamic>
    _$Query$FetchImplementations$interface$$ImplementationBToJson(
            Query$FetchImplementations$interface$$ImplementationB instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self.toJson(),
          'i': instance.i,
        };
