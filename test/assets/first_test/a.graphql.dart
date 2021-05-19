import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'fragments.graphql.dart';
part 'a.graphql.g.dart';

@JsonSerializable()
class QueryFetchName extends JsonSerializable {
  QueryFetchName({this.name});

  @override
  factory QueryFetchName.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchNameFromJson(json);

  final QueryFetchName$fname? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchNameToJson(this);
}

const DOCUMENT_QUERY_FETCH_NAME = const DocumentNode(definitions: [
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
  FRAGMENT_FRAGMENT_F,
]);

@JsonSerializable()
class QueryFetchName$fname extends JsonSerializable implements FragmentF {
  QueryFetchName$fname({required this.name});

  @override
  factory QueryFetchName$fname.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchName$fnameFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchName$fnameToJson(this);
}
