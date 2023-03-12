import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Q {
  Query$Q({
    this.q,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$q = json['q'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      q: (l$q as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? q;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$q = q;
    _resultData['q'] = l$q;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$q = q;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$q,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (l$q != lOther$q) {
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

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({
    String? q,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? q = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        q: q == _undefined ? _instance.q : (q as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    String? q,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'q'),
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
Query$Q _parserFn$Query$Q(Map<String, dynamic> data) => Query$Q.fromJson(data);
typedef OnQueryComplete$Query$Q = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Q?,
);

class Options$Query$Q extends graphql.QueryOptions<Query$Q> {
  Options$Query$Q({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Q? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Q? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Q(data),
                  ),
          onError: onError,
          document: documentNodeQueryQ,
          parserFn: _parserFn$Query$Q,
        );

  final OnQueryComplete$Query$Q? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Q extends graphql.WatchQueryOptions<Query$Q> {
  WatchOptions$Query$Q({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Q? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryQ,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Q,
        );
}

class FetchMoreOptions$Query$Q extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Q({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryQ,
        );
}

extension ClientExtension$Query$Q on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Q>> query$Q(
          [Options$Query$Q? options]) async =>
      await this.query(options ?? Options$Query$Q());
  graphql.ObservableQuery<Query$Q> watchQuery$Q(
          [WatchOptions$Query$Q? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Q());
  void writeQuery$Q({
    required Query$Q data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryQ)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Q? readQuery$Q({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryQ)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Q.fromJson(result);
  }
}

const possibleTypesMap = <String, Set<String>>{};
