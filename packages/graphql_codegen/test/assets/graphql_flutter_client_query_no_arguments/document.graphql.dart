import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchSNoVariables {
  Query$FetchSNoVariables({this.s});

  @override
  factory Query$FetchSNoVariables.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSNoVariablesFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSNoVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSNoVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSNoVariables on Query$FetchSNoVariables {
  Query$FetchSNoVariables copyWith({String? Function()? s}) =>
      Query$FetchSNoVariables(s: s == null ? this.s : s());
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
                  value: StringValueNode(value: 'lol', isBlock: false))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$FetchSNoVariables _parserFn$Query$FetchSNoVariables(
        Map<String, dynamic> data) =>
    Query$FetchSNoVariables.fromJson(data);

class Options$Query$FetchSNoVariables
    extends graphql.QueryOptions<Query$FetchSNoVariables> {
  Options$Query$FetchSNoVariables(
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
            document: documentNodeQueryFetchSNoVariables,
            parserFn: _parserFn$Query$FetchSNoVariables);
}

class WatchOptions$Query$FetchSNoVariables
    extends graphql.WatchQueryOptions<Query$FetchSNoVariables> {
  WatchOptions$Query$FetchSNoVariables(
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
            document: documentNodeQueryFetchSNoVariables,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSNoVariables);
}

class FetchMoreOptions$Query$FetchSNoVariables
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryFetchSNoVariables);
}

extension ClientExtension$Query$FetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSNoVariables>> query$FetchSNoVariables(
          [Options$Query$FetchSNoVariables? options]) async =>
      await this.query(options ?? Options$Query$FetchSNoVariables());
  graphql.ObservableQuery<Query$FetchSNoVariables> watchQuery$FetchSNoVariables(
          [WatchOptions$Query$FetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSNoVariables());
  void writeQuery$FetchSNoVariables(
          {required Query$FetchSNoVariables data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryFetchSNoVariables)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSNoVariables? readQuery$FetchSNoVariables(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchSNoVariables)),
        optimistic: optimistic);
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
  Query$FetchSNoVariables$Widget(
      {widgets.Key? key,
      Options$Query$FetchSNoVariables? options,
      required graphql_flutter.QueryBuilder<Query$FetchSNoVariables> builder})
      : super(
            key: key,
            options: options ?? Options$Query$FetchSNoVariables(),
            builder: builder);
}

const possibleTypesMap = {};
