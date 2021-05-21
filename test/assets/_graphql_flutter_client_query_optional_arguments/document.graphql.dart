import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:async';
import 'package:graphql/client.dart' as graphql;
import 'package:flutter/widgets.dart' as widgets;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
part 'document.graphql.g.dart';

@JsonSerializable()
class VariablesQueryFetchSOptional extends JsonSerializable {
  VariablesQueryFetchSOptional({this.name});

  @override
  factory VariablesQueryFetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchSOptionalToJson(this);
}

@JsonSerializable()
class QueryFetchSOptional extends JsonSerializable {
  QueryFetchSOptional({this.s});

  @override
  factory QueryFetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchSOptionalFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchSOptionalToJson(this);
}

const DOCUMENT_QUERY_FETCH_S_OPTIONAL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchSOptional'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);

class GraphQLClientOptionsQueryFetchSOptional extends graphql.QueryOptions {
  GraphQLClientOptionsQueryFetchSOptional(
      {String? operationName,
      VariablesQueryFetchSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: DOCUMENT_QUERY_FETCH_S_OPTIONAL);
}

class GraphQLClientResultQueryFetchSOptional {
  GraphQLClientResultQueryFetchSOptional._(this.result, this.parsedData);

  factory GraphQLClientResultQueryFetchSOptional(graphql.QueryResult result) {
    final data = result.data;
    final parsedData = data == null ? null : QueryFetchSOptional.fromJson(data);
    return GraphQLClientResultQueryFetchSOptional._(result, parsedData);
  }

  final graphql.QueryResult result;

  final QueryFetchSOptional? parsedData;
}

extension GraphQLClientExtensionQueryFetchSOptional on graphql.GraphQLClient {
  Future<GraphQLClientResultQueryFetchSOptional> queryFetchSOptional(
          [GraphQLClientOptionsQueryFetchSOptional? options]) async =>
      GraphQLClientResultQueryFetchSOptional(await this
          .query(options ?? GraphQLClientOptionsQueryFetchSOptional()));
}

class GraphQLClientFetchMoreOptionsQueryFetchSOptional
    extends graphql.FetchMoreOptions {
  GraphQLClientFetchMoreOptionsQueryFetchSOptional(
      {VariablesQueryFetchSOptional? variables,
      required graphql.UpdateQuery updateQuery})
      : super(
            document: DOCUMENT_QUERY_FETCH_S_OPTIONAL,
            variables: variables?.toJson() ?? {},
            updateQuery: updateQuery);
}

typedef GraphQLFlutterFetchMoreQueryFetchSOptional
    = Future<GraphQLClientResultQueryFetchSOptional> Function(
        graphql.FetchMoreOptions options);

typedef GraphQLFlutterRefetchQueryFetchSOptional
    = Future<GraphQLClientResultQueryFetchSOptional?> Function();

typedef GraphQLFlutterQueryBuilderQueryFetchSOptional = widgets.Widget Function(
    GraphQLClientResultQueryFetchSOptional,
    {GraphQLFlutterRefetchQueryFetchSOptional? refetch,
    GraphQLFlutterFetchMoreQueryFetchSOptional? fetchMore});

class GraphQLFlutterQueryQueryFetchSOptional extends graphql_flutter.Query {
  GraphQLFlutterQueryQueryFetchSOptional(
      {widgets.Key? key,
      GraphQLClientOptionsQueryFetchSOptional? options,
      required GraphQLFlutterQueryBuilderQueryFetchSOptional builder})
      : super(
          key: key,
          options: options,
          builder: (result, {fetchMore, refetch}) =>
              builder(GraphQLClientResultQueryFetchSOptional(result),
                  fetchMore: fetchMore == null
                      ? null
                      : (graphql.FetchMoreOptions options) async {
                          final graphql.QueryResult? result =
                              await fetchMore(options);
                          return result == null
                              ? null
                              : GraphQLClientResultQueryFetchSOptional(result);
                        },
                  refetch: refetch == null
                      ? null
                      : () async {
                          final result = await refetch();
                          return result == null
                              ? null
                              : GraphQLClientResultQueryFetchSOptional(result);
                        }),
        );
}
