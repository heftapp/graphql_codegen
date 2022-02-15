import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
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
                        name: NameNode(value: 'PersonSummary'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'children'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'PersonSummary'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_PERSON_SUMMARY,
]);
QueryFetchPerson _parserFnQueryFetchPerson(Map<String, dynamic> data) =>
    QueryFetchPerson.fromJson(data);

class OptionsQueryFetchPerson extends graphql.QueryOptions<QueryFetchPerson> {
  OptionsQueryFetchPerson(
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
            document: QUERY_FETCH_PERSON,
            parserFn: _parserFnQueryFetchPerson);
}

class WatchOptionsQueryFetchPerson
    extends graphql.WatchQueryOptions<QueryFetchPerson> {
  WatchOptionsQueryFetchPerson(
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
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchPerson);
}

class FetchMoreOptionsQueryFetchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchPerson(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryFetchPerson variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_FETCH_PERSON);
}

extension ClientExtensionQueryFetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchPerson>> queryFetchPerson(
          OptionsQueryFetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryFetchPerson> watchQueryFetchPerson(
          WatchOptionsQueryFetchPerson options) =>
      this.watchQuery(options);
}

graphql_flutter.QueryHookResult<QueryFetchPerson> useQueryFetchPerson(
        OptionsQueryFetchPerson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<QueryFetchPerson> useWatchQueryFetchPerson(
        WatchOptionsQueryFetchPerson options) =>
    graphql_flutter.useWatchQuery(options);

class QueryFetchPersonWidget extends graphql_flutter.Query<QueryFetchPerson> {
  QueryFetchPersonWidget(
      {widgets.Key? key,
      required OptionsQueryFetchPerson options,
      required graphql_flutter.QueryBuilder<QueryFetchPerson> builder})
      : super(key: key, options: options, builder: builder);
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationUpdatePerson _parserFnMutationUpdatePerson(Map<String, dynamic> data) =>
    MutationUpdatePerson.fromJson(data);
typedef OnMutationCompletedMutationUpdatePerson = FutureOr<void> Function(
    dynamic, MutationUpdatePerson?);

class OptionsMutationUpdatePerson
    extends graphql.MutationOptions<MutationUpdatePerson> {
  OptionsMutationUpdatePerson(
      {String? operationName,
      required VariablesMutationUpdatePerson variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdatePerson? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationUpdatePerson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_PERSON,
            parserFn: _parserFnMutationUpdatePerson);

  final OnMutationCompletedMutationUpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdatePerson
    extends graphql.WatchQueryOptions<MutationUpdatePerson> {
  WatchOptionsMutationUpdatePerson(
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
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdatePerson);
}

extension ClientExtensionMutationUpdatePerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdatePerson>> mutateUpdatePerson(
          OptionsMutationUpdatePerson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdatePerson> watchMutationUpdatePerson(
          WatchOptionsMutationUpdatePerson options) =>
      this.watchMutation(options);
}

graphql_flutter.MutationHookResult<MutationUpdatePerson>
    useMutationUpdatePerson(OptionsMutationUpdatePerson options) =>
        graphql_flutter.useMutation(options);
graphql.ObservableQuery<MutationUpdatePerson> useWatchMutationUpdatePerson(
        WatchOptionsMutationUpdatePerson options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdatePerson
    extends graphql.MutationOptions<MutationUpdatePerson> {
  WidgetOptionsMutationUpdatePerson(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdatePerson? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdatePerson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_PERSON,
            parserFn: _parserFnMutationUpdatePerson);

  final OnMutationCompletedMutationUpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdatePerson
    = graphql.MultiSourceResult<MutationUpdatePerson>
        Function(VariablesMutationUpdatePerson, {Object? optimisticResult});
typedef BuilderMutationUpdatePerson = widgets.Widget Function(
    RunMutationMutationUpdatePerson,
    graphql.QueryResult<MutationUpdatePerson>?);

class MutationUpdatePersonWidget
    extends graphql_flutter.Mutation<MutationUpdatePerson> {
  MutationUpdatePersonWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdatePerson? options,
      required BuilderMutationUpdatePerson builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdatePerson(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
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

@JsonSerializable()
class VariablesSubscriptionWatchPerson extends JsonSerializable {
  VariablesSubscriptionWatchPerson({this.id});

  @override
  factory VariablesSubscriptionWatchPerson.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesSubscriptionWatchPersonFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesSubscriptionWatchPersonToJson(this);
}

@JsonSerializable()
class SubscriptionWatchPerson extends JsonSerializable {
  SubscriptionWatchPerson({this.watchPerson});

  @override
  factory SubscriptionWatchPerson.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionWatchPersonFromJson(json);

  @JsonKey(name: 'watch_person')
  final SubscriptionWatchPerson$watchPerson? watchPerson;

  @override
  Map<String, dynamic> toJson() => _$SubscriptionWatchPersonToJson(this);
}

const SUBSCRIPTION_WATCH_PERSON = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'WatchPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'watch_person'),
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
SubscriptionWatchPerson _parserFnSubscriptionWatchPerson(
        Map<String, dynamic> data) =>
    SubscriptionWatchPerson.fromJson(data);

class OptionsSubscriptionWatchPerson
    extends graphql.SubscriptionOptions<SubscriptionWatchPerson> {
  OptionsSubscriptionWatchPerson(
      {String? operationName,
      VariablesSubscriptionWatchPerson? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: SUBSCRIPTION_WATCH_PERSON,
            parserFn: _parserFnSubscriptionWatchPerson);
}

class WatchOptionsSubscriptionWatchPerson
    extends graphql.WatchQueryOptions<SubscriptionWatchPerson> {
  WatchOptionsSubscriptionWatchPerson(
      {String? operationName,
      VariablesSubscriptionWatchPerson? variables,
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
            document: SUBSCRIPTION_WATCH_PERSON,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnSubscriptionWatchPerson);
}

class FetchMoreOptionsSubscriptionWatchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptionsSubscriptionWatchPerson(
      {required graphql.UpdateQuery updateQuery,
      VariablesSubscriptionWatchPerson? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: SUBSCRIPTION_WATCH_PERSON);
}

extension ClientExtensionSubscriptionWatchPerson on graphql.GraphQLClient {
  Stream<graphql.QueryResult<SubscriptionWatchPerson>> subscribeWatchPerson(
          [OptionsSubscriptionWatchPerson? options]) =>
      this.subscribe(options ?? OptionsSubscriptionWatchPerson());
  graphql.ObservableQuery<SubscriptionWatchPerson> watchSubscriptionWatchPerson(
          [WatchOptionsSubscriptionWatchPerson? options]) =>
      this.watchQuery(options ?? WatchOptionsSubscriptionWatchPerson());
}

graphql.QueryResult<SubscriptionWatchPerson> useSubscriptionWatchPerson(
        OptionsSubscriptionWatchPerson options) =>
    graphql_flutter.useSubscription(options);

class SubscriptionWatchPersonWidget
    extends graphql_flutter.Subscription<SubscriptionWatchPerson> {
  SubscriptionWatchPersonWidget(
      {widgets.Key? key,
      OptionsSubscriptionWatchPerson? options,
      required graphql_flutter.SubscriptionBuilder<SubscriptionWatchPerson>
          builder,
      graphql_flutter.OnSubscriptionResult<SubscriptionWatchPerson>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? OptionsSubscriptionWatchPerson(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable()
class SubscriptionWatchPerson$watchPerson extends JsonSerializable {
  SubscriptionWatchPerson$watchPerson({required this.fullName});

  @override
  factory SubscriptionWatchPerson$watchPerson.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionWatchPerson$watchPersonFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionWatchPerson$watchPersonToJson(this);
}
