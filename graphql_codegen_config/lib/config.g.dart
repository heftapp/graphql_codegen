// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildConfigScalar _$BuildConfigScalarFromJson(Map<String, dynamic> json) {
  return BuildConfigScalar(
    json['type'] as String,
    json['import'] as String?,
    json['fromJsonFunctionName'] as String?,
    json['toJsonFunctionName'] as String?,
  );
}

Map<String, dynamic> _$BuildConfigScalarToJson(BuildConfigScalar instance) =>
    <String, dynamic>{
      'type': instance.type,
      'import': instance.import,
      'fromJsonFunctionName': instance.fromJsonFunctionName,
      'toJsonFunctionName': instance.toJsonFunctionName,
    };

BuildConfig _$BuildConfigFromJson(Map<String, dynamic> json) {
  return BuildConfig(
    (json['clients'] as List<dynamic>)
        .map((e) => _$enumDecode(_$BuildConfigClientEnumMap, e))
        .toSet(),
    (json['scalars'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, BuildConfigScalar.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$BuildConfigToJson(BuildConfig instance) =>
    <String, dynamic>{
      'clients':
          instance.clients.map((e) => _$BuildConfigClientEnumMap[e]).toList(),
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

const _$BuildConfigClientEnumMap = {
  BuildConfigClient.graphql: 'graphql',
  BuildConfigClient.graphqlFlutter: 'graphql_flutter',
};
