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

class GQLOptionsQueryFetchSNoVariables extends graphql.QueryOptions {
  GQLOptionsQueryFetchSNoVariables(
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
            document: QUERY_FETCH_S_NO_VARIABLES);
}

class GQLWatchOptionsQueryFetchSNoVariables extends graphql.WatchQueryOptions {
  GQLWatchOptionsQueryFetchSNoVariables(
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
            fetchResults: fetchResults);
}

class GQLFetchMoreOptionsQueryFetchSNoVariables
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryFetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_FETCH_S_NO_VARIABLES);
}

extension GQLExtensionQueryFetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult> queryFetchSNoVariables(
          [GQLOptionsQueryFetchSNoVariables? options]) async =>
      await this.query(options ?? GQLOptionsQueryFetchSNoVariables());
  graphql.ObservableQuery watchQueryFetchSNoVariables(
          [GQLWatchOptionsQueryFetchSNoVariables? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryFetchSNoVariables());
}

extension GQLResultExtensionQueryFetchSNoVariables on graphql.QueryResult {
  QueryFetchSNoVariables? get parsedDataQueryFetchSNoVariables {
    final data = this.data;
    return data == null ? null : QueryFetchSNoVariables.fromJson(data);
  }
}

class GQLFQueryFetchSNoVariables extends graphql_flutter.Query {
  GQLFQueryFetchSNoVariables(
      {widgets.Key? key,
      GQLOptionsQueryFetchSNoVariables? options,
      required graphql_flutter.QueryBuilder builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryFetchSNoVariables(),
            builder: builder);
}

const POSSIBLE_TYPES_MAP = const {};
