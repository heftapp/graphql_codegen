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
  Query$FetchPerson copyWith(
          {Query$FetchPerson$fetchPerson? Function()? fetchPerson,
          String? $__typename}) =>
      Query$FetchPerson(
          fetchPerson: fetchPerson == null ? this.fetchPerson : fetchPerson(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentFetchPerson = DocumentNode(definitions: [
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
  Query$FetchPerson$fetchPerson copyWith(
          {int? Function()? age,
          String? Function()? name,
          Enum$Status? Function()? status,
          String? $__typename}) =>
      Query$FetchPerson$fetchPerson(
          age: age == null ? this.age : age(),
          name: name == null ? this.name : name(),
          status: status == null ? this.status : status(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
