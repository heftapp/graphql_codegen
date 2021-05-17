import 'package:json_annotation/json_annotation.dart';
import 'fragments.graphql.dart';
part 'a.graphql.g.dart';

@JsonSerializable()
class QueryFetchName extends JsonSerializable {
  QueryFetchName(this.name);

  @override
  factory QueryFetchName.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchNameFromJson(json);

  final QueryFetchName$fname? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchNameToJson(this);
}

@JsonSerializable()
class QueryFetchName$fname extends JsonSerializable implements FragmentF {
  QueryFetchName$fname(this.name);

  @override
  factory QueryFetchName$fname.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchName$fnameFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchName$fnameToJson(this);
}
