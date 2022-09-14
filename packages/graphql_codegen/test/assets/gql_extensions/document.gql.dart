import 'package:gql/ast.dart';

class Query$FetchCount {
  Query$FetchCount({
    this.fetchCount,
    required this.$__typename,
  });

  factory Query$FetchCount.fromJson(Map<String, dynamic> json) {
    final l$fetchCount = json['fetchCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchCount(
      fetchCount: (l$fetchCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? fetchCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchCount = fetchCount;
    _resultData['fetchCount'] = l$fetchCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchCount = fetchCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCount) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchCount = fetchCount;
    final lOther$fetchCount = other.fetchCount;
    if (l$fetchCount != lOther$fetchCount) {
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

extension UtilityExtension$Query$FetchCount on Query$FetchCount {
  CopyWith$Query$FetchCount<Query$FetchCount> get copyWith =>
      CopyWith$Query$FetchCount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCount<TRes> {
  factory CopyWith$Query$FetchCount(
    Query$FetchCount instance,
    TRes Function(Query$FetchCount) then,
  ) = _CopyWithImpl$Query$FetchCount;

  factory CopyWith$Query$FetchCount.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCount;

  TRes call({
    int? fetchCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCount<TRes>
    implements CopyWith$Query$FetchCount<TRes> {
  _CopyWithImpl$Query$FetchCount(
    this._instance,
    this._then,
  );

  final Query$FetchCount _instance;

  final TRes Function(Query$FetchCount) _then;

  static const _undefined = {};

  TRes call({
    Object? fetchCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCount(
        fetchCount: fetchCount == _undefined
            ? _instance.fetchCount
            : (fetchCount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCount<TRes>
    implements CopyWith$Query$FetchCount<TRes> {
  _CopyWithStubImpl$Query$FetchCount(this._res);

  TRes _res;

  call({
    int? fetchCount,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryFetchCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchCount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
]);
const possibleTypesMap = {};
