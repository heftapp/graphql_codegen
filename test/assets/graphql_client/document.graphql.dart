import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:async';
import 'package:graphql/client.dart' as graphql;
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

@JsonSerializable()
class VariablesQueryFetchSRequired extends JsonSerializable {
  VariablesQueryFetchSRequired({required this.name});

  @override
  factory VariablesQueryFetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchSRequiredFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchSRequiredToJson(this);
}

@JsonSerializable()
class QueryFetchSRequired extends JsonSerializable {
  QueryFetchSRequired({this.s});

  @override
  factory QueryFetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchSRequiredFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchSRequiredToJson(this);
}

const DOCUMENT_QUERY_FETCH_S_REQUIRED = const DocumentNode(definitions: [
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

class GraphQLClientOptionsQueryFetchSRequired extends graphql.QueryOptions {
  GraphQLClientOptionsQueryFetchSRequired(
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
            document: DOCUMENT_QUERY_FETCH_S_REQUIRED);
}

class GraphQLClientResultQueryFetchSRequired {
  GraphQLClientResultQueryFetchSRequired._(this.result, this.parsedData);

  factory GraphQLClientResultQueryFetchSRequired(graphql.QueryResult result) {
    final data = result.data;
    final parsedData = data == null ? null : QueryFetchSRequired.fromJson(data);
    return GraphQLClientResultQueryFetchSRequired._(result, parsedData);
  }

  final graphql.QueryResult result;

  final QueryFetchSRequired? parsedData;
}

extension GraphQLClientExtensionQueryFetchSRequired on graphql.GraphQLClient {
  Future<GraphQLClientResultQueryFetchSRequired> queryFetchSRequired(
          GraphQLClientOptionsQueryFetchSRequired options) async =>
      GraphQLClientResultQueryFetchSRequired(await this.query(options));
}

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

const DOCUMENT_QUERY_FETCH_S_NO_VARIABLES = const DocumentNode(definitions: [
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

class GraphQLClientOptionsQueryFetchSNoVariables extends graphql.QueryOptions {
  GraphQLClientOptionsQueryFetchSNoVariables(
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
            document: DOCUMENT_QUERY_FETCH_S_NO_VARIABLES);
}

class GraphQLClientResultQueryFetchSNoVariables {
  GraphQLClientResultQueryFetchSNoVariables._(this.result, this.parsedData);

  factory GraphQLClientResultQueryFetchSNoVariables(
      graphql.QueryResult result) {
    final data = result.data;
    final parsedData =
        data == null ? null : QueryFetchSNoVariables.fromJson(data);
    return GraphQLClientResultQueryFetchSNoVariables._(result, parsedData);
  }

  final graphql.QueryResult result;

  final QueryFetchSNoVariables? parsedData;
}

extension GraphQLClientExtensionQueryFetchSNoVariables
    on graphql.GraphQLClient {
  Future<GraphQLClientResultQueryFetchSNoVariables> queryFetchSNoVariables(
          [GraphQLClientOptionsQueryFetchSNoVariables? options]) async =>
      GraphQLClientResultQueryFetchSNoVariables(await this
          .query(options ?? GraphQLClientOptionsQueryFetchSNoVariables()));
}

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

const DOCUMENT_MUTATION_UPDATE_S_OPTIONAL = const DocumentNode(definitions: [
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
typedef GraphQLClientOnMutationCompletedMutationUpdateSOptional = FutureOr<void>
    Function(dynamic, MutationUpdateSOptional?);
typedef GraphQLClientOnMutationUpdateMutationUpdateSOptional
    = FutureOr<void> Function(
        graphql.GraphQLDataProxy, GraphQLClientResultMutationUpdateSOptional?);

class GraphQLClientOptionsMutationUpdateSOptional
    extends graphql.MutationOptions {
  GraphQLClientOptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GraphQLClientOnMutationCompletedMutationUpdateSOptional? onCompleted,
      GraphQLClientOnMutationUpdateMutationUpdateSOptional? update,
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
            update: update == null
                ? null
                : (cache, result) => update(
                    cache,
                    result == null
                        ? null
                        : GraphQLClientResultMutationUpdateSOptional(result)),
            onError: onError,
            document: DOCUMENT_MUTATION_UPDATE_S_OPTIONAL);
}

class GraphQLClientResultMutationUpdateSOptional {
  GraphQLClientResultMutationUpdateSOptional._(this.result, this.parsedData);

  factory GraphQLClientResultMutationUpdateSOptional(
      graphql.QueryResult result) {
    final data = result.data;
    final parsedData =
        data == null ? null : MutationUpdateSOptional.fromJson(data);
    return GraphQLClientResultMutationUpdateSOptional._(result, parsedData);
  }

  final graphql.QueryResult result;

  final MutationUpdateSOptional? parsedData;
}

extension GraphQLClientExtensionMutationUpdateSOptional
    on graphql.GraphQLClient {
  Future<GraphQLClientResultMutationUpdateSOptional> mutationUpdateSOptional(
          [GraphQLClientOptionsMutationUpdateSOptional? options]) async =>
      GraphQLClientResultMutationUpdateSOptional(await this
          .mutate(options ?? GraphQLClientOptionsMutationUpdateSOptional()));
}

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

const DOCUMENT_MUTATION_UPDATE_S_REQUIRED = const DocumentNode(definitions: [
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
typedef GraphQLClientOnMutationCompletedMutationUpdateSRequired = FutureOr<void>
    Function(dynamic, MutationUpdateSRequired?);
typedef GraphQLClientOnMutationUpdateMutationUpdateSRequired
    = FutureOr<void> Function(
        graphql.GraphQLDataProxy, GraphQLClientResultMutationUpdateSRequired?);

class GraphQLClientOptionsMutationUpdateSRequired
    extends graphql.MutationOptions {
  GraphQLClientOptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GraphQLClientOnMutationCompletedMutationUpdateSRequired? onCompleted,
      GraphQLClientOnMutationUpdateMutationUpdateSRequired? update,
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
            update: update == null
                ? null
                : (cache, result) => update(
                    cache,
                    result == null
                        ? null
                        : GraphQLClientResultMutationUpdateSRequired(result)),
            onError: onError,
            document: DOCUMENT_MUTATION_UPDATE_S_REQUIRED);
}

class GraphQLClientResultMutationUpdateSRequired {
  GraphQLClientResultMutationUpdateSRequired._(this.result, this.parsedData);

  factory GraphQLClientResultMutationUpdateSRequired(
      graphql.QueryResult result) {
    final data = result.data;
    final parsedData =
        data == null ? null : MutationUpdateSRequired.fromJson(data);
    return GraphQLClientResultMutationUpdateSRequired._(result, parsedData);
  }

  final graphql.QueryResult result;

  final MutationUpdateSRequired? parsedData;
}

extension GraphQLClientExtensionMutationUpdateSRequired
    on graphql.GraphQLClient {
  Future<GraphQLClientResultMutationUpdateSRequired> mutationUpdateSRequired(
          GraphQLClientOptionsMutationUpdateSRequired options) async =>
      GraphQLClientResultMutationUpdateSRequired(await this.mutate(options));
}

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
      GraphQLClientResultMutationUpdateSNoVariables> mutationUpdateSNoVariables(
          [GraphQLClientOptionsMutationUpdateSNoVariables? options]) async =>
      GraphQLClientResultMutationUpdateSNoVariables(await this
          .mutate(options ?? GraphQLClientOptionsMutationUpdateSNoVariables()));
}
