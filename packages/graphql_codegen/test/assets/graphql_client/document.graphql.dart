import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class FragmentNoVariables extends JsonSerializable {
  FragmentNoVariables({this.s});

  @override
  factory FragmentNoVariables.fromJson(Map<String, dynamic> json) =>
      _$FragmentNoVariablesFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$FragmentNoVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentNoVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const FRAGMENT_NO_VARIABLES = const FragmentDefinitionNode(
    name: NameNode(value: 'NoVariables'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 's'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(value: 'name', isBlock: false))
          ],
          directives: [],
          selectionSet: null)
    ]));

extension ClientExtensionFragmentNoVariables on graphql.GraphQLClient {
  void writeFragmentNoVariables(
          {required FragmentNoVariables data,
          required Map<String, dynamic> idFields,
          Map<String, dynamic> variables = const {},
          broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: graphql.Fragment(
                  document:
                      const DocumentNode(definitions: [FRAGMENT_NO_VARIABLES])),
              variables: variables),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentNoVariables? readFragmentNoVariables(
      {required Map<String, dynamic> idFields,
      Map<String, dynamic> variables = const {},
      optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: graphql.Fragment(
                document:
                    const DocumentNode(definitions: [FRAGMENT_NO_VARIABLES])),
            variables: variables),
        optimistic: optimistic);
    return result == null ? null : FragmentNoVariables.fromJson(result);
  }
}

@JsonSerializable()
class FragmentWithVariables extends JsonSerializable {
  FragmentWithVariables({this.s});

  @override
  factory FragmentWithVariables.fromJson(Map<String, dynamic> json) =>
      _$FragmentWithVariablesFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$FragmentWithVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentWithVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const FRAGMENT_WITH_VARIABLES = const FragmentDefinitionNode(
    name: NameNode(value: 'WithVariables'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
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
    ]));

extension ClientExtensionFragmentWithVariables on graphql.GraphQLClient {
  void writeFragmentWithVariables(
          {required FragmentWithVariables data,
          required Map<String, dynamic> idFields,
          Map<String, dynamic> variables = const {},
          broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: graphql.Fragment(
                  document: const DocumentNode(
                      definitions: [FRAGMENT_WITH_VARIABLES])),
              variables: variables),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentWithVariables? readFragmentWithVariables(
      {required Map<String, dynamic> idFields,
      Map<String, dynamic> variables = const {},
      optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: graphql.Fragment(
                document:
                    const DocumentNode(definitions: [FRAGMENT_WITH_VARIABLES])),
            variables: variables),
        optimistic: optimistic);
    return result == null ? null : FragmentWithVariables.fromJson(result);
  }
}

@JsonSerializable()
class VariablesQueryFetchSOptional extends JsonSerializable {
  VariablesQueryFetchSOptional({this.name});

