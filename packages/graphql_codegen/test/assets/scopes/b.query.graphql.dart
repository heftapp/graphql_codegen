import 'b.schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'b.query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson {
  Query$FetchPerson({this.fetchPerson, required this.$__typename});

  @override
  factory Query$FetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPersonFromJson(json);

  final Query$FetchPerson$fetchPerson? fetchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchPersonToJson(this);
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

  TRes call({Query$FetchPerson$fetchPerson? fetchPerson, String? $__typename});
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
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
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
                  name: NameNode(value: 'age'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
      {this.age, this.name, this.status, required this.$__typename});

  @override
  factory Query$FetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPersonFromJson(json);

  final int? age;

  final String? name;

  @JsonKey(unknownEnumValue: Enum$Status.$unknown)
  final Enum$Status? status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchPerson$fetchPersonToJson(this);
  int get hashCode {
    final l$age = age;
    final l$name = name;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([l$age, l$name, l$status, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
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

  TRes call({int? age, String? name, Enum$Status? status, String? $__typename});
}

class _CopyWithImpl$Query$FetchPerson$fetchPerson<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson$fetchPerson(this._instance, this._then);

  final Query$FetchPerson$fetchPerson _instance;

  final TRes Function(Query$FetchPerson$fetchPerson) _then;

  static const _undefined = {};

  TRes call(
          {Object? age = _undefined,
          Object? name = _undefined,
          Object? status = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchPerson$fetchPerson(
          age: age == _undefined ? _instance.age : (age as int?),
          name: name == _undefined ? _instance.name : (name as String?),
          status: status == _undefined
              ? _instance.status
              : (status as Enum$Status?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}
