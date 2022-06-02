import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

enum Enum___Status {
  @JsonValue('Pending')
  Pending,
  @JsonValue('Successful')
  Successful,
  @JsonValue('Failure')
  Failure,
  @JsonValue('InProgress')
  InProgress,
  $unknown
}

@JsonSerializable(explicitToJson: true)
class Query___Q {
  Query___Q({this.status, required this.$__typename});

  @override
  factory Query___Q.fromJson(Map<String, dynamic> json) =>
      _$Query___QFromJson(json);

  @JsonKey(unknownEnumValue: Enum___Status.$unknown)
  final Enum___Status? status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query___QToJson(this);
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([l$status, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query___Q) || runtimeType != other.runtimeType) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query___Q on Query___Q {
  Query___Q copyWith(
          {Enum___Status? Function()? status, String? $__typename}) =>
      Query___Q(
          status: status == null ? this.status : status(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentQ = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
]);
const possibleTypesMap = {};
