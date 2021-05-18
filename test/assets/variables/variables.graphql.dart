import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'variables.graphql.g.dart';

@JsonSerializable()
class VariablesQueryHiBob extends JsonSerializable {
  VariablesQueryHiBob(this.i);

  @override
  factory VariablesQueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryHiBobFromJson(json);

  final InputI1 i;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryHiBobToJson(this);
}

@JsonSerializable()
class QueryHiBob extends JsonSerializable {
  QueryHiBob(this.field);

  @override
  factory QueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBobFromJson(json);

  final QueryHiBob$ffield? field;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBobToJson(this);
}

@JsonSerializable()
class QueryHiBob$ffield extends JsonSerializable {
  QueryHiBob$ffield(this.value);

  @override
  factory QueryHiBob$ffield.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBob$ffieldFromJson(json);

  final String value;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBob$ffieldToJson(this);
}
