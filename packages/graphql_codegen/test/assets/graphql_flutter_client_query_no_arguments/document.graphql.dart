import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FetchSNoVariables {
  Query$FetchSNoVariables({this.s});

  factory Query$FetchSNoVariables.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSNoVariables(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchSNoVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchSNoVariables on Query$FetchSNoVariables {
  CopyWith$Query$FetchSNoVariables<Query$FetchSNoVariables> get copyWith =>
      CopyWith$Query$FetchSNoVariables(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSNoVariables<TRes> {
  factory CopyWith$Query$FetchSNoVariables(
    Query$FetchSNoVariables instance,
    TRes Function(Query$FetchSNoVariables) then,
  ) = _CopyWithImpl$Query$FetchSNoVariables;

  factory CopyWith$Query$FetchSNoVariables.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSNoVariables;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSNoVariables<TRes>
    implements CopyWith$Query$FetchSNoVariables<TRes> {
  _CopyWithImpl$Query$FetchSNoVariables(
    this._instance,
    this._then,
  );

  final Query$FetchSNoVariables _instance;

  final TRes Function(Query$FetchSNoVariables) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(Query$FetchSNoVariables(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSNoVariables<TRes>
    implements CopyWith$Query$FetchSNoVariables<TRes> {
  _CopyWithStubImpl$Query$FetchSNoVariables(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSNoVariables = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSNoVariables'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: StringValueNode(
              value: 'lol',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$FetchSNoVariables _parserFn$Query$FetchSNoVariables(
        Map<String, dynamic> data) =>
    Query$FetchSNoVariables.fromJson(data);
typedef OnQueryComplete$Query$FetchSNoVariables = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchSNoVariables?,
);

class Options$Query$FetchSNoVariables
    extends graphql.QueryOptions<Query$FetchSNoVariables> {
  Options$Query$FetchSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSNoVariables? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchSNoVariables? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$FetchSNoVariables(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchSNoVariables,
          parserFn: _parserFn$Query$FetchSNoVariables,
        );

  final OnQueryComplete$Query$FetchSNoVariables? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchSNoVariables
    extends graphql.WatchQueryOptions<Query$FetchSNoVariables> {
  WatchOptions$Query$FetchSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSNoVariables? typedOptimisticResult,
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
          document: documentNodeQueryFetchSNoVariables,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSNoVariables,
        );
}

class FetchMoreOptions$Query$FetchSNoVariables
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchSNoVariables,
        );
}

extension ClientExtension$Query$FetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSNoVariables>> query$FetchSNoVariables(
          [Options$Query$FetchSNoVariables? options]) async =>
      await this.query(options ?? Options$Query$FetchSNoVariables());
  graphql.ObservableQuery<Query$FetchSNoVariables> watchQuery$FetchSNoVariables(
          [WatchOptions$Query$FetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSNoVariables());
  void writeQuery$FetchSNoVariables({
    required Query$FetchSNoVariables data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchSNoVariables)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSNoVariables? readQuery$FetchSNoVariables(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSNoVariables)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSNoVariables.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchSNoVariables>
    useQuery$FetchSNoVariables([Options$Query$FetchSNoVariables? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$FetchSNoVariables());
graphql.ObservableQuery<Query$FetchSNoVariables>
    useWatchQuery$FetchSNoVariables(
            [WatchOptions$Query$FetchSNoVariables? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchSNoVariables());

class Query$FetchSNoVariables$Widget
    extends graphql_flutter.Query<Query$FetchSNoVariables> {
  Query$FetchSNoVariables$Widget({
    widgets.Key? key,
    Options$Query$FetchSNoVariables? options,
    required graphql_flutter.QueryBuilder<Query$FetchSNoVariables> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchSNoVariables(),
          builder: builder,
        );
}

const possibleTypesMap = <String, Set<String>>{};
