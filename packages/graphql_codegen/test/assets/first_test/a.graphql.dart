import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'a.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchName {
  Query$FetchName({this.name});

  @override
  factory Query$FetchName.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchNameFromJson(json);

  final Fragment$F? name;

  Map<String, dynamic> toJson() => _$Query$FetchNameToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchName) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchName on Query$FetchName {
  CopyWith$Query$FetchName<Query$FetchName> get copyWith =>
      CopyWith$Query$FetchName(this, (i) => i);
}

abstract class CopyWith$Query$FetchName<TRes> {
  factory CopyWith$Query$FetchName(
          Query$FetchName instance, TRes Function(Query$FetchName) then) =
      _CopyWithImpl$Query$FetchName;

  TRes call({Fragment$F? name});
}

class _CopyWithImpl$Query$FetchName<TRes>
    implements CopyWith$Query$FetchName<TRes> {
  _CopyWithImpl$Query$FetchName(this._instance, this._then);

  final Query$FetchName _instance;

  final TRes Function(Query$FetchName) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Query$FetchName(
      name: name == _undefined ? _instance.name : (name as Fragment$F?)));
}

const documentNodeQueryFetchName = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchName'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
]);
