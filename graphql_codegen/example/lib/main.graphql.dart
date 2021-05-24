import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'main.graphql.g.dart';

@JsonSerializable()
class VariablesQueryFetchPerson extends JsonSerializable {
  VariablesQueryFetchPerson({required this.id});

  @override
  factory VariablesQueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchPersonFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchPersonToJson(this);
}

@JsonSerializable()
class QueryFetchPerson extends JsonSerializable {
  QueryFetchPerson({this.fetchPerson});

  @override
  factory QueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPersonFromJson(json);

  @JsonKey(name: 'fetch_person')
  final QueryFetchPerson$fetchPerson? fetchPerson;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPersonToJson(this);
}

const QUERY_FETCH_PERSON = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fetch_person'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PersonSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: 'parents'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'PersonSummary'), directives: [])
                  ])),
              FieldNode(
                  name: NameNode(value: 'children'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'PersonSummary'), directives: [])
                  ]))
            ]))
      ])),
  FRAGMENT_PERSON_SUMMARY,
]);

@JsonSerializable()
class QueryFetchPerson$fetchPerson extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson(
      {this.nickname, required this.name, this.parents, this.children});

  @override
  factory QueryFetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPersonFromJson(json);

  final String? nickname;

  final String name;

  final List<QueryFetchPerson$fetchPerson$parents>? parents;

  final List<QueryFetchPerson$fetchPerson$children>? children;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPerson$fetchPersonToJson(this);
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$parents extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$parents({this.nickname, required this.name});

  @override
  factory QueryFetchPerson$fetchPerson$parents.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$parentsFromJson(json);

  final String? nickname;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$parentsToJson(this);
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$children extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$children({this.nickname, required this.name});

  @override
  factory QueryFetchPerson$fetchPerson$children.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$childrenFromJson(json);

  final String? nickname;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$childrenToJson(this);
}
