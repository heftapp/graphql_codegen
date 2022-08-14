import 'package:json_annotation/json_annotation.dart';
part 'config.g.dart';

enum GraphQLCodegenConfigClient {
  @JsonValue('graphql')
  graphql,
  @JsonValue('graphql_flutter')
  graphqlFlutter
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
class GraphQLCodegenConfig {
  final Set<GraphQLCodegenConfigClient> clients;
  final Map<String, GraphQLCodegenConfigScalar> scalars;
  final bool addTypename;
  final String assetsPath;
  final List<String> scopes;
  final List<String> addTypenameExcludedPaths;
  final String generatedFileHeader;
  final String namingSeparator;
  final List<String> extraKeywords;
  final String outputDirectory;

  GraphQLCodegenConfig({
    this.clients = const {},
    this.scalars = const {},
    this.addTypename = true,
    this.assetsPath = "lib/**.graphql",
    this.scopes = const ["**.graphql"],
    this.addTypenameExcludedPaths = const [],
    this.generatedFileHeader = "",
    this.namingSeparator = r"$",
    this.extraKeywords = const [],
    this.outputDirectory = '.',
  });

  @override
  factory GraphQLCodegenConfig.fromJson(Map<String, dynamic> json) =>
      _$GraphQLCodegenConfigFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigToJson(this);
}
