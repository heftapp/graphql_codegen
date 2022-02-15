import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable()
class SubscriptionNoArgs extends JsonSerializable {
  SubscriptionNoArgs({this.listenForChange});

  @override
  factory SubscriptionNoArgs.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionNoArgsFromJson(json);

  final SubscriptionNoArgs$listenForChange? listenForChange;

  @override
  Map<String, dynamic> toJson() => _$SubscriptionNoArgsToJson(this);
}

const SUBSCRIPTION_NO_ARGS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'NoArgs'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'listenForChange'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
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
SubscriptionNoArgs _parserFnSubscriptionNoArgs(Map<String, dynamic> data) =>
    SubscriptionNoArgs.fromJson(data);

class OptionsSubscriptionNoArgs
    extends graphql.SubscriptionOptions<SubscriptionNoArgs> {
  OptionsSubscriptionNoArgs(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: SUBSCRIPTION_NO_ARGS,
            parserFn: _parserFnSubscriptionNoArgs);
}

class WatchOptionsSubscriptionNoArgs
    extends graphql.WatchQueryOptions<SubscriptionNoArgs> {
  WatchOptionsSubscriptionNoArgs(
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
            document: SUBSCRIPTION_NO_ARGS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnSubscriptionNoArgs);
}

class FetchMoreOptionsSubscriptionNoArgs extends graphql.FetchMoreOptions {
  FetchMoreOptionsSubscriptionNoArgs({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: SUBSCRIPTION_NO_ARGS);
}

extension ClientExtensionSubscriptionNoArgs on graphql.GraphQLClient {
  Stream<graphql.QueryResult<SubscriptionNoArgs>> subscribeNoArgs(
          [OptionsSubscriptionNoArgs? options]) =>
      this.subscribe(options ?? OptionsSubscriptionNoArgs());
  graphql.ObservableQuery<SubscriptionNoArgs> watchSubscriptionNoArgs(
          [WatchOptionsSubscriptionNoArgs? options]) =>
      this.watchQuery(options ?? WatchOptionsSubscriptionNoArgs());
}

graphql.QueryResult<SubscriptionNoArgs> useSubscriptionNoArgs(
        OptionsSubscriptionNoArgs options) =>
    graphql_flutter.useSubscription(options);

class SubscriptionNoArgsWidget
    extends graphql_flutter.Subscription<SubscriptionNoArgs> {
  SubscriptionNoArgsWidget(
      {widgets.Key? key,
      OptionsSubscriptionNoArgs? options,
      required graphql_flutter.SubscriptionBuilder<SubscriptionNoArgs> builder,
      graphql_flutter.OnSubscriptionResult<SubscriptionNoArgs>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? OptionsSubscriptionNoArgs(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable()
class SubscriptionNoArgs$listenForChange extends JsonSerializable {
  SubscriptionNoArgs$listenForChange({required this.name});

  @override
  factory SubscriptionNoArgs$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionNoArgs$listenForChangeFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionNoArgs$listenForChangeToJson(this);
}

@JsonSerializable()
class VariablesSubscriptionRequiredArg extends JsonSerializable {
  VariablesSubscriptionRequiredArg({required this.name});

  @override
  factory VariablesSubscriptionRequiredArg.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesSubscriptionRequiredArgFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesSubscriptionRequiredArgToJson(this);
}

@JsonSerializable()
class SubscriptionRequiredArg extends JsonSerializable {
  SubscriptionRequiredArg({this.listenForChange});

  @override
  factory SubscriptionRequiredArg.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionRequiredArgFromJson(json);

  final SubscriptionRequiredArg$listenForChange? listenForChange;

  @override
  Map<String, dynamic> toJson() => _$SubscriptionRequiredArgToJson(this);
}

const SUBSCRIPTION_REQUIRED_ARG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'RequiredArg'),
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
            name: NameNode(value: 'listenForChange'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
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
SubscriptionRequiredArg _parserFnSubscriptionRequiredArg(
        Map<String, dynamic> data) =>
    SubscriptionRequiredArg.fromJson(data);

class OptionsSubscriptionRequiredArg
    extends graphql.SubscriptionOptions<SubscriptionRequiredArg> {
  OptionsSubscriptionRequiredArg(
      {String? operationName,
      required VariablesSubscriptionRequiredArg variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: SUBSCRIPTION_REQUIRED_ARG,
            parserFn: _parserFnSubscriptionRequiredArg);
}

class WatchOptionsSubscriptionRequiredArg
    extends graphql.WatchQueryOptions<SubscriptionRequiredArg> {
  WatchOptionsSubscriptionRequiredArg(
      {String? operationName,
      required VariablesSubscriptionRequiredArg variables,
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
            document: SUBSCRIPTION_REQUIRED_ARG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnSubscriptionRequiredArg);
}

class FetchMoreOptionsSubscriptionRequiredArg extends graphql.FetchMoreOptions {
  FetchMoreOptionsSubscriptionRequiredArg(
      {required graphql.UpdateQuery updateQuery,
      required VariablesSubscriptionRequiredArg variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: SUBSCRIPTION_REQUIRED_ARG);
}

extension ClientExtensionSubscriptionRequiredArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<SubscriptionRequiredArg>> subscribeRequiredArg(
          OptionsSubscriptionRequiredArg options) =>
      this.subscribe(options);
  graphql.ObservableQuery<SubscriptionRequiredArg> watchSubscriptionRequiredArg(
          WatchOptionsSubscriptionRequiredArg options) =>
      this.watchQuery(options);
}

graphql.QueryResult<SubscriptionRequiredArg> useSubscriptionRequiredArg(
        OptionsSubscriptionRequiredArg options) =>
    graphql_flutter.useSubscription(options);

class SubscriptionRequiredArgWidget
    extends graphql_flutter.Subscription<SubscriptionRequiredArg> {
  SubscriptionRequiredArgWidget(
      {widgets.Key? key,
      required OptionsSubscriptionRequiredArg options,
      required graphql_flutter.SubscriptionBuilder<SubscriptionRequiredArg>
          builder,
      graphql_flutter.OnSubscriptionResult<SubscriptionRequiredArg>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options,
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable()
class SubscriptionRequiredArg$listenForChange extends JsonSerializable {
  SubscriptionRequiredArg$listenForChange({required this.name});

  @override
  factory SubscriptionRequiredArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionRequiredArg$listenForChangeFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionRequiredArg$listenForChangeToJson(this);
}

@JsonSerializable()
class VariablesSubscriptionOptionalArg extends JsonSerializable {
  VariablesSubscriptionOptionalArg({this.name});

  @override
  factory VariablesSubscriptionOptionalArg.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesSubscriptionOptionalArgFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesSubscriptionOptionalArgToJson(this);
}

@JsonSerializable()
class SubscriptionOptionalArg extends JsonSerializable {
  SubscriptionOptionalArg({this.listenForChange});

  @override
  factory SubscriptionOptionalArg.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOptionalArgFromJson(json);

  final SubscriptionOptionalArg$listenForChange? listenForChange;

  @override
  Map<String, dynamic> toJson() => _$SubscriptionOptionalArgToJson(this);
}

const SUBSCRIPTION_OPTIONAL_ARG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'OptionalArg'),
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
            name: NameNode(value: 'listenForChange'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
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
SubscriptionOptionalArg _parserFnSubscriptionOptionalArg(
        Map<String, dynamic> data) =>
    SubscriptionOptionalArg.fromJson(data);

class OptionsSubscriptionOptionalArg
    extends graphql.SubscriptionOptions<SubscriptionOptionalArg> {
  OptionsSubscriptionOptionalArg(
      {String? operationName,
      VariablesSubscriptionOptionalArg? variables,
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
            document: SUBSCRIPTION_OPTIONAL_ARG,
            parserFn: _parserFnSubscriptionOptionalArg);
}

class WatchOptionsSubscriptionOptionalArg
    extends graphql.WatchQueryOptions<SubscriptionOptionalArg> {
  WatchOptionsSubscriptionOptionalArg(
      {String? operationName,
      VariablesSubscriptionOptionalArg? variables,
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
            document: SUBSCRIPTION_OPTIONAL_ARG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnSubscriptionOptionalArg);
}

class FetchMoreOptionsSubscriptionOptionalArg extends graphql.FetchMoreOptions {
  FetchMoreOptionsSubscriptionOptionalArg(
      {required graphql.UpdateQuery updateQuery,
      VariablesSubscriptionOptionalArg? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: SUBSCRIPTION_OPTIONAL_ARG);
}

extension ClientExtensionSubscriptionOptionalArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<SubscriptionOptionalArg>> subscribeOptionalArg(
          [OptionsSubscriptionOptionalArg? options]) =>
      this.subscribe(options ?? OptionsSubscriptionOptionalArg());
  graphql.ObservableQuery<SubscriptionOptionalArg> watchSubscriptionOptionalArg(
          [WatchOptionsSubscriptionOptionalArg? options]) =>
      this.watchQuery(options ?? WatchOptionsSubscriptionOptionalArg());
}

graphql.QueryResult<SubscriptionOptionalArg> useSubscriptionOptionalArg(
        OptionsSubscriptionOptionalArg options) =>
    graphql_flutter.useSubscription(options);

class SubscriptionOptionalArgWidget
    extends graphql_flutter.Subscription<SubscriptionOptionalArg> {
  SubscriptionOptionalArgWidget(
      {widgets.Key? key,
      OptionsSubscriptionOptionalArg? options,
      required graphql_flutter.SubscriptionBuilder<SubscriptionOptionalArg>
          builder,
      graphql_flutter.OnSubscriptionResult<SubscriptionOptionalArg>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? OptionsSubscriptionOptionalArg(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable()
class SubscriptionOptionalArg$listenForChange extends JsonSerializable {
  SubscriptionOptionalArg$listenForChange({required this.name});

  @override
  factory SubscriptionOptionalArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionOptionalArg$listenForChangeFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionOptionalArg$listenForChangeToJson(this);
}

const POSSIBLE_TYPES_MAP = const {};
