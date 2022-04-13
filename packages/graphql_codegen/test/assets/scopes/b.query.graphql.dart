import 'b.schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'b.query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryFetchPerson {
  QueryFetchPerson({this.fetchPerson, required this.$__typename});

  @override
  factory QueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPersonFromJson(json);

  final QueryFetchPerson$fetchPerson? fetchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryFetchPersonToJson(this);
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$fetchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchPerson) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryFetchPerson on QueryFetchPerson {
  QueryFetchPerson copyWith(
          {QueryFetchPerson$fetchPerson? Function()? fetchPerson,
          String? $__typename}) =>
      QueryFetchPerson(
          fetchPerson: fetchPerson == null ? this.fetchPerson : fetchPerson(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_FETCH_PERSON = const DocumentNode(definitions: [
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
class QueryFetchPerson$fetchPerson {
  QueryFetchPerson$fetchPerson(
      {this.age, this.name, this.status, required this.$__typename});

  @override
  factory QueryFetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPersonFromJson(json);

  final int? age;

  final String? name;

  @JsonKey(unknownEnumValue: EnumStatus.$unknown)
  final EnumStatus? status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryFetchPerson$fetchPersonToJson(this);
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
    if (!(other is QueryFetchPerson$fetchPerson) ||
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

extension UtilityExtensionQueryFetchPerson$fetchPerson
    on QueryFetchPerson$fetchPerson {
  QueryFetchPerson$fetchPerson copyWith(
          {int? Function()? age,
          String? Function()? name,
          EnumStatus? Function()? status,
          String? $__typename}) =>
      QueryFetchPerson$fetchPerson(
          age: age == null ? this.age : age(),
          name: name == null ? this.name : name(),
          status: status == null ? this.status : status(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
