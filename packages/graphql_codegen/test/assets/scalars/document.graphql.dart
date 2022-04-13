import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'scalar_import.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryFetchScalars {
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

  Map<String, dynamic> toJson() => _$QueryFetchScalarsToJson(this);
  int get hashCode {
    final l$i = i;
    final l$id = id;
    final l$s = s;
    final l$c1 = c1;
    final l$c2 = c2;
    final l$c3 = c3;
    final l$c3s = c3s;
    return Object.hashAll([
      l$i,
      l$id,
      l$s,
      l$c1,
      l$c2,
      l$c3,
      l$c3s == null ? null : Object.hashAll(l$c3s.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchScalars) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$c1 = c1;
    final lOther$c1 = other.c1;
    if (l$c1 != lOther$c1) return false;
    final l$c2 = c2;
    final lOther$c2 = other.c2;
    if (l$c2 != lOther$c2) return false;
    final l$c3 = c3;
    final lOther$c3 = other.c3;
    if (l$c3 != lOther$c3) return false;
    final l$c3s = c3s;
    final lOther$c3s = other.c3s;
    if (l$c3s != null && lOther$c3s != null) {
      if (l$c3s.length != lOther$c3s.length) return false;
      for (int i = 0; i < l$c3s.length; i++) {
        final l$c3s$entry = l$c3s[i];
        final lOther$c3s$entry = lOther$c3s[i];
        if (l$c3s$entry != lOther$c3s$entry) return false;
      }
    } else if (l$c3s != lOther$c3s) {
      return false;
    }

    return true;
  }
}

extension UtilityExtensionQueryFetchScalars on QueryFetchScalars {
  QueryFetchScalars copyWith(
          {int? Function()? i,
          int? Function()? id,
          String? Function()? s,
          String? Function()? c1,
          DateTime? Function()? c2,
          Fobbob? Function()? c3,
          List<Fobbob?>? Function()? c3s}) =>
      QueryFetchScalars(
          i: i == null ? this.i : i(),
          id: id == null ? this.id : id(),
          s: s == null ? this.s : s(),
          c1: c1 == null ? this.c1 : c1(),
          c2: c2 == null ? this.c2 : c2(),
          c3: c3 == null ? this.c3 : c3(),
          c3s: c3s == null ? this.c3s : c3s());
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
