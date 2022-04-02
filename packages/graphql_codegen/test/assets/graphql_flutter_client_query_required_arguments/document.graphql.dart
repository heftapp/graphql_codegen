import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryFetchSRequired extends JsonSerializable {
  VariablesQueryFetchSRequired({required this.name});

  @override
  factory VariablesQueryFetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchSRequiredFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchSRequiredToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryFetchSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryFetchSRequired extends JsonSerializable {
  QueryFetchSRequired({this.s});

  @override
  factory QueryFetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchSRequiredFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchSRequiredToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const QUERY_FETCH_S_REQUIRED = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchSRequired'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
QueryFetchSRequired _parserFnQueryFetchSRequired(Map<String, dynamic> data) =>
    QueryFetchSRequired.fromJson(data);

class OptionsQueryFetchSRequired
    extends graphql.QueryOptions<QueryFetchSRequired> {
  OptionsQueryFetchSRequired(
      {String? operationName,
      required VariablesQueryFetchSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_FETCH_S_REQUIRED,
            parserFn: _parserFnQueryFetchSRequired);
}

class WatchOptionsQueryFetchSRequired
    extends graphql.WatchQueryOptions<QueryFetchSRequired> {
  WatchOptionsQueryFetchSRequired(
      {String? operationName,
      required VariablesQueryFetchSRequired variables,
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
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_FETCH_S_REQUIRED,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSRequired);
}

class FetchMoreOptionsQueryFetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSRequired(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryFetchSRequired variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_FETCH_S_REQUIRED);
}

extension ClientExtensionQueryFetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSRequired>> queryFetchSRequired(
          OptionsQueryFetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryFetchSRequired> watchQueryFetchSRequired(
          WatchOptionsQueryFetchSRequired options) =>
      this.watchQuery(options);
  void writeQueryFetchSRequired(
          {required QueryFetchSRequired data,
          required VariablesQueryFetchSRequired variables,
          broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_S_REQUIRED),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchSRequired? readQueryFetchSRequired(
      {required VariablesQueryFetchSRequired variables, optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_S_REQUIRED),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryFetchSRequired.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<QueryFetchSRequired> useQueryFetchSRequired(
        OptionsQueryFetchSRequired options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<QueryFetchSRequired> useWatchQueryFetchSRequired(
        WatchOptionsQueryFetchSRequired options) =>
    graphql_flutter.useWatchQuery(options);

class QueryFetchSRequiredWidget
    extends graphql_flutter.Query<QueryFetchSRequired> {
  QueryFetchSRequiredWidget(
      {widgets.Key? key,
      required OptionsQueryFetchSRequired options,
      required graphql_flutter.QueryBuilder<QueryFetchSRequired> builder})
      : super(key: key, options: options, builder: builder);
}

const POSSIBLE_TYPES_MAP = const {};
