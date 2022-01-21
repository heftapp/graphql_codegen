import 'dart:async';
import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'main.graphql.g.dart';

@JsonSerializable()
class VariablesQueryFetchPerson extends JsonSerializable {
  VariablesQueryFetchPerson({required this.id});

  @override
  factory VariablesQueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchPersonFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchPersonToJson(this);
}

@JsonSerializable()
class QueryFetchPerson extends JsonSerializable {
  QueryFetchPerson({this.fetchPerson});

  @override
  factory QueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPersonFromJson(json);

  @JsonKey(name: 'fetch_person')
  final QueryFetchPerson$fetchPerson? fetchPerson;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPersonToJson(this);
}

const QUERY_FETCH_PERSON = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fetch_person'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PersonSummary'), directives: []),
              FieldNode(
                  name: NameNode(value: 'parents'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'PersonSummary'), directives: [])
                  ])),
              FieldNode(
                  name: NameNode(value: 'children'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'PersonSummary'), directives: [])
                  ]))
            ]))
      ])),
  FRAGMENT_PERSON_SUMMARY,
]);

class GQLOptionsQueryFetchPerson extends graphql.QueryOptions {
  GQLOptionsQueryFetchPerson(
      {String? operationName,
      required VariablesQueryFetchPerson variables,
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
            document: QUERY_FETCH_PERSON);
}

class GQLWatchOptionsQueryFetchPerson extends graphql.WatchQueryOptions {
  GQLWatchOptionsQueryFetchPerson(
      {String? operationName,
      required VariablesQueryFetchPerson variables,
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
            document: QUERY_FETCH_PERSON,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults);
}

class GQLFetchMoreOptionsQueryFetchPerson extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryFetchPerson(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryFetchPerson variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_FETCH_PERSON);
}

extension GQLExtensionQueryFetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult> queryFetchPerson(
          GQLOptionsQueryFetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery watchQueryFetchPerson(
          GQLWatchOptionsQueryFetchPerson options) =>
      this.watchQuery(options);
}

extension GQLResultExtensionQueryFetchPerson on graphql.QueryResult {
  QueryFetchPerson? get parsedDataQueryFetchPerson {
    final data = this.data;
    return data == null ? null : QueryFetchPerson.fromJson(data);
  }
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson(
      {this.nickname, required this.name, this.parents, this.children});

  @override
  factory QueryFetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPersonFromJson(json);

  final String? nickname;

  final String name;

  final List<QueryFetchPerson$fetchPerson$parents>? parents;

  final List<QueryFetchPerson$fetchPerson$children>? children;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPerson$fetchPersonToJson(this);
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$parents extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$parents({this.nickname, required this.name});

  @override
  factory QueryFetchPerson$fetchPerson$parents.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$parentsFromJson(json);

  final String? nickname;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$parentsToJson(this);
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$children extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$children({this.nickname, required this.name});

  @override
  factory QueryFetchPerson$fetchPerson$children.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$childrenFromJson(json);

  final String? nickname;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$childrenToJson(this);
}

@JsonSerializable()
class VariablesMutationUpdatePerson extends JsonSerializable {
  VariablesMutationUpdatePerson({required this.id});

  @override
  factory VariablesMutationUpdatePerson.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdatePersonFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdatePersonToJson(this);
}

@JsonSerializable()
class MutationUpdatePerson extends JsonSerializable {
  MutationUpdatePerson({this.updatePerson});

  @override
  factory MutationUpdatePerson.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdatePersonFromJson(json);

  @JsonKey(name: 'update_person')
  final MutationUpdatePerson$updatePerson? updatePerson;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdatePersonToJson(this);
}

const MUTATION_UPDATE_PERSON = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdatePerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'update_person'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'full_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
]);
typedef GQLOnMutationCompletedMutationUpdatePerson = FutureOr<void> Function(
    dynamic, MutationUpdatePerson?);

class GQLOptionsMutationUpdatePerson extends graphql.MutationOptions {
  GQLOptionsMutationUpdatePerson(
      {String? operationName,
      required VariablesMutationUpdatePerson variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdatePerson? onCompleted,
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
                : (data) => onCompleted(data,
                    data == null ? null : MutationUpdatePerson.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_PERSON);
}

class GQLWatchOptionsMutationUpdatePerson extends graphql.WatchQueryOptions {
  GQLWatchOptionsMutationUpdatePerson(
      {String? operationName,
      required VariablesMutationUpdatePerson variables,
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
            document: MUTATION_UPDATE_PERSON,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults);
}

extension GQLExtensionMutationUpdatePerson on graphql.GraphQLClient {
  Future<graphql.QueryResult> mutateUpdatePerson(
          GQLOptionsMutationUpdatePerson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery watchMutationUpdatePerson(
          GQLWatchOptionsMutationUpdatePerson options) =>
      this.watchMutation(options);
}

extension GQLResultExtensionMutationUpdatePerson on graphql.QueryResult {
  MutationUpdatePerson? get parsedDataMutationUpdatePerson {
    final data = this.data;
    return data == null ? null : MutationUpdatePerson.fromJson(data);
  }
}

@JsonSerializable()
class MutationUpdatePerson$updatePerson extends JsonSerializable {
  MutationUpdatePerson$updatePerson({required this.fullName});

  @override
  factory MutationUpdatePerson$updatePerson.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdatePerson$updatePersonFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdatePerson$updatePersonToJson(this);
}