  @override
  factory VariablesQueryFetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryFetchSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryFetchSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryFetchSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const QUERY_FETCH_S_OPTIONAL = const DocumentNode(definitions: [
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
QueryFetchSOptional _parserFnQueryFetchSOptional(Map<String, dynamic> data) =>
    QueryFetchSOptional.fromJson(data);

class OptionsQueryFetchSOptional
    extends graphql.QueryOptions<QueryFetchSOptional> {
  OptionsQueryFetchSOptional(
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
            document: QUERY_FETCH_S_OPTIONAL,
            parserFn: _parserFnQueryFetchSOptional);
}

class WatchOptionsQueryFetchSOptional
    extends graphql.WatchQueryOptions<QueryFetchSOptional> {
  WatchOptionsQueryFetchSOptional(
      {String? operationName,
      VariablesQueryFetchSOptional? variables,
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
            document: QUERY_FETCH_S_OPTIONAL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSOptional);
}

class FetchMoreOptionsQueryFetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSOptional(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryFetchSOptional? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_FETCH_S_OPTIONAL);
}

extension ClientExtensionQueryFetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSOptional>> queryFetchSOptional(
          [OptionsQueryFetchSOptional? options]) async =>
      await this.query(options ?? OptionsQueryFetchSOptional());
  graphql.ObservableQuery<QueryFetchSOptional> watchQueryFetchSOptional(
          [WatchOptionsQueryFetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryFetchSOptional());
  void writeQueryFetchSOptional(
          {required QueryFetchSOptional data,
          VariablesQueryFetchSOptional? variables,
          broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_S_OPTIONAL),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchSOptional? readQueryFetchSOptional(
      {VariablesQueryFetchSOptional? variables, optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_S_OPTIONAL),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : QueryFetchSOptional.fromJson(result);
  }
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
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryFetchSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const QUERY_FETCH_S_REQUIRED = const DocumentNode(definitions: [
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
QueryFetchSRequired _parserFnQueryFetchSRequired(Map<String, dynamic> data) =>
    QueryFetchSRequired.fromJson(data);

class OptionsQueryFetchSRequired
    extends graphql.QueryOptions<QueryFetchSRequired> {
  OptionsQueryFetchSRequired(
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
            document: QUERY_FETCH_S_REQUIRED,
            parserFn: _parserFnQueryFetchSRequired);
}

class WatchOptionsQueryFetchSRequired
    extends graphql.WatchQueryOptions<QueryFetchSRequired> {
  WatchOptionsQueryFetchSRequired(
      {String? operationName,
      required VariablesQueryFetchSRequired variables,
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
            document: QUERY_FETCH_S_REQUIRED,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSRequired);
}

class FetchMoreOptionsQueryFetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSRequired(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryFetchSRequired variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_FETCH_S_REQUIRED);
}

extension ClientExtensionQueryFetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSRequired>> queryFetchSRequired(
          OptionsQueryFetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryFetchSRequired> watchQueryFetchSRequired(
          WatchOptionsQueryFetchSRequired options) =>
      this.watchQuery(options);
  void writeQueryFetchSRequired(
          {required QueryFetchSRequired data,
          required VariablesQueryFetchSRequired variables,
          broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_S_REQUIRED),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchSRequired? readQueryFetchSRequired(
      {required VariablesQueryFetchSRequired variables, optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_S_REQUIRED),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryFetchSRequired.fromJson(result);
  }
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchSNoVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const QUERY_FETCH_S_NO_VARIABLES = const DocumentNode(definitions: [
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
QueryFetchSNoVariables _parserFnQueryFetchSNoVariables(
        Map<String, dynamic> data) =>
    QueryFetchSNoVariables.fromJson(data);

class OptionsQueryFetchSNoVariables
    extends graphql.QueryOptions<QueryFetchSNoVariables> {
  OptionsQueryFetchSNoVariables(
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
            document: QUERY_FETCH_S_NO_VARIABLES,
            parserFn: _parserFnQueryFetchSNoVariables);
}

class WatchOptionsQueryFetchSNoVariables
    extends graphql.WatchQueryOptions<QueryFetchSNoVariables> {
  WatchOptionsQueryFetchSNoVariables(
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
            document: QUERY_FETCH_S_NO_VARIABLES,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchSNoVariables);
}

class FetchMoreOptionsQueryFetchSNoVariables extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_FETCH_S_NO_VARIABLES);
}

extension ClientExtensionQueryFetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchSNoVariables>> queryFetchSNoVariables(
          [OptionsQueryFetchSNoVariables? options]) async =>
      await this.query(options ?? OptionsQueryFetchSNoVariables());
  graphql.ObservableQuery<QueryFetchSNoVariables> watchQueryFetchSNoVariables(
          [WatchOptionsQueryFetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryFetchSNoVariables());
  void writeQueryFetchSNoVariables(
          {required QueryFetchSNoVariables data, broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: QUERY_FETCH_S_NO_VARIABLES)),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchSNoVariables? readQueryFetchSNoVariables({optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_S_NO_VARIABLES)),
        optimistic: optimistic);
    return result == null ? null : QueryFetchSNoVariables.fromJson(result);
  }
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
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
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
MutationUpdateSOptional _parserFnMutationUpdateSOptional(
        Map<String, dynamic> data) =>
    MutationUpdateSOptional.fromJson(data);
typedef OnMutationCompletedMutationUpdateSOptional = FutureOr<void> Function(
    dynamic, MutationUpdateSOptional?);

class OptionsMutationUpdateSOptional
    extends graphql.MutationOptions<MutationUpdateSOptional> {
  OptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSOptional? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationUpdateSOptional(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_OPTIONAL,
            parserFn: _parserFnMutationUpdateSOptional);

  final OnMutationCompletedMutationUpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSOptional
    extends graphql.WatchQueryOptions<MutationUpdateSOptional> {
  WatchOptionsMutationUpdateSOptional(
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
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSOptional);
}

extension ClientExtensionMutationUpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSOptional>> mutateUpdateSOptional(
          [OptionsMutationUpdateSOptional? options]) async =>
      await this.mutate(options ?? OptionsMutationUpdateSOptional());
  graphql.ObservableQuery<MutationUpdateSOptional> watchMutationUpdateSOptional(
          [WatchOptionsMutationUpdateSOptional? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationUpdateSOptional());
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
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
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
MutationUpdateSRequired _parserFnMutationUpdateSRequired(
        Map<String, dynamic> data) =>
    MutationUpdateSRequired.fromJson(data);
typedef OnMutationCompletedMutationUpdateSRequired = FutureOr<void> Function(
    dynamic, MutationUpdateSRequired?);

class OptionsMutationUpdateSRequired
    extends graphql.MutationOptions<MutationUpdateSRequired> {
  OptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSRequired? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFnMutationUpdateSRequired(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_REQUIRED,
            parserFn: _parserFnMutationUpdateSRequired);

  final OnMutationCompletedMutationUpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSRequired
    extends graphql.WatchQueryOptions<MutationUpdateSRequired> {
  WatchOptionsMutationUpdateSRequired(
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
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSRequired);
}

extension ClientExtensionMutationUpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSRequired>> mutateUpdateSRequired(
          OptionsMutationUpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSRequired> watchMutationUpdateSRequired(
          WatchOptionsMutationUpdateSRequired options) =>
      this.watchMutation(options);
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
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSNoVariables) ||
        runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const MUTATION_UPDATE_S_NO_VARIABLES = const DocumentNode(definitions: [
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
MutationUpdateSNoVariables _parserFnMutationUpdateSNoVariables(
        Map<String, dynamic> data) =>
    MutationUpdateSNoVariables.fromJson(data);
typedef OnMutationCompletedMutationUpdateSNoVariables = FutureOr<void> Function(
    dynamic, MutationUpdateSNoVariables?);

class OptionsMutationUpdateSNoVariables
    extends graphql.MutationOptions<MutationUpdateSNoVariables> {
  OptionsMutationUpdateSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSNoVariables? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFnMutationUpdateSNoVariables(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_NO_VARIABLES,
            parserFn: _parserFnMutationUpdateSNoVariables);

  final OnMutationCompletedMutationUpdateSNoVariables? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSNoVariables
    extends graphql.WatchQueryOptions<MutationUpdateSNoVariables> {
  WatchOptionsMutationUpdateSNoVariables(
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
            document: MUTATION_UPDATE_S_NO_VARIABLES,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSNoVariables);
}

extension ClientExtensionMutationUpdateSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSNoVariables>>
      mutateUpdateSNoVariables(
              [OptionsMutationUpdateSNoVariables? options]) async =>
          await this.mutate(options ?? OptionsMutationUpdateSNoVariables());
  graphql.ObservableQuery<
      MutationUpdateSNoVariables> watchMutationUpdateSNoVariables(
          [WatchOptionsMutationUpdateSNoVariables? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationUpdateSNoVariables());
}

const POSSIBLE_TYPES_MAP = const {};
