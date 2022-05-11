import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription$NoArgs {
  Subscription$NoArgs({this.listenForChange, required this.$__typename});

  @override
  factory Subscription$NoArgs.fromJson(Map<String, dynamic> json) =>
      _$Subscription$NoArgsFromJson(json);

  final Subscription$NoArgs$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Subscription$NoArgsToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$NoArgs) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Subscription$NoArgs on Subscription$NoArgs {
  Subscription$NoArgs copyWith(
          {Subscription$NoArgs$listenForChange? Function()? listenForChange,
          String? $__typename}) =>
      Subscription$NoArgs(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentNoArgs = DocumentNode(definitions: [
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
Subscription$NoArgs _parserFn$Subscription$NoArgs(Map<String, dynamic> data) =>
    Subscription$NoArgs.fromJson(data);

class Options$Subscription$NoArgs
    extends graphql.SubscriptionOptions<Subscription$NoArgs> {
  Options$Subscription$NoArgs(
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
            document: queryDocumentNoArgs,
            parserFn: _parserFn$Subscription$NoArgs);
}

class WatchOptions$Subscription$NoArgs
    extends graphql.WatchQueryOptions<Subscription$NoArgs> {
  WatchOptions$Subscription$NoArgs(
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
            document: queryDocumentNoArgs,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Subscription$NoArgs);
}

class FetchMoreOptions$Subscription$NoArgs extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NoArgs(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: queryDocumentNoArgs);
}

extension ClientExtension$Subscription$NoArgs on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NoArgs>> subscribe$NoArgs(
          [Options$Subscription$NoArgs? options]) =>
      this.subscribe(options ?? Options$Subscription$NoArgs());
  graphql.ObservableQuery<Subscription$NoArgs> watchSubscription$NoArgs(
          [WatchOptions$Subscription$NoArgs? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$NoArgs());
}

graphql.QueryResult<Subscription$NoArgs> useSubscription$NoArgs(
        Options$Subscription$NoArgs options) =>
    graphql_flutter.useSubscription(options);

class Subscription$NoArgs$Widget
    extends graphql_flutter.Subscription<Subscription$NoArgs> {
  Subscription$NoArgs$Widget(
      {widgets.Key? key,
      Options$Subscription$NoArgs? options,
      required graphql_flutter.SubscriptionBuilder<Subscription$NoArgs> builder,
      graphql_flutter.OnSubscriptionResult<Subscription$NoArgs>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? Options$Subscription$NoArgs(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable(explicitToJson: true)
class Subscription$NoArgs$listenForChange {
  Subscription$NoArgs$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory Subscription$NoArgs$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$Subscription$NoArgs$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Subscription$NoArgs$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$NoArgs$listenForChange) ||
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

extension UtilityExtension$Subscription$NoArgs$listenForChange
    on Subscription$NoArgs$listenForChange {
  Subscription$NoArgs$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      Subscription$NoArgs$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Subscription$RequiredArg {
  Variables$Subscription$RequiredArg({required this.name});

  @override
  factory Variables$Subscription$RequiredArg.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Subscription$RequiredArgFromJson(json);

  final String name;

  Map<String, dynamic> toJson() =>
      _$Variables$Subscription$RequiredArgToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Subscription$RequiredArg) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription$RequiredArg {
  Subscription$RequiredArg({this.listenForChange, required this.$__typename});

  @override
  factory Subscription$RequiredArg.fromJson(Map<String, dynamic> json) =>
      _$Subscription$RequiredArgFromJson(json);

  final Subscription$RequiredArg$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Subscription$RequiredArgToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$RequiredArg) ||
        runtimeType != other.runtimeType) return false;
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Subscription$RequiredArg
    on Subscription$RequiredArg {
  Subscription$RequiredArg copyWith(
          {Subscription$RequiredArg$listenForChange? Function()?
              listenForChange,
          String? $__typename}) =>
      Subscription$RequiredArg(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentRequiredArg = DocumentNode(definitions: [
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
Subscription$RequiredArg _parserFn$Subscription$RequiredArg(
        Map<String, dynamic> data) =>
    Subscription$RequiredArg.fromJson(data);

class Options$Subscription$RequiredArg
    extends graphql.SubscriptionOptions<Subscription$RequiredArg> {
  Options$Subscription$RequiredArg(
      {String? operationName,
      required Variables$Subscription$RequiredArg variables,
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
            document: queryDocumentRequiredArg,
            parserFn: _parserFn$Subscription$RequiredArg);
}

class WatchOptions$Subscription$RequiredArg
    extends graphql.WatchQueryOptions<Subscription$RequiredArg> {
  WatchOptions$Subscription$RequiredArg(
      {String? operationName,
      required Variables$Subscription$RequiredArg variables,
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
            document: queryDocumentRequiredArg,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Subscription$RequiredArg);
}

class FetchMoreOptions$Subscription$RequiredArg
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$RequiredArg(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Subscription$RequiredArg variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentRequiredArg);
}

extension ClientExtension$Subscription$RequiredArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$RequiredArg>> subscribe$RequiredArg(
          Options$Subscription$RequiredArg options) =>
      this.subscribe(options);
  graphql.ObservableQuery<Subscription$RequiredArg>
      watchSubscription$RequiredArg(
              WatchOptions$Subscription$RequiredArg options) =>
          this.watchQuery(options);
}

graphql.QueryResult<Subscription$RequiredArg> useSubscription$RequiredArg(
        Options$Subscription$RequiredArg options) =>
    graphql_flutter.useSubscription(options);

class Subscription$RequiredArg$Widget
    extends graphql_flutter.Subscription<Subscription$RequiredArg> {
  Subscription$RequiredArg$Widget(
      {widgets.Key? key,
      required Options$Subscription$RequiredArg options,
      required graphql_flutter.SubscriptionBuilder<Subscription$RequiredArg>
          builder,
      graphql_flutter.OnSubscriptionResult<Subscription$RequiredArg>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options,
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable(explicitToJson: true)
class Subscription$RequiredArg$listenForChange {
  Subscription$RequiredArg$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory Subscription$RequiredArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$Subscription$RequiredArg$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Subscription$RequiredArg$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$RequiredArg$listenForChange) ||
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

extension UtilityExtension$Subscription$RequiredArg$listenForChange
    on Subscription$RequiredArg$listenForChange {
  Subscription$RequiredArg$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      Subscription$RequiredArg$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Subscription$OptionalArg {
  Variables$Subscription$OptionalArg({this.name});

  @override
  factory Variables$Subscription$OptionalArg.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Subscription$OptionalArgFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() =>
      _$Variables$Subscription$OptionalArgToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Subscription$OptionalArg) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription$OptionalArg {
  Subscription$OptionalArg({this.listenForChange, required this.$__typename});

  @override
  factory Subscription$OptionalArg.fromJson(Map<String, dynamic> json) =>
      _$Subscription$OptionalArgFromJson(json);

  final Subscription$OptionalArg$listenForChange? listenForChange;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Subscription$OptionalArgToJson(this);
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listenForChange, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$OptionalArg) ||
        runtimeType != other.runtimeType) return false;
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Subscription$OptionalArg
    on Subscription$OptionalArg {
  Subscription$OptionalArg copyWith(
          {Subscription$OptionalArg$listenForChange? Function()?
              listenForChange,
          String? $__typename}) =>
      Subscription$OptionalArg(
          listenForChange: listenForChange == null
              ? this.listenForChange
              : listenForChange(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentOptionalArg = DocumentNode(definitions: [
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
Subscription$OptionalArg _parserFn$Subscription$OptionalArg(
        Map<String, dynamic> data) =>
    Subscription$OptionalArg.fromJson(data);

class Options$Subscription$OptionalArg
    extends graphql.SubscriptionOptions<Subscription$OptionalArg> {
  Options$Subscription$OptionalArg(
      {String? operationName,
      Variables$Subscription$OptionalArg? variables,
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
            document: queryDocumentOptionalArg,
            parserFn: _parserFn$Subscription$OptionalArg);
}

class WatchOptions$Subscription$OptionalArg
    extends graphql.WatchQueryOptions<Subscription$OptionalArg> {
  WatchOptions$Subscription$OptionalArg(
      {String? operationName,
      Variables$Subscription$OptionalArg? variables,
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
            document: queryDocumentOptionalArg,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Subscription$OptionalArg);
}

class FetchMoreOptions$Subscription$OptionalArg
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OptionalArg(
      {required graphql.UpdateQuery updateQuery,
      Variables$Subscription$OptionalArg? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: queryDocumentOptionalArg);
}

extension ClientExtension$Subscription$OptionalArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OptionalArg>> subscribe$OptionalArg(
          [Options$Subscription$OptionalArg? options]) =>
      this.subscribe(options ?? Options$Subscription$OptionalArg());
  graphql.ObservableQuery<Subscription$OptionalArg>
      watchSubscription$OptionalArg(
              [WatchOptions$Subscription$OptionalArg? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OptionalArg());
}

graphql.QueryResult<Subscription$OptionalArg> useSubscription$OptionalArg(
        Options$Subscription$OptionalArg options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OptionalArg$Widget
    extends graphql_flutter.Subscription<Subscription$OptionalArg> {
  Subscription$OptionalArg$Widget(
      {widgets.Key? key,
      Options$Subscription$OptionalArg? options,
      required graphql_flutter.SubscriptionBuilder<Subscription$OptionalArg>
          builder,
      graphql_flutter.OnSubscriptionResult<Subscription$OptionalArg>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? Options$Subscription$OptionalArg(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable(explicitToJson: true)
class Subscription$OptionalArg$listenForChange {
  Subscription$OptionalArg$listenForChange(
      {required this.name, required this.$__typename});

  @override
  factory Subscription$OptionalArg$listenForChange.fromJson(
          Map<String, dynamic> json) =>
      _$Subscription$OptionalArg$listenForChangeFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Subscription$OptionalArg$listenForChangeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$OptionalArg$listenForChange) ||
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

extension UtilityExtension$Subscription$OptionalArg$listenForChange
    on Subscription$OptionalArg$listenForChange {
  Subscription$OptionalArg$listenForChange copyWith(
          {String? name, String? $__typename}) =>
      Subscription$OptionalArg$listenForChange(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const possibleTypesMap = {};
