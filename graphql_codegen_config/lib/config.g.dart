// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphQLCodegenConfigScalar _$GraphQLCodegenConfigScalarFromJson(
    Map<String, dynamic> json) {
  return GraphQLCodegenConfigScalar(
    type: json['type'] as String,
    import: json['import'] as String?,
    fromJsonFunctionName: json['fromJsonFunctionName'] as String?,
    toJsonFunctionName: json['toJsonFunctionName'] as String?,
  );
}

Map<String, dynamic> _$GraphQLCodegenConfigScalarToJson(
        GraphQLCodegenConfigScalar instance) =>
    <String, dynamic>{
      'type': instance.type,
      'import': instance.import,
      'fromJsonFunctionName': instance.fromJsonFunctionName,
      'toJsonFunctionName': instance.toJsonFunctionName,
    };

GraphQLCodegenConfig _$GraphQLCodegenConfigFromJson(Map<String, dynamic> json) {
  return GraphQLCodegenConfig(
    (json['clients'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$GraphQLCodegenConfigClientEnumMap, e))
            .toSet() ??
        {},
    (json['scalars'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k,
              GraphQLCodegenConfigScalar.fromJson(e as Map<String, dynamic>)),
        ) ??
        {},
  );
}

Map<String, dynamic> _$GraphQLCodegenConfigToJson(
        GraphQLCodegenConfig instance) =>
    <String, dynamic>{
      'clients': instance.clients
          .map((e) => _$GraphQLCodegenConfigClientEnumMap[e])
          .toList(),
      'scalars': instance.scalars,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$GraphQLCodegenConfigClientEnumMap = {
  GraphQLCodegenConfigClient.graphql: 'graphql',
  GraphQLCodegenConfigClient.graphqlFlutter: 'graphql_flutter',
};
