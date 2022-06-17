import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'scalar_import.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchScalars {
  Query$FetchScalars(
      {this.i, this.id, this.s, this.c1, this.c2, this.c3, this.c3s});

  @override
  factory Query$FetchScalars.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchScalarsFromJson(json);

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

  Map<String, dynamic> toJson() => _$Query$FetchScalarsToJson(this);
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
    if (!(other is Query$FetchScalars) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchScalars on Query$FetchScalars {
  CopyWith$Query$FetchScalars<Query$FetchScalars> get copyWith =>
      CopyWith$Query$FetchScalars(this, (i) => i);
}

abstract class CopyWith$Query$FetchScalars<TRes> {
  factory CopyWith$Query$FetchScalars(
          Query$FetchScalars instance, TRes Function(Query$FetchScalars) then) =
      _CopyWithImpl$Query$FetchScalars;

  TRes call(
      {int? i,
      int? id,
      String? s,
      String? c1,
      DateTime? c2,
      Fobbob? c3,
      List<Fobbob?>? c3s});
}

class _CopyWithImpl$Query$FetchScalars<TRes>
    implements CopyWith$Query$FetchScalars<TRes> {
  _CopyWithImpl$Query$FetchScalars(this._instance, this._then);

  final Query$FetchScalars _instance;

  final TRes Function(Query$FetchScalars) _then;

  static const _undefined = {};

  TRes call(
          {Object? i = _undefined,
          Object? id = _undefined,
          Object? s = _undefined,
          Object? c1 = _undefined,
          Object? c2 = _undefined,
          Object? c3 = _undefined,
          Object? c3s = _undefined}) =>
      _then(Query$FetchScalars(
          i: i == _undefined ? _instance.i : (i as int?),
          id: id == _undefined ? _instance.id : (id as int?),
          s: s == _undefined ? _instance.s : (s as String?),
          c1: c1 == _undefined ? _instance.c1 : (c1 as String?),
          c2: c2 == _undefined ? _instance.c2 : (c2 as DateTime?),
          c3: c3 == _undefined ? _instance.c3 : (c3 as Fobbob?),
          c3s: c3s == _undefined ? _instance.c3s : (c3s as List<Fobbob?>?)));
}

const documentNodeQueryFetchScalars = DocumentNode(definitions: [
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
const possibleTypesMap = {};
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
