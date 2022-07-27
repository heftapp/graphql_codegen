import 'a.schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'a.query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson {
  Query$FetchPerson({this.fetchPerson, required this.$__typename});

  factory Query$FetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPersonFromJson(json);

  final Query$FetchPerson$fetchPerson? fetchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchPersonToJson(this);
  @override
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$fetchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson) || runtimeType != other.runtimeType)
      return false;
    final l$fetchPerson = fetchPerson;
    final lOther$fetchPerson = other.fetchPerson;
    if (l$fetchPerson != lOther$fetchPerson) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson on Query$FetchPerson {
  CopyWith$Query$FetchPerson<Query$FetchPerson> get copyWith =>
      CopyWith$Query$FetchPerson(this, (i) => i);
}

abstract class CopyWith$Query$FetchPerson<TRes> {
  factory CopyWith$Query$FetchPerson(
          Query$FetchPerson instance, TRes Function(Query$FetchPerson) then) =
      _CopyWithImpl$Query$FetchPerson;

  factory CopyWith$Query$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson;

  TRes call({Query$FetchPerson$fetchPerson? fetchPerson, String? $__typename});
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson;
}

class _CopyWithImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson(this._instance, this._then);

  final Query$FetchPerson _instance;

  final TRes Function(Query$FetchPerson) _then;

  static const _undefined = {};

  TRes call(
          {Object? fetchPerson = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchPerson(
          fetchPerson: fetchPerson == _undefined
              ? _instance.fetchPerson
              : (fetchPerson as Query$FetchPerson$fetchPerson?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson {
    final local$fetchPerson = _instance.fetchPerson;
    return local$fetchPerson == null
        ? CopyWith$Query$FetchPerson$fetchPerson.stub(_then(_instance))
        : CopyWith$Query$FetchPerson$fetchPerson(
            local$fetchPerson, (e) => call(fetchPerson: e));
  }
}

class _CopyWithStubImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithStubImpl$Query$FetchPerson(this._res);

  TRes _res;

  call({Query$FetchPerson$fetchPerson? fetchPerson, String? $__typename}) =>
      _res;
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson =>
      CopyWith$Query$FetchPerson$fetchPerson.stub(_res);
}

const documentNodeQueryFetchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchPerson'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fetchPerson'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson {
  Query$FetchPerson$fetchPerson(
      {this.name, required this.status, required this.$__typename});

  factory Query$FetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPersonFromJson(json);

  final String? name;

  @JsonKey(unknownEnumValue: Enum$Status.$unknown)
  final Enum$Status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchPerson$fetchPersonToJson(this);
  @override
  int get hashCode {
    final l$name = name;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$status, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetchPerson
    on Query$FetchPerson$fetchPerson {
  CopyWith$Query$FetchPerson$fetchPerson<Query$FetchPerson$fetchPerson>
      get copyWith => CopyWith$Query$FetchPerson$fetchPerson(this, (i) => i);
}

abstract class CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  factory CopyWith$Query$FetchPerson$fetchPerson(
          Query$FetchPerson$fetchPerson instance,
          TRes Function(Query$FetchPerson$fetchPerson) then) =
      _CopyWithImpl$Query$FetchPerson$fetchPerson;

  factory CopyWith$Query$FetchPerson$fetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson$fetchPerson;

  TRes call({String? name, Enum$Status? status, String? $__typename});
}

class _CopyWithImpl$Query$FetchPerson$fetchPerson<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson$fetchPerson(this._instance, this._then);

  final Query$FetchPerson$fetchPerson _instance;

  final TRes Function(Query$FetchPerson$fetchPerson) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? status = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchPerson$fetchPerson(
          name: name == _undefined ? _instance.name : (name as String?),
          status: status == _undefined || status == null
              ? _instance.status
              : (status as Enum$Status),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$FetchPerson$fetchPerson<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  _CopyWithStubImpl$Query$FetchPerson$fetchPerson(this._res);

  TRes _res;

  call({String? name, Enum$Status? status, String? $__typename}) => _res;
}
