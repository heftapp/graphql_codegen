import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SubscriptionNoArgs {
  SubscriptionNoArgs({this.listenForChange, required this.$__typename});

  @override
  factory SubscriptionNoArgs.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionNoArgsFromJson(json);

  final SubscriptionNoArgs$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$SubscriptionNoArgsToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionNoArgs) || runtimeType != other.runtimeType)
      return false;
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionNoArgs on SubscriptionNoArgs {
  SubscriptionNoArgs copyWith(
          {SubscriptionNoArgs$listenForChange? Function()? listenForChange,
          String? $__typename}) =>
      SubscriptionNoArgs(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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

@JsonSerializable(explicitToJson: true)
class SubscriptionNoArgs$listenForChange {
  SubscriptionNoArgs$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory SubscriptionNoArgs$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionNoArgs$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$SubscriptionNoArgs$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionNoArgs$listenForChange) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionNoArgs$listenForChange
    on SubscriptionNoArgs$listenForChange {
  SubscriptionNoArgs$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      SubscriptionNoArgs$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class VariablesSubscriptionRequiredArg {
  VariablesSubscriptionRequiredArg({required this.name});

  @override
  factory VariablesSubscriptionRequiredArg.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesSubscriptionRequiredArgFromJson(json);

  final String name;

  Map<String, dynamic> toJson() =>
      _$VariablesSubscriptionRequiredArgToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesSubscriptionRequiredArg) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class SubscriptionRequiredArg {
  SubscriptionRequiredArg({this.listenForChange, required this.$__typename});

  @override
  factory SubscriptionRequiredArg.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionRequiredArgFromJson(json);

  final SubscriptionRequiredArg$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$SubscriptionRequiredArgToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionRequiredArg) || runtimeType != other.runtimeType)
      return false;
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionRequiredArg on SubscriptionRequiredArg {
  SubscriptionRequiredArg copyWith(
          {SubscriptionRequiredArg$listenForChange? Function()? listenForChange,
          String? $__typename}) =>
      SubscriptionRequiredArg(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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

@JsonSerializable(explicitToJson: true)
class SubscriptionRequiredArg$listenForChange {
  SubscriptionRequiredArg$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory SubscriptionRequiredArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionRequiredArg$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$SubscriptionRequiredArg$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionRequiredArg$listenForChange) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionRequiredArg$listenForChange
    on SubscriptionRequiredArg$listenForChange {
  SubscriptionRequiredArg$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      SubscriptionRequiredArg$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class VariablesSubscriptionOptionalArg {
  VariablesSubscriptionOptionalArg({this.name});

  @override
  factory VariablesSubscriptionOptionalArg.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesSubscriptionOptionalArgFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() =>
      _$VariablesSubscriptionOptionalArgToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesSubscriptionOptionalArg) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class SubscriptionOptionalArg {
  SubscriptionOptionalArg({this.listenForChange, required this.$__typename});

  @override
  factory SubscriptionOptionalArg.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOptionalArgFromJson(json);

  final SubscriptionOptionalArg$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$SubscriptionOptionalArgToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionOptionalArg) || runtimeType != other.runtimeType)
      return false;
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionOptionalArg on SubscriptionOptionalArg {
  SubscriptionOptionalArg copyWith(
          {SubscriptionOptionalArg$listenForChange? Function()? listenForChange,
          String? $__typename}) =>
      SubscriptionOptionalArg(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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

@JsonSerializable(explicitToJson: true)
class SubscriptionOptionalArg$listenForChange {
  SubscriptionOptionalArg$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory SubscriptionOptionalArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionOptionalArg$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$SubscriptionOptionalArg$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionOptionalArg$listenForChange) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionSubscriptionOptionalArg$listenForChange
    on SubscriptionOptionalArg$listenForChange {
  SubscriptionOptionalArg$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      SubscriptionOptionalArg$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const POSSIBLE_TYPES_MAP = const {};
