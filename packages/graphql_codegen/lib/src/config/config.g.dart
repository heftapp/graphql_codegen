// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphQLCodegenConfigScalar _$GraphQLCodegenConfigScalarFromJson(
        Map<String, dynamic> json) =>
    GraphQLCodegenConfigScalar(
      type: json['type'] as String,
      import: json['import'] as String?,
      fromJsonFunctionName: json['fromJsonFunctionName'] as String?,
      toJsonFunctionName: json['toJsonFunctionName'] as String?,
    );

Map<String, dynamic> _$GraphQLCodegenConfigScalarToJson(
        GraphQLCodegenConfigScalar instance) =>
    <String, dynamic>{
      'type': instance.type,
      'import': instance.import,
      'fromJsonFunctionName': instance.fromJsonFunctionName,
      'toJsonFunctionName': instance.toJsonFunctionName,
    };

GraphQLCodegenConfigEnum _$GraphQLCodegenConfigEnumFromJson(
        Map<String, dynamic> json) =>
    GraphQLCodegenConfigEnum(
      type: json['type'] as String?,
      import: json['import'] as String?,
      fromJsonFunctionName: json['fromJsonFunctionName'] as String?,
      toJsonFunctionName: json['toJsonFunctionName'] as String?,
      fallbackEnumValue: json['fallbackEnumValue'] as String?,
    );

Map<String, dynamic> _$GraphQLCodegenConfigEnumToJson(
        GraphQLCodegenConfigEnum instance) =>
    <String, dynamic>{
      'type': instance.type,
      'import': instance.import,
      'fromJsonFunctionName': instance.fromJsonFunctionName,
      'toJsonFunctionName': instance.toJsonFunctionName,
      'fallbackEnumValue': instance.fallbackEnumValue,
    };

GraphQLCodegenConfig _$GraphQLCodegenConfigFromJson(
        Map<String, dynamic> json) =>
    GraphQLCodegenConfig(
      clients: (json['clients'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GraphQLCodegenConfigClientEnumMap, e))
              .toSet() ??
          const {},
      disableContextReplacement:
          json['disableContextReplacement'] as bool? ?? false,
      scalars: (json['scalars'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                GraphQLCodegenConfigScalar.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      enums: (json['enums'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                GraphQLCodegenConfigEnum.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      addTypename: json['addTypename'] as bool? ?? true,
      assetsPath:
          json['assetsPath'] as String? ?? "lib/**{.graphql,.gql,.graphqls}",
      scopes: (json['scopes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["**{.graphql,.gql,.graphqls}"],
      addTypenameExcludedPaths:
          (json['addTypenameExcludedPaths'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      generatedFileHeader: json['generatedFileHeader'] as String? ?? "",
      namingSeparator: json['namingSeparator'] as String? ?? r"$",
      extraKeywords: (json['extraKeywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      outputDirectory: json['outputDirectory'] as String? ?? '.',
      disableCopyWithGeneration:
          json['disableCopyWithGeneration'] as bool? ?? false,
    );

Map<String, dynamic> _$GraphQLCodegenConfigToJson(
        GraphQLCodegenConfig instance) =>
    <String, dynamic>{
      'clients': instance.clients
          .map((e) => _$GraphQLCodegenConfigClientEnumMap[e]!)
          .toList(),
      'scalars': instance.scalars,
      'enums': instance.enums,
      'addTypename': instance.addTypename,
      'assetsPath': instance.assetsPath,
      'scopes': instance.scopes,
      'addTypenameExcludedPaths': instance.addTypenameExcludedPaths,
      'generatedFileHeader': instance.generatedFileHeader,
      'namingSeparator': instance.namingSeparator,
      'extraKeywords': instance.extraKeywords,
      'outputDirectory': instance.outputDirectory,
      'disableContextReplacement': instance.disableContextReplacement,
      'disableCopyWithGeneration': instance.disableCopyWithGeneration,
    };

const _$GraphQLCodegenConfigClientEnumMap = {
  GraphQLCodegenConfigClient.graphql: 'graphql',
  GraphQLCodegenConfigClient.graphqlFlutter: 'graphql_flutter',
};
