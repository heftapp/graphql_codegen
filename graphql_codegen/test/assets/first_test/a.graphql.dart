import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'a.graphql.g.dart';

@JsonSerializable()
class QueryFetchName extends JsonSerializable {
  QueryFetchName({this.name});

  @override
  factory QueryFetchName.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchNameFromJson(json);

  final QueryFetchName$name? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchNameToJson(this);
}

const QUERY_FETCH_NAME = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchName'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_F,
]);

@JsonSerializable()
class QueryFetchName$name extends JsonSerializable implements FragmentF {
  QueryFetchName$name({required this.name});

  @override
  factory QueryFetchName$name.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchName$nameFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchName$nameToJson(this);
}
