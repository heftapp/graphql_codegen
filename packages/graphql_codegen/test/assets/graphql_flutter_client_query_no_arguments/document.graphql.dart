import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class QueryFetchSNoVariables extends JsonSerializable {
  QueryFetchSNoVariables({this.s});

  @override
  factory QueryFetchSNoVariables.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchSNoVariablesFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchSNoVariablesToJson(this);
}

const QUERY_FETCH_S_NO_VARIABLES = const DocumentNode(definitions: [
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
                  value: StringValueNode(value: 'lol', isBlock: false))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryFetchSNoVariables _parserFnQueryFetchSNoVariables(
        Map<String, dynamic> data) =>
    QueryFetchSNoVariables.fromJson(data);

class OptionsQueryFetchSNoVariables
    extends graphql.QueryOptions<QueryFetchSNoVariables> {
  OptionsQueryFetchSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_FETCH_S_NO_VARIABLES,
            parserFn: _parserFnQueryFetchSNoVariables);
}

class WatchOptionsQueryFetchSNoVariables
    extends graphql.WatchQueryOptions<QueryFetchSNoVariables> {
  WatchOptionsQueryFetchSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_FETCH_S_NO_VARIABLES,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSNoVariables);
}

class FetchMoreOptionsQueryFetchSNoVariables extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_FETCH_S_NO_VARIABLES);
}

extension ClientExtensionQueryFetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSNoVariables>> queryFetchSNoVariables(
          [OptionsQueryFetchSNoVariables? options]) async =>
      await this.query(options ?? OptionsQueryFetchSNoVariables());
  graphql.ObservableQuery<QueryFetchSNoVariables> watchQueryFetchSNoVariables(
          [WatchOptionsQueryFetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryFetchSNoVariables());
}

graphql_flutter.QueryHookResult<QueryFetchSNoVariables>
    useQueryFetchSNoVariables([OptionsQueryFetchSNoVariables? options]) =>
        graphql_flutter.useQuery(options ?? OptionsQueryFetchSNoVariables());
graphql.ObservableQuery<QueryFetchSNoVariables> useWatchQueryFetchSNoVariables(
        [WatchOptionsQueryFetchSNoVariables? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptionsQueryFetchSNoVariables());

class QueryFetchSNoVariablesWidget
    extends graphql_flutter.Query<QueryFetchSNoVariables> {
  QueryFetchSNoVariablesWidget(
      {widgets.Key? key,
      OptionsQueryFetchSNoVariables? options,
      required graphql_flutter.QueryBuilder<QueryFetchSNoVariables> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryFetchSNoVariables(),
            builder: builder);
}

const POSSIBLE_TYPES_MAP = const {};
