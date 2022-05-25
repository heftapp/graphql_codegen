import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$NoVariables {
  Fragment$NoVariables({this.s});

  @override
  factory Fragment$NoVariables.fromJson(Map<String, dynamic> json) =>
      _$Fragment$NoVariablesFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Fragment$NoVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$NoVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$NoVariables on Fragment$NoVariables {
  Fragment$NoVariables copyWith({String? Function()? s}) =>
      Fragment$NoVariables(s: s == null ? this.s : s());
}

const fragmentDefinitionNoVariables = FragmentDefinitionNode(
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
const queryDocumentNoVariables = DocumentNode(definitions: [
  fragmentDefinitionNoVariables,
]);

extension ClientExtension$Fragment$NoVariables on graphql.GraphQLClient {
  void writeFragment$NoVariables(
          {required Fragment$NoVariables data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'NoVariables',
                  document: queryDocumentNoVariables)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$NoVariables? readFragment$NoVariables(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'NoVariables',
                document: queryDocumentNoVariables)),
        optimistic: optimistic);
    return result == null ? null : Fragment$NoVariables.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$WithOptionalVariables {
  Variables$Fragment$WithOptionalVariables({this.name});

  @override
  factory Variables$Fragment$WithOptionalVariables.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Fragment$WithOptionalVariablesFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() =>
      _$Variables$Fragment$WithOptionalVariablesToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$WithOptionalVariables) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Fragment$WithOptionalVariables copyWith(
          {String? Function()? name}) =>
      Variables$Fragment$WithOptionalVariables(
          name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$WithOptionalVariables {
  Fragment$WithOptionalVariables({this.s});

  @override
  factory Fragment$WithOptionalVariables.fromJson(Map<String, dynamic> json) =>
      _$Fragment$WithOptionalVariablesFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Fragment$WithOptionalVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$WithOptionalVariables) ||
        runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$WithOptionalVariables
    on Fragment$WithOptionalVariables {
  Fragment$WithOptionalVariables copyWith({String? Function()? s}) =>
      Fragment$WithOptionalVariables(s: s == null ? this.s : s());
}

const fragmentDefinitionWithOptionalVariables = FragmentDefinitionNode(
    name: NameNode(value: 'WithOptionalVariables'),
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
const queryDocumentWithOptionalVariables = DocumentNode(definitions: [
  fragmentDefinitionWithOptionalVariables,
]);

extension ClientExtension$Fragment$WithOptionalVariables
    on graphql.GraphQLClient {
  void writeFragment$WithOptionalVariables(
          {required Fragment$WithOptionalVariables data,
          required Map<String, dynamic> idFields,
          Variables$Fragment$WithOptionalVariables? variables,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'WithOptionalVariables',
                  document: queryDocumentWithOptionalVariables),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$WithOptionalVariables? readFragment$WithOptionalVariables(
      {required Map<String, dynamic> idFields,
      Variables$Fragment$WithOptionalVariables? variables,
      bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'WithOptionalVariables',
                document: queryDocumentWithOptionalVariables),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Fragment$WithOptionalVariables.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$WithVariables {
  Variables$Fragment$WithVariables({required this.name});

  @override
  factory Variables$Fragment$WithVariables.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Fragment$WithVariablesFromJson(json);

  final String name;

  Map<String, dynamic> toJson() =>
      _$Variables$Fragment$WithVariablesToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$WithVariables) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Fragment$WithVariables copyWith({String? name}) =>
      Variables$Fragment$WithVariables(name: name == null ? this.name : name);
}

@JsonSerializable(explicitToJson: true)
class Fragment$WithVariables {
  Fragment$WithVariables({this.s2});

  @override
  factory Fragment$WithVariables.fromJson(Map<String, dynamic> json) =>
      _$Fragment$WithVariablesFromJson(json);

  final String? s2;

  Map<String, dynamic> toJson() => _$Fragment$WithVariablesToJson(this);
  int get hashCode {
    final l$s2 = s2;
    return Object.hashAll([l$s2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$WithVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s2 = s2;
    final lOther$s2 = other.s2;
    if (l$s2 != lOther$s2) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$WithVariables on Fragment$WithVariables {
  Fragment$WithVariables copyWith({String? Function()? s2}) =>
      Fragment$WithVariables(s2: s2 == null ? this.s2 : s2());
}

const fragmentDefinitionWithVariables = FragmentDefinitionNode(
    name: NameNode(value: 'WithVariables'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 's2'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')))
          ],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentWithVariables = DocumentNode(definitions: [
  fragmentDefinitionWithVariables,
]);

extension ClientExtension$Fragment$WithVariables on graphql.GraphQLClient {
  void writeFragment$WithVariables(
          {required Fragment$WithVariables data,
          required Map<String, dynamic> idFields,
          required Variables$Fragment$WithVariables variables,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'WithVariables',
                  document: queryDocumentWithVariables),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$WithVariables? readFragment$WithVariables(
      {required Map<String, dynamic> idFields,
      required Variables$Fragment$WithVariables variables,
      bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'WithVariables',
                document: queryDocumentWithVariables),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Fragment$WithVariables.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchSOptional {
  Variables$Query$FetchSOptional({this.name});

  @override
  factory Variables$Query$FetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$FetchSOptionalFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Variables$Query$FetchSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Query$FetchSOptional copyWith({String? Function()? name}) =>
      Variables$Query$FetchSOptional(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchSOptional {
  Query$FetchSOptional({this.s});

  @override
  factory Query$FetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSOptionalFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSOptionalToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSOptional on Query$FetchSOptional {
  Query$FetchSOptional copyWith({String? Function()? s}) =>
      Query$FetchSOptional(s: s == null ? this.s : s());
}

const queryDocumentFetchSOptional = DocumentNode(definitions: [
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
Query$FetchSOptional _parserFn$Query$FetchSOptional(
        Map<String, dynamic> data) =>
    Query$FetchSOptional.fromJson(data);

class Options$Query$FetchSOptional
    extends graphql.QueryOptions<Query$FetchSOptional> {
  Options$Query$FetchSOptional(
      {String? operationName,
      Variables$Query$FetchSOptional? variables,
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
            document: queryDocumentFetchSOptional,
            parserFn: _parserFn$Query$FetchSOptional);
}

class WatchOptions$Query$FetchSOptional
    extends graphql.WatchQueryOptions<Query$FetchSOptional> {
  WatchOptions$Query$FetchSOptional(
      {String? operationName,
      Variables$Query$FetchSOptional? variables,
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
            document: queryDocumentFetchSOptional,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSOptional);
}

class FetchMoreOptions$Query$FetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSOptional(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$FetchSOptional? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: queryDocumentFetchSOptional);
}

extension ClientExtension$Query$FetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSOptional>> query$FetchSOptional(
          [Options$Query$FetchSOptional? options]) async =>
      await this.query(options ?? Options$Query$FetchSOptional());
  graphql.ObservableQuery<Query$FetchSOptional> watchQuery$FetchSOptional(
          [WatchOptions$Query$FetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSOptional());
  void writeQuery$FetchSOptional(
          {required Query$FetchSOptional data,
          Variables$Query$FetchSOptional? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: queryDocumentFetchSOptional),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSOptional? readQuery$FetchSOptional(
      {Variables$Query$FetchSOptional? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentFetchSOptional),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$FetchSOptional.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchSRequired {
  Variables$Query$FetchSRequired({required this.name});

  @override
  factory Variables$Query$FetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$FetchSRequiredFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$Variables$Query$FetchSRequiredToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Query$FetchSRequired copyWith({String? name}) =>
      Variables$Query$FetchSRequired(name: name == null ? this.name : name);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchSRequired {
  Query$FetchSRequired({this.s});

  @override
  factory Query$FetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSRequiredFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSRequiredToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSRequired on Query$FetchSRequired {
  Query$FetchSRequired copyWith({String? Function()? s}) =>
      Query$FetchSRequired(s: s == null ? this.s : s());
}

const queryDocumentFetchSRequired = DocumentNode(definitions: [
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
Query$FetchSRequired _parserFn$Query$FetchSRequired(
        Map<String, dynamic> data) =>
    Query$FetchSRequired.fromJson(data);

class Options$Query$FetchSRequired
    extends graphql.QueryOptions<Query$FetchSRequired> {
  Options$Query$FetchSRequired(
      {String? operationName,
      required Variables$Query$FetchSRequired variables,
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
            document: queryDocumentFetchSRequired,
            parserFn: _parserFn$Query$FetchSRequired);
}

class WatchOptions$Query$FetchSRequired
    extends graphql.WatchQueryOptions<Query$FetchSRequired> {
  WatchOptions$Query$FetchSRequired(
      {String? operationName,
      required Variables$Query$FetchSRequired variables,
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
            document: queryDocumentFetchSRequired,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSRequired);
}

class FetchMoreOptions$Query$FetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSRequired(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$FetchSRequired variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentFetchSRequired);
}

extension ClientExtension$Query$FetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSRequired>> query$FetchSRequired(
          Options$Query$FetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchSRequired> watchQuery$FetchSRequired(
          WatchOptions$Query$FetchSRequired options) =>
      this.watchQuery(options);
  void writeQuery$FetchSRequired(
          {required Query$FetchSRequired data,
          required Variables$Query$FetchSRequired variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: queryDocumentFetchSRequired),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSRequired? readQuery$FetchSRequired(
      {required Variables$Query$FetchSRequired variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentFetchSRequired),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$FetchSRequired.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$FetchSNoVariables {
  Query$FetchSNoVariables({this.s});

  @override
  factory Query$FetchSNoVariables.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSNoVariablesFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSNoVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSNoVariables) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSNoVariables on Query$FetchSNoVariables {
  Query$FetchSNoVariables copyWith({String? Function()? s}) =>
      Query$FetchSNoVariables(s: s == null ? this.s : s());
}

const queryDocumentFetchSNoVariables = DocumentNode(definitions: [
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
Query$FetchSNoVariables _parserFn$Query$FetchSNoVariables(
        Map<String, dynamic> data) =>
    Query$FetchSNoVariables.fromJson(data);

class Options$Query$FetchSNoVariables
    extends graphql.QueryOptions<Query$FetchSNoVariables> {
  Options$Query$FetchSNoVariables(
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
            document: queryDocumentFetchSNoVariables,
            parserFn: _parserFn$Query$FetchSNoVariables);
}

class WatchOptions$Query$FetchSNoVariables
    extends graphql.WatchQueryOptions<Query$FetchSNoVariables> {
  WatchOptions$Query$FetchSNoVariables(
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
            document: queryDocumentFetchSNoVariables,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSNoVariables);
}

class FetchMoreOptions$Query$FetchSNoVariables
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery, document: queryDocumentFetchSNoVariables);
}

extension ClientExtension$Query$FetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSNoVariables>> query$FetchSNoVariables(
          [Options$Query$FetchSNoVariables? options]) async =>
      await this.query(options ?? Options$Query$FetchSNoVariables());
  graphql.ObservableQuery<Query$FetchSNoVariables> watchQuery$FetchSNoVariables(
          [WatchOptions$Query$FetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSNoVariables());
  void writeQuery$FetchSNoVariables(
          {required Query$FetchSNoVariables data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: queryDocumentFetchSNoVariables)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSNoVariables? readQuery$FetchSNoVariables(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: queryDocumentFetchSNoVariables)),
        optimistic: optimistic);
    return result == null ? null : Query$FetchSNoVariables.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdateSOptional {
  Variables$Mutation$UpdateSOptional({this.name});

  @override
  factory Variables$Mutation$UpdateSOptional.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdateSOptionalFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$UpdateSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdateSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Mutation$UpdateSOptional copyWith({String? Function()? name}) =>
      Variables$Mutation$UpdateSOptional(
          name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateSOptional {
  Mutation$UpdateSOptional({this.s});

  @override
  factory Mutation$UpdateSOptional.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateSOptionalFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Mutation$UpdateSOptionalToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSOptional
    on Mutation$UpdateSOptional {
  Mutation$UpdateSOptional copyWith({String? Function()? s}) =>
      Mutation$UpdateSOptional(s: s == null ? this.s : s());
}

const queryDocumentUpdateSOptional = DocumentNode(definitions: [
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
Mutation$UpdateSOptional _parserFn$Mutation$UpdateSOptional(
        Map<String, dynamic> data) =>
    Mutation$UpdateSOptional.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSOptional = FutureOr<void> Function(
    dynamic, Mutation$UpdateSOptional?);

class Options$Mutation$UpdateSOptional
    extends graphql.MutationOptions<Mutation$UpdateSOptional> {
  Options$Mutation$UpdateSOptional(
      {String? operationName,
      Variables$Mutation$UpdateSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateSOptional? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateSOptional>? update,
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
                        : _parserFn$Mutation$UpdateSOptional(data)),
            update: update,
            onError: onError,
            document: queryDocumentUpdateSOptional,
            parserFn: _parserFn$Mutation$UpdateSOptional);

  final OnMutationCompleted$Mutation$UpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateSOptional
    extends graphql.WatchQueryOptions<Mutation$UpdateSOptional> {
  WatchOptions$Mutation$UpdateSOptional(
      {String? operationName,
      Variables$Mutation$UpdateSOptional? variables,
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
            document: queryDocumentUpdateSOptional,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateSOptional);
}

extension ClientExtension$Mutation$UpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSOptional>> mutate$UpdateSOptional(
          [Options$Mutation$UpdateSOptional? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateSOptional());
  graphql
      .ObservableQuery<Mutation$UpdateSOptional> watchMutation$UpdateSOptional(
          [WatchOptions$Mutation$UpdateSOptional? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSOptional());
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdateSRequired {
  Variables$Mutation$UpdateSRequired({required this.name});

  @override
  factory Variables$Mutation$UpdateSRequired.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdateSRequiredFromJson(json);

  final String name;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$UpdateSRequiredToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdateSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  Variables$Mutation$UpdateSRequired copyWith({String? name}) =>
      Variables$Mutation$UpdateSRequired(name: name == null ? this.name : name);
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateSRequired {
  Mutation$UpdateSRequired({this.s});

  @override
  factory Mutation$UpdateSRequired.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateSRequiredFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Mutation$UpdateSRequiredToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSRequired
    on Mutation$UpdateSRequired {
  Mutation$UpdateSRequired copyWith({String? Function()? s}) =>
      Mutation$UpdateSRequired(s: s == null ? this.s : s());
}

const queryDocumentUpdateSRequired = DocumentNode(definitions: [
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
Mutation$UpdateSRequired _parserFn$Mutation$UpdateSRequired(
        Map<String, dynamic> data) =>
    Mutation$UpdateSRequired.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSRequired = FutureOr<void> Function(
    dynamic, Mutation$UpdateSRequired?);

class Options$Mutation$UpdateSRequired
    extends graphql.MutationOptions<Mutation$UpdateSRequired> {
  Options$Mutation$UpdateSRequired(
      {String? operationName,
      required Variables$Mutation$UpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateSRequired? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateSRequired>? update,
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
                        : _parserFn$Mutation$UpdateSRequired(data)),
            update: update,
            onError: onError,
            document: queryDocumentUpdateSRequired,
            parserFn: _parserFn$Mutation$UpdateSRequired);

  final OnMutationCompleted$Mutation$UpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateSRequired
    extends graphql.WatchQueryOptions<Mutation$UpdateSRequired> {
  WatchOptions$Mutation$UpdateSRequired(
      {String? operationName,
      required Variables$Mutation$UpdateSRequired variables,
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
            document: queryDocumentUpdateSRequired,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateSRequired);
}

extension ClientExtension$Mutation$UpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSRequired>> mutate$UpdateSRequired(
          Options$Mutation$UpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateSRequired>
      watchMutation$UpdateSRequired(
              WatchOptions$Mutation$UpdateSRequired options) =>
          this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateSNoVariables {
  Mutation$UpdateSNoVariables({this.s});

  @override
  factory Mutation$UpdateSNoVariables.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateSNoVariablesFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Mutation$UpdateSNoVariablesToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateSNoVariables) ||
        runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSNoVariables
    on Mutation$UpdateSNoVariables {
  Mutation$UpdateSNoVariables copyWith({String? Function()? s}) =>
      Mutation$UpdateSNoVariables(s: s == null ? this.s : s());
}

const queryDocumentUpdateSNoVariables = DocumentNode(definitions: [
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
Mutation$UpdateSNoVariables _parserFn$Mutation$UpdateSNoVariables(
        Map<String, dynamic> data) =>
    Mutation$UpdateSNoVariables.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSNoVariables = FutureOr<void>
    Function(dynamic, Mutation$UpdateSNoVariables?);

class Options$Mutation$UpdateSNoVariables
    extends graphql.MutationOptions<Mutation$UpdateSNoVariables> {
  Options$Mutation$UpdateSNoVariables(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateSNoVariables? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateSNoVariables>? update,
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
                        : _parserFn$Mutation$UpdateSNoVariables(data)),
            update: update,
            onError: onError,
            document: queryDocumentUpdateSNoVariables,
            parserFn: _parserFn$Mutation$UpdateSNoVariables);

  final OnMutationCompleted$Mutation$UpdateSNoVariables? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateSNoVariables
    extends graphql.WatchQueryOptions<Mutation$UpdateSNoVariables> {
  WatchOptions$Mutation$UpdateSNoVariables(
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
            document: queryDocumentUpdateSNoVariables,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateSNoVariables);
}

extension ClientExtension$Mutation$UpdateSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSNoVariables>>
      mutate$UpdateSNoVariables(
              [Options$Mutation$UpdateSNoVariables? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateSNoVariables());
  graphql.ObservableQuery<
      Mutation$UpdateSNoVariables> watchMutation$UpdateSNoVariables(
          [WatchOptions$Mutation$UpdateSNoVariables? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSNoVariables());
}

const possibleTypesMap = {};
