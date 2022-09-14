import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$Operation {
  Query$Operation({this.name});

  factory Query$Operation.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$Operation(name: (l$name as String?));
  }

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Operation) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Operation on Query$Operation {
  CopyWith$Query$Operation<Query$Operation> get copyWith =>
      CopyWith$Query$Operation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Operation<TRes> {
  factory CopyWith$Query$Operation(
    Query$Operation instance,
    TRes Function(Query$Operation) then,
  ) = _CopyWithImpl$Query$Operation;

  factory CopyWith$Query$Operation.stub(TRes res) =
      _CopyWithStubImpl$Query$Operation;

  TRes call({String? name});
}

class _CopyWithImpl$Query$Operation<TRes>
    implements CopyWith$Query$Operation<TRes> {
  _CopyWithImpl$Query$Operation(
    this._instance,
    this._then,
  );

  final Query$Operation _instance;

  final TRes Function(Query$Operation) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Query$Operation(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Query$Operation<TRes>
    implements CopyWith$Query$Operation<TRes> {
  _CopyWithStubImpl$Query$Operation(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const documentNodeQueryOperation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Operation'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$Operation _parserFn$Query$Operation(Map<String, dynamic> data) =>
    Query$Operation.fromJson(data);

class Options$Query$Operation extends graphql.QueryOptions<Query$Operation> {
  Options$Query$Operation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryOperation,
          parserFn: _parserFn$Query$Operation,
        );
}

class WatchOptions$Query$Operation
    extends graphql.WatchQueryOptions<Query$Operation> {
  WatchOptions$Query$Operation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
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
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryOperation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Operation,
        );
}

class FetchMoreOptions$Query$Operation extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Operation({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryOperation,
        );
}

extension ClientExtension$Query$Operation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Operation>> query$Operation(
          [Options$Query$Operation? options]) async =>
      await this.query(options ?? Options$Query$Operation());
  graphql.ObservableQuery<Query$Operation> watchQuery$Operation(
          [WatchOptions$Query$Operation? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Operation());
  void writeQuery$Operation({
    required Query$Operation data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryOperation)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Operation? readQuery$Operation({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryOperation)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Operation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Operation> useQuery$Operation(
        [Options$Query$Operation? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Operation());
graphql.ObservableQuery<Query$Operation> useWatchQuery$Operation(
        [WatchOptions$Query$Operation? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Operation());

class Query$Operation$Widget extends graphql_flutter.Query<Query$Operation> {
  Query$Operation$Widget({
    widgets.Key? key,
    Options$Query$Operation? options,
    required graphql_flutter.QueryBuilder<Query$Operation> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Operation(),
          builder: builder,
        );
}
