import 'package:json_annotation/json_annotation.dart';
part 'config.g.dart';

enum GraphQLCodegenConfigClient {
  @JsonValue('graphql')
  graphql,
  @JsonValue('graphql_flutter')
  graphqlFlutter,
}

@JsonSerializable()
class GraphQLCodegenConfigScalar {
  final String type;
  final String? import;
  final String? fromJsonFunctionName;
  final String? toJsonFunctionName;

  const GraphQLCodegenConfigScalar({
    required this.type,
    this.import,
    this.fromJsonFunctionName,
    this.toJsonFunctionName,
  });

  @override
  factory GraphQLCodegenConfigScalar.fromJson(Map<String, dynamic> json) =>
      _$GraphQLCodegenConfigScalarFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigScalarToJson(this);
}

@JsonSerializable()
class GraphQLCodegenConfigEnum {
  final String? type;
  final String? import;
  final String? fromJsonFunctionName;
  final String? toJsonFunctionName;
  final String? fallbackEnumValue;

  const GraphQLCodegenConfigEnum({
    required this.type,
    required this.import,
    required this.fromJsonFunctionName,
    required this.toJsonFunctionName,
    required this.fallbackEnumValue,
  });

  @override
  factory GraphQLCodegenConfigEnum.fromJson(Map<String, dynamic> json) =>
      _$GraphQLCodegenConfigEnumFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigEnumToJson(this);
}

@JsonSerializable()
class GraphQLCodegenConfig {
  final Set<GraphQLCodegenConfigClient> clients;
  final Map<String, GraphQLCodegenConfigScalar> scalars;
  final Map<String, GraphQLCodegenConfigEnum> enums;
  final bool addTypename;
  final String assetsPath;
  final List<String> scopes;
  final List<String> addTypenameExcludedPaths;
  final String generatedFileHeader;
  final String namingSeparator;
  final List<String> extraKeywords;
  final String outputDirectory;
  final bool disableContextReplacement;
  final bool disableCopyWithGeneration;
  final bool allowMissingNullableKeysInFromJson;
  final bool setOperationName;

  @JsonKey(name: 'EXPERIMENTAL_enable_input_builders')
  final bool enableInputBuilders;

  GraphQLCodegenConfig({
    this.clients = const {},
    this.disableContextReplacement = false,
    this.scalars = const {},
    this.enums = const {},
    this.addTypename = true,
    this.assetsPath = "lib/**{.graphql,.gql,.graphqls}",
    this.scopes = const ["**{.graphql,.gql,.graphqls}"],
    this.addTypenameExcludedPaths = const [],
    this.generatedFileHeader = "",
    this.namingSeparator = r"$",
    this.extraKeywords = const [],
    this.outputDirectory = '.',
    this.disableCopyWithGeneration = false,
    this.enableInputBuilders = false,
    this.allowMissingNullableKeysInFromJson = false,
    this.setOperationName = false,
  });

  @override
  factory GraphQLCodegenConfig.fromJson(Map<String, dynamic> json) =>
      _$GraphQLCodegenConfigFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigToJson(this);
}
