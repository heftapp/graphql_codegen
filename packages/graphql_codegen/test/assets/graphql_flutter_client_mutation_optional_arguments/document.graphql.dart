import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class VariablesMutationUpdateSOptional extends JsonSerializable {
  VariablesMutationUpdateSOptional({this.name});

  @override
  factory VariablesMutationUpdateSOptional.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateSOptionalToJson(this);
}

@JsonSerializable()
class MutationUpdateSOptional extends JsonSerializable {
  MutationUpdateSOptional({this.s});

  @override
  factory MutationUpdateSOptional.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSOptionalFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSOptionalToJson(this);
}

const MUTATION_UPDATE_S_OPTIONAL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSOptional'),
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
typedef GQLOnMutationCompletedMutationUpdateSOptional = FutureOr<void> Function(
    dynamic, MutationUpdateSOptional?);

class GQLOptionsMutationUpdateSOptional extends graphql.MutationOptions {
  GQLOptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSOptional? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            variables: variables?.toJson() ?? {},
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
                        : MutationUpdateSOptional.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_OPTIONAL);
}

class GQLWatchOptionsMutationUpdateSOptional extends graphql.WatchQueryOptions {
  GQLWatchOptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
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
            document: MUTATION_UPDATE_S_OPTIONAL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults);
}

extension GQLExtensionMutationUpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult> mutateUpdateSOptional(
          [GQLOptionsMutationUpdateSOptional? options]) async =>
      await this.mutate(options ?? GQLOptionsMutationUpdateSOptional());
  graphql.ObservableQuery watchMutationUpdateSOptional(
          [GQLWatchOptionsMutationUpdateSOptional? options]) =>
      this.watchMutation(options ?? GQLWatchOptionsMutationUpdateSOptional());
}

extension GQLResultExtensionMutationUpdateSOptional on graphql.QueryResult {
  MutationUpdateSOptional? get parsedDataMutationUpdateSOptional {
    final data = this.data;
    return data == null ? null : MutationUpdateSOptional.fromJson(data);
  }
}

class GQLFOptionsMutationUpdateSOptional extends graphql.MutationOptions {
  GQLFOptionsMutationUpdateSOptional(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSOptional? onCompleted,
      graphql.OnMutationUpdate? update,
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
                        : MutationUpdateSOptional.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_OPTIONAL);
}

typedef GQLFRunMutationMutationUpdateSOptional
    = graphql.MultiSourceResult Function(
        {VariablesMutationUpdateSOptional? variables,
        Object? optimisticResult});
typedef GQLFBuilderMutationUpdateSOptional = widgets.Widget Function(
    GQLFRunMutationMutationUpdateSOptional, graphql.QueryResult?);

class GQLFMutationUpdateSOptional extends graphql_flutter.Mutation {
  GQLFMutationUpdateSOptional(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateSOptional? options,
      required GQLFBuilderMutationUpdateSOptional builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateSOptional(),
            builder: (run, result) => builder(
                ({variables, optimisticResult}) => run(
                    variables?.toJson() ?? {},
                    optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
