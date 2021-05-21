import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:async';
import 'package:graphql/client.dart' as graphql;
import 'package:flutter/widgets.dart' as widgets;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
part 'document.graphql.g.dart';

@JsonSerializable()
class MutationUpdateSNoVariables extends JsonSerializable {
  MutationUpdateSNoVariables({this.s});

  @override
  factory MutationUpdateSNoVariables.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSNoVariablesFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSNoVariablesToJson(this);
}

const DOCUMENT_MUTATION_UPDATE_S_NO_VARIABLES =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSNoVariables'),
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
typedef GraphQLClientOnMutationCompletedMutationUpdateSNoVariables
    = FutureOr<void> Function(dynamic, MutationUpdateSNoVariables?);
typedef GraphQLClientOnMutationUpdateMutationUpdateSNoVariables
    = FutureOr<void> Function(graphql.GraphQLDataProxy,
        GraphQLClientResultMutationUpdateSNoVariables?);

class GraphQLClientOptionsMutationUpdateSNoVariables
    extends graphql.MutationOptions {
  GraphQLClientOptionsMutationUpdateSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GraphQLClientOnMutationCompletedMutationUpdateSNoVariables? onCompleted,
      GraphQLClientOnMutationUpdateMutationUpdateSNoVariables? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationUpdateSNoVariables.fromJson(data)),
            update: update == null
                ? null
                : (cache, result) => update(
                    cache,
                    result == null
                        ? null
                        : GraphQLClientResultMutationUpdateSNoVariables(
                            result)),
            onError: onError,
            document: DOCUMENT_MUTATION_UPDATE_S_NO_VARIABLES);
}

class GraphQLClientResultMutationUpdateSNoVariables {
  GraphQLClientResultMutationUpdateSNoVariables._(this.result, this.parsedData);

  factory GraphQLClientResultMutationUpdateSNoVariables(
      graphql.QueryResult result) {
    final data = result.data;
    final parsedData =
        data == null ? null : MutationUpdateSNoVariables.fromJson(data);
    return GraphQLClientResultMutationUpdateSNoVariables._(result, parsedData);
  }

  final graphql.QueryResult result;

  final MutationUpdateSNoVariables? parsedData;
}

extension GraphQLClientExtensionMutationUpdateSNoVariables
    on graphql.GraphQLClient {
  Future<
      GraphQLClientResultMutationUpdateSNoVariables> mutateUpdateSNoVariables(
          [GraphQLClientOptionsMutationUpdateSNoVariables? options]) async =>
      GraphQLClientResultMutationUpdateSNoVariables(await this
          .mutate(options ?? GraphQLClientOptionsMutationUpdateSNoVariables()));
}

class GraphQLClientMultiSourceResultMutationUpdateSNoVariables {
  final GraphQLClientResultMutationUpdateSNoVariables eagerResult;
  final FutureOr<GraphQLClientResultMutationUpdateSNoVariables>? networkResult;
  GraphQLClientMultiSourceResultMutationUpdateSNoVariables._(
      this.eagerResult, this.networkResult);
  factory GraphQLClientMultiSourceResultMutationUpdateSNoVariables(
      graphql.MultiSourceResult result) {
    final eagerResult = result.eagerResult;
    final networkResult = result.networkResult;
    return GraphQLClientMultiSourceResultMutationUpdateSNoVariables._(
        GraphQLClientResultMutationUpdateSNoVariables(eagerResult),
        networkResult == null
            ? null
            : ((networkResult is Future
                    ? (networkResult as Future<graphql.QueryResult>)
                        .then(
                            (result) =>
                                GraphQLClientResultMutationUpdateSNoVariables(
                                    result))
                    : networkResult)
                as FutureOr<GraphQLClientResultMutationUpdateSNoVariables>));
  }
}

class GraphQLFlutterOptionsMutationUpdateSNoVariables
    extends graphql.MutationOptions {
  GraphQLFlutterOptionsMutationUpdateSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GraphQLClientOnMutationCompletedMutationUpdateSNoVariables? onCompleted,
      GraphQLClientOnMutationUpdateMutationUpdateSNoVariables? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationUpdateSNoVariables.fromJson(data)),
            update: update == null
                ? null
                : (cache, result) => update(
                    cache,
                    result == null
                        ? null
                        : GraphQLClientResultMutationUpdateSNoVariables(
                            result)),
            onError: onError,
            document: DOCUMENT_MUTATION_UPDATE_S_NO_VARIABLES);
}

typedef GraphQLFlutterRunMutationMutationUpdateSNoVariables
    = GraphQLClientMultiSourceResultMutationUpdateSNoVariables Function({
  Object? optimisticResult,
});

typedef GraphQLFlutterBuilderMutationUpdateSNoVariables
    = widgets.Widget Function(
        GraphQLFlutterRunMutationMutationUpdateSNoVariables,
        GraphQLClientResultMutationUpdateSNoVariables?);

class GraphQLFlutterMutationUpdateSNoVariables extends widgets.StatelessWidget {
  final GraphQLFlutterOptionsMutationUpdateSNoVariables? options;
  final GraphQLFlutterBuilderMutationUpdateSNoVariables builder;

  GraphQLFlutterMutationUpdateSNoVariables(
      {widgets.Key? key, this.options, required this.builder})
      : super(key: key);

  @override
  build(widgets.BuildContext context) {
    return graphql_flutter.Mutation(
      options: options,
      builder: (run, result) => builder(
          ({optimisticResult}) => run(optimisticResult: optimisticResult),
          result == null
              ? null
              : GraphQLClientResultMutationUpdateSNoVariables(result)),
    );
  }
}
