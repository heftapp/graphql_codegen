import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryFetchSOptional extends JsonSerializable {
  VariablesQueryFetchSOptional({this.name});

  @override
  factory VariablesQueryFetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryFetchSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryFetchSOptional extends JsonSerializable {
  QueryFetchSOptional({this.s});

  @override
  factory QueryFetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchSOptionalFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchSOptionalToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchSOptional on QueryFetchSOptional {
  QueryFetchSOptional copyWith({String? Function()? s}) =>
      QueryFetchSOptional(s: s == null ? this.s : s());
}

const QUERY_FETCH_S_OPTIONAL = const DocumentNode(definitions: [
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
QueryFetchSOptional _parserFnQueryFetchSOptional(Map<String, dynamic> data) =>
    QueryFetchSOptional.fromJson(data);

class OptionsQueryFetchSOptional
    extends graphql.QueryOptions<QueryFetchSOptional> {
  OptionsQueryFetchSOptional(
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
            document: QUERY_FETCH_S_OPTIONAL,
            parserFn: _parserFnQueryFetchSOptional);
}

class WatchOptionsQueryFetchSOptional
    extends graphql.WatchQueryOptions<QueryFetchSOptional> {
  WatchOptionsQueryFetchSOptional(
      {String? operationName,
      VariablesQueryFetchSOptional? variables,
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
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_FETCH_S_OPTIONAL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSOptional);
}

class FetchMoreOptionsQueryFetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSOptional(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryFetchSOptional? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_FETCH_S_OPTIONAL);
}

extension ClientExtensionQueryFetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSOptional>> queryFetchSOptional(
          [OptionsQueryFetchSOptional? options]) async =>
      await this.query(options ?? OptionsQueryFetchSOptional());
  graphql.ObservableQuery<QueryFetchSOptional> watchQueryFetchSOptional(
          [WatchOptionsQueryFetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryFetchSOptional());
  void writeQueryFetchSOptional(
          {required QueryFetchSOptional data,
          VariablesQueryFetchSOptional? variables,
          broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_S_OPTIONAL),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchSOptional? readQueryFetchSOptional(
      {VariablesQueryFetchSOptional? variables, optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_S_OPTIONAL),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : QueryFetchSOptional.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<QueryFetchSOptional> useQueryFetchSOptional(
        [OptionsQueryFetchSOptional? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryFetchSOptional());
graphql.ObservableQuery<QueryFetchSOptional> useWatchQueryFetchSOptional(
        [WatchOptionsQueryFetchSOptional? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryFetchSOptional());

class QueryFetchSOptionalWidget
    extends graphql_flutter.Query<QueryFetchSOptional> {
  QueryFetchSOptionalWidget(
      {widgets.Key? key,
      OptionsQueryFetchSOptional? options,
      required graphql_flutter.QueryBuilder<QueryFetchSOptional> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryFetchSOptional(),
            builder: builder);
}

const POSSIBLE_TYPES_MAP = const {};
