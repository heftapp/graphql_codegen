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
  CopyWith$Query___Q<Query___Q> get copyWith =>
      CopyWith$Query___Q(this, (i) => i);
}

abstract class CopyWith$Query___Q<TRes> {
  factory CopyWith$Query___Q(
          Query___Q instance, TRes Function(Query___Q) then) =
      _CopyWithImpl$Query___Q;

  factory CopyWith$Query___Q.stub(TRes res) = _CopyWithStubImpl$Query___Q;

  TRes call({Enum___Status? status, String? $__typename});
}

class _CopyWithImpl$Query___Q<TRes> implements CopyWith$Query___Q<TRes> {
  _CopyWithImpl$Query___Q(this._instance, this._then);

  final Query___Q _instance;

  final TRes Function(Query___Q) _then;

  static const _undefined = {};

  TRes call({Object? status = _undefined, Object? $__typename = _undefined}) =>
      _then(Query___Q(
          status: status == _undefined
              ? _instance.status
              : (status as Enum___Status?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query___Q<TRes> implements CopyWith$Query___Q<TRes> {
  _CopyWithStubImpl$Query___Q(this._res);

  TRes _res;

  call({Enum___Status? status, String? $__typename}) => _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
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
