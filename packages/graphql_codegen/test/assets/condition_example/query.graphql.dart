import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender {
  Query$FetchShouldRender(
      {required this.shouldRender, required this.$__typename});

  @override
  factory Query$FetchShouldRender.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchShouldRenderFromJson(json);

  final Fragment$CompositeCondition shouldRender;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchShouldRenderToJson(this);
  int get hashCode {
    final l$shouldRender = shouldRender;
    final l$$__typename = $__typename;
    return Object.hashAll([l$shouldRender, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender) || runtimeType != other.runtimeType)
      return false;
    final l$shouldRender = shouldRender;
    final lOther$shouldRender = other.shouldRender;
    if (l$shouldRender != lOther$shouldRender) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender on Query$FetchShouldRender {
  CopyWith$Query$FetchShouldRender<Query$FetchShouldRender> get copyWith =>
      CopyWith$Query$FetchShouldRender(this, (i) => i);
}

abstract class CopyWith$Query$FetchShouldRender<TRes> {
  factory CopyWith$Query$FetchShouldRender(Query$FetchShouldRender instance,
          TRes Function(Query$FetchShouldRender) then) =
      _CopyWithImpl$Query$FetchShouldRender;

  TRes call({Fragment$CompositeCondition? shouldRender, String? $__typename});
}

class _CopyWithImpl$Query$FetchShouldRender<TRes>
    implements CopyWith$Query$FetchShouldRender<TRes> {
  _CopyWithImpl$Query$FetchShouldRender(this._instance, this._then);

  final Query$FetchShouldRender _instance;

  final TRes Function(Query$FetchShouldRender) _then;

  static const _undefined = {};

  TRes call(
          {Object? shouldRender = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchShouldRender(
          shouldRender: shouldRender == _undefined
              ? _instance.shouldRender
              : (shouldRender as Fragment$CompositeCondition),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

const documentNodeQueryFetchShouldRender = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchShouldRender'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'shouldRender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'CompositeCondition'), directives: []),
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
  fragmentDefinitionCompositeCondition,
  fragmentDefinitionTimeCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionAndCondition,
  fragmentDefinitionNonCompositeCondition,
]);
