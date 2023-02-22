import 'fragments.graphql.dart';
import 'package:gql/ast.dart';

class Query$FetchShouldRender {
  Query$FetchShouldRender({
    required this.shouldRender,
    this.$__typename = 'Query',
  });

  factory Query$FetchShouldRender.fromJson(Map<String, dynamic> json) {
    final l$shouldRender = json['shouldRender'];
    final l$$__typename = json['__typename'];
    return Query$FetchShouldRender(
      shouldRender: Fragment$CompositeCondition.fromJson(
          (l$shouldRender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompositeCondition shouldRender;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shouldRender = shouldRender;
    _resultData['shouldRender'] = l$shouldRender.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shouldRender = shouldRender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shouldRender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchShouldRender) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shouldRender = shouldRender;
    final lOther$shouldRender = other.shouldRender;
    if (l$shouldRender != lOther$shouldRender) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender on Query$FetchShouldRender {
  CopyWith$Query$FetchShouldRender<Query$FetchShouldRender> get copyWith =>
      CopyWith$Query$FetchShouldRender(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchShouldRender<TRes> {
  factory CopyWith$Query$FetchShouldRender(
    Query$FetchShouldRender instance,
    TRes Function(Query$FetchShouldRender) then,
  ) = _CopyWithImpl$Query$FetchShouldRender;

  factory CopyWith$Query$FetchShouldRender.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchShouldRender;

  TRes call({
    Fragment$CompositeCondition? shouldRender,
    String? $__typename,
  });
  CopyWith$Fragment$CompositeCondition<TRes> get shouldRender;
}

class _CopyWithImpl$Query$FetchShouldRender<TRes>
    implements CopyWith$Query$FetchShouldRender<TRes> {
  _CopyWithImpl$Query$FetchShouldRender(
    this._instance,
    this._then,
  );

  final Query$FetchShouldRender _instance;

  final TRes Function(Query$FetchShouldRender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shouldRender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchShouldRender(
        shouldRender: shouldRender == _undefined || shouldRender == null
            ? _instance.shouldRender
            : (shouldRender as Fragment$CompositeCondition),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CompositeCondition<TRes> get shouldRender {
    final local$shouldRender = _instance.shouldRender;
    return CopyWith$Fragment$CompositeCondition(
        local$shouldRender, (e) => call(shouldRender: e));
  }
}

class _CopyWithStubImpl$Query$FetchShouldRender<TRes>
    implements CopyWith$Query$FetchShouldRender<TRes> {
  _CopyWithStubImpl$Query$FetchShouldRender(this._res);

  TRes _res;

  call({
    Fragment$CompositeCondition? shouldRender,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CompositeCondition<TRes> get shouldRender =>
      CopyWith$Fragment$CompositeCondition.stub(_res);
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
            name: NameNode(value: 'CompositeCondition'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCompositeCondition,
  fragmentDefinitionTimeCondition,
  fragmentDefinitionAndCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionNonCompositeCondition,
]);
