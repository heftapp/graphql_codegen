import 'package:json_annotation/json_annotation.dart';
part 'config.g.dart';

enum GraphQLCodegenConfigClient {
  @JsonValue('graphql')
  graphql,
  @JsonValue('graphql_flutter')
  graphqlFlutter
}

@JsonSerializable()
class GraphQLCodegenConfigScalar extends JsonSerializable {
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

  @override
  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigScalarToJson(this);
}

@JsonSerializable()
class GraphQLCodegenConfig extends JsonSerializable {
  @JsonKey(defaultValue: const <GraphQLCodegenConfigClient>{})
  final Set<GraphQLCodegenConfigClient> clients;
  @JsonKey(defaultValue: const <String, GraphQLCodegenConfig>{})
  final Map<String, GraphQLCodegenConfigScalar> scalars;
  @JsonKey(defaultValue: true)
  final bool addTypename;
  @JsonKey(defaultValue: "lib/**.graphql")
  final String assetsPath;

  @JsonKey(defaultValue: const ["**.graphql"])
  final List<String> scopes;

  @JsonKey(defaultValue: const [])
  final List<String> addTypenameExcludedPaths;

  @JsonKey(defaultValue: "")
  final String generatedFileHeader;

  @JsonKey(defaultValue: true)
  final bool includeIfNullOnInput;

  @JsonKey(defaultValue: r"$")
  final String namingSeparator;

  GraphQLCodegenConfig({
    this.clients = const {},
    this.scalars = const {},
    this.addTypename = true,
    this.assetsPath = "lib/**.graphql",
    this.scopes = const ["**.graphql"],
    this.addTypenameExcludedPaths = const [],
    this.generatedFileHeader = "",
    this.includeIfNullOnInput = true,
    this.namingSeparator = r"$",
  });

  @override
  factory GraphQLCodegenConfig.fromJson(Map<String, dynamic> json) =>
      _$GraphQLCodegenConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraphQLCodegenConfigToJson(this);
}
