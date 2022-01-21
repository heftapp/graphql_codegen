import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class VariablesMutationUpdateSRequired extends JsonSerializable {
  VariablesMutationUpdateSRequired({required this.name});

  @override
  factory VariablesMutationUpdateSRequired.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSRequiredFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateSRequiredToJson(this);
}

@JsonSerializable()
class MutationUpdateSRequired extends JsonSerializable {
  MutationUpdateSRequired({this.s});

  @override
  factory MutationUpdateSRequired.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSRequiredFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSRequiredToJson(this);
}

const MUTATION_UPDATE_S_REQUIRED = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSRequired'),
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
typedef GQLOnMutationCompletedMutationUpdateSRequired = FutureOr<void> Function(
    dynamic, MutationUpdateSRequired?);

class GQLOptionsMutationUpdateSRequired extends graphql.MutationOptions {
  GQLOptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSRequired? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            variables: variables.toJson(),
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
                        : MutationUpdateSRequired.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_REQUIRED);
}

class GQLWatchOptionsMutationUpdateSRequired extends graphql.WatchQueryOptions {
  GQLWatchOptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
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
            document: MUTATION_UPDATE_S_REQUIRED,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults);
}

extension GQLExtensionMutationUpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult> mutateUpdateSRequired(
          GQLOptionsMutationUpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery watchMutationUpdateSRequired(
          GQLWatchOptionsMutationUpdateSRequired options) =>
      this.watchMutation(options);
}

extension GQLResultExtensionMutationUpdateSRequired on graphql.QueryResult {
  MutationUpdateSRequired? get parsedDataMutationUpdateSRequired {
    final data = this.data;
    return data == null ? null : MutationUpdateSRequired.fromJson(data);
  }
}

class GQLFOptionsMutationUpdateSRequired extends graphql.MutationOptions {
  GQLFOptionsMutationUpdateSRequired(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSRequired? onCompleted,
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
                        : MutationUpdateSRequired.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_REQUIRED);
}

typedef GQLFRunMutationMutationUpdateSRequired = graphql.MultiSourceResult
    Function(VariablesMutationUpdateSRequired, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateSRequired = widgets.Widget Function(
    GQLFRunMutationMutationUpdateSRequired, graphql.QueryResult?);

class GQLFMutationUpdateSRequired extends graphql_flutter.Mutation {
  GQLFMutationUpdateSRequired(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateSRequired? options,
      required GQLFBuilderMutationUpdateSRequired builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateSRequired(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
