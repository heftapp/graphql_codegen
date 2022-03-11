import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'scalar_import.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class QueryFetchScalars extends JsonSerializable {
  QueryFetchScalars(
      {this.i, this.id, this.s, this.c1, this.c2, this.c3, this.c3s});

  @override
  factory QueryFetchScalars.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchScalarsFromJson(json);

  final int? i;

  final int? id;

  final String? s;

  final String? c1;

  final DateTime? c2;

  @JsonKey(fromJson: _nullable$fobbobFromJson, toJson: _nullable$fobbobToJson)
  final Fobbob? c3;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$fobbobFromJson,
      toJson: _nullable$_list$_nullable$fobbobToJson)
  final List<Fobbob?>? c3s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchScalarsToJson(this);
}

const QUERY_FETCH_SCALARS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchScalars'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'i'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'c1'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'c2'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'c3'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'c3s'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
const POSSIBLE_TYPES_MAP = const {};
Fobbob? _nullable$fobbobFromJson(dynamic data) =>
    data == null ? null : fobbobFromJson(data);
dynamic _nullable$fobbobToJson(Fobbob? data) =>
    data == null ? null : fobbobToJson(data);
List<Fobbob?> _list$_nullable$fobbobFromJson(dynamic data) =>
    data is List ? data.map(_nullable$fobbobFromJson).toList() : [];
dynamic _list$_nullable$fobbobToJson(List<Fobbob?> data) =>
    data.map(_nullable$fobbobToJson).toList();
List<Fobbob?>? _nullable$_list$_nullable$fobbobFromJson(dynamic data) =>
    data == null ? null : _list$_nullable$fobbobFromJson(data);
dynamic _nullable$_list$_nullable$fobbobToJson(List<Fobbob?>? data) =>
    data == null ? null : _list$_nullable$fobbobToJson(data);
