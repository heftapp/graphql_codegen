import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'query.graphql.g.dart';

@JsonSerializable()
class QueryFoobar extends JsonSerializable {
  QueryFoobar(this.field, this.fields);

  @override
  factory QueryFoobar.fromJson(Map<String, dynamic> json) =>
      _$QueryFoobarFromJson(json);

  @JsonKey(unknownEnumValue: EnumEnum.$unknown)
  final EnumEnum? field;

  @JsonKey(unknownEnumValue: EnumEnum.$unknown)
  final List<List<EnumEnum>?>? fields;

  @override
  Map<String, dynamic> toJson() => _$QueryFoobarToJson(this);
}
