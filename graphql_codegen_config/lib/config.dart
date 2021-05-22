import 'package:json_annotation/json_annotation.dart';
part 'config.g.dart';

enum BuildConfigClient {
  @JsonValue('graphql')
  graphql,
  @JsonValue('graphql_flutter')
  graphqlFlutter
}

@JsonSerializable()
class BuildConfigScalar extends JsonSerializable {
  final String type;
  final String? import;
  final String? fromJsonFunctionName;
  final String? toJsonFunctionName;

  BuildConfigScalar(
    this.type,
    this.import,
    this.fromJsonFunctionName,
    this.toJsonFunctionName,
  );

  @override
  factory BuildConfigScalar.fromJson(Map<String, dynamic> json) =>
      _$BuildConfigScalarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BuildConfigScalarToJson(this);
}

@JsonSerializable()
class BuildConfig extends JsonSerializable {
  final Set<BuildConfigClient> clients;
  final Map<String, BuildConfigScalar> scalars;

  BuildConfig(this.clients, this.scalars);

  @override
  factory BuildConfig.fromJson(Map<String, dynamic> json) =>
      _$BuildConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BuildConfigToJson(this);
}
