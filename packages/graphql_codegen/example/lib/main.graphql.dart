import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_codegen_example/scalars.dart';
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
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryFetchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchPerson extends JsonSerializable {
  QueryFetchPerson({this.fetchPerson, required this.$__typename});

  @override
  factory QueryFetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPersonFromJson(json);

  final QueryFetchPerson$fetchPerson? fetchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPersonToJson(this);
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$fetchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchPerson) || runtimeType != other.runtimeType)
      return false;
    final l$fetchPerson = fetchPerson;
    final lOther$fetchPerson = other.fetchPerson;
    if (l$fetchPerson != lOther$fetchPerson) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
            alias: NameNode(value: 'fetchPerson'),
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
  FRAGMENT_DEFINITION_FRAGMENT_PERSON_SUMMARY,
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
  void writeQueryFetchPerson(
          {required QueryFetchPerson data,
          required VariablesQueryFetchPerson variables,
          broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_PERSON),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchPerson? readQueryFetchPerson(
      {required VariablesQueryFetchPerson variables, optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_PERSON),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryFetchPerson.fromJson(result);
  }
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
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      required this.$__typename,
      this.parents,
      this.children});

  @override
  factory QueryFetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPersonFromJson(json);

  final String? nickname;

  final String name;

  @JsonKey(
      fromJson: _nullable$dateTimeFromJson, toJson: _nullable$dateTimeToJson)
  final DateTime? dob;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$dateTimeToJson)
  final List<DateTime?>? events;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$_list$_nullable$dateTimeToJson)
  final List<List<DateTime?>?>? eventsOfEvents;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<QueryFetchPerson$fetchPerson$parents>? parents;

  final List<QueryFetchPerson$fetchPerson$children>? children;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchPerson$fetchPersonToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$$__typename = $__typename;
    final l$parents = parents;
    final l$children = children;
    return Object.hashAll([
      l$nickname,
      l$name,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$$__typename,
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$children == null ? null : Object.hashAll(l$children.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchPerson$fetchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) return false;
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) return false;
      }
    } else if (l$events != lOther$events) {
      return false;
    }

    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) return false;
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) return false;
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) return false;
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) return false;
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) return false;
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }

    final l$children = children;
    final lOther$children = other.children;
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) return false;
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) return false;
      }
    } else if (l$children != lOther$children) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$parents extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$parents(
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      required this.$__typename});

  @override
  factory QueryFetchPerson$fetchPerson$parents.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$parentsFromJson(json);

  final String? nickname;

  final String name;

  @JsonKey(
      fromJson: _nullable$dateTimeFromJson, toJson: _nullable$dateTimeToJson)
  final DateTime? dob;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$dateTimeToJson)
  final List<DateTime?>? events;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$_list$_nullable$dateTimeToJson)
  final List<List<DateTime?>?>? eventsOfEvents;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$parentsToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nickname,
      l$name,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchPerson$fetchPerson$parents) ||
        runtimeType != other.runtimeType) return false;
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) return false;
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) return false;
      }
    } else if (l$events != lOther$events) {
      return false;
    }

    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) return false;
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) return false;
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) return false;
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchPerson$fetchPerson$children extends JsonSerializable
    implements FragmentPersonSummary {
  QueryFetchPerson$fetchPerson$children(
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      required this.$__typename});

  @override
  factory QueryFetchPerson$fetchPerson$children.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchPerson$fetchPerson$childrenFromJson(json);

  final String? nickname;

  final String name;

  @JsonKey(
      fromJson: _nullable$dateTimeFromJson, toJson: _nullable$dateTimeToJson)
  final DateTime? dob;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$dateTimeToJson)
  final List<DateTime?>? events;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$_list$_nullable$dateTimeToJson)
  final List<List<DateTime?>?>? eventsOfEvents;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchPerson$fetchPerson$childrenToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nickname,
      l$name,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchPerson$fetchPerson$children) ||
        runtimeType != other.runtimeType) return false;
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) return false;
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) return false;
      }
    } else if (l$events != lOther$events) {
      return false;
    }

    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) return false;
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) return false;
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) return false;
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdatePerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdatePerson extends JsonSerializable {
  MutationUpdatePerson({this.updatePerson, required this.$__typename});

  @override
  factory MutationUpdatePerson.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdatePersonFromJson(json);

  final MutationUpdatePerson$updatePerson? updatePerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdatePersonToJson(this);
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdatePerson) || runtimeType != other.runtimeType)
      return false;
    final l$updatePerson = updatePerson;
    final lOther$updatePerson = other.updatePerson;
    if (l$updatePerson != lOther$updatePerson) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
            alias: NameNode(value: 'updatePerson'),
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

class MutationUpdatePersonHookResult {
  MutationUpdatePersonHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdatePerson runMutation;

  final graphql.QueryResult<MutationUpdatePerson> result;
}

MutationUpdatePersonHookResult useMutationUpdatePerson(
    [WidgetOptionsMutationUpdatePerson? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdatePerson());
  return MutationUpdatePersonHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

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
  MutationUpdatePerson$updatePerson(
      {required this.full_name, required this.$__typename});

  @override
  factory MutationUpdatePerson$updatePerson.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdatePerson$updatePersonFromJson(json);

  final String full_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdatePerson$updatePersonToJson(this);
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$full_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdatePerson$updatePerson) ||
        runtimeType != other.runtimeType) return false;
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesSubscriptionWatchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class SubscriptionWatchPerson extends JsonSerializable {
  SubscriptionWatchPerson({this.watchPerson, required this.$__typename});

  @override
  factory SubscriptionWatchPerson.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionWatchPersonFromJson(json);

  final SubscriptionWatchPerson$watchPerson? watchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$SubscriptionWatchPersonToJson(this);
  int get hashCode {
    final l$watchPerson = watchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$watchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionWatchPerson) || runtimeType != other.runtimeType)
      return false;
    final l$watchPerson = watchPerson;
    final lOther$watchPerson = other.watchPerson;
    if (l$watchPerson != lOther$watchPerson) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
            alias: NameNode(value: 'watchPerson'),
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
  SubscriptionWatchPerson$watchPerson(
      {required this.full_name, required this.$__typename});

  @override
  factory SubscriptionWatchPerson$watchPerson.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionWatchPerson$watchPersonFromJson(json);

  final String full_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionWatchPerson$watchPersonToJson(this);
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$full_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is SubscriptionWatchPerson$watchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

DateTime? _nullable$dateTimeFromJson(dynamic data) =>
    data == null ? null : dateTimeFromJson(data);
dynamic _nullable$dateTimeToJson(DateTime? data) =>
    data == null ? null : dateTimeToJson(data);
List<DateTime?> _list$_nullable$dateTimeFromJson(dynamic data) =>
    data is List ? data.map(_nullable$dateTimeFromJson).toList() : [];
dynamic _list$_nullable$dateTimeToJson(List<DateTime?> data) =>
    data.map(_nullable$dateTimeToJson).toList();
List<DateTime?>? _nullable$_list$_nullable$dateTimeFromJson(dynamic data) =>
    data == null ? null : _list$_nullable$dateTimeFromJson(data);
dynamic _nullable$_list$_nullable$dateTimeToJson(List<DateTime?>? data) =>
    data == null ? null : _list$_nullable$dateTimeToJson(data);
List<List<DateTime?>?> _list$_nullable$_list$_nullable$dateTimeFromJson(
        dynamic data) =>
    data is List
        ? data.map(_nullable$_list$_nullable$dateTimeFromJson).toList()
        : [];
dynamic _list$_nullable$_list$_nullable$dateTimeToJson(
        List<List<DateTime?>?> data) =>
    data.map(_nullable$_list$_nullable$dateTimeToJson).toList();
List<List<DateTime?>?>?
    _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(dynamic data) =>
        data == null
            ? null
            : _list$_nullable$_list$_nullable$dateTimeFromJson(data);
dynamic _nullable$_list$_nullable$_list$_nullable$dateTimeToJson(
        List<List<DateTime?>?>? data) =>
    data == null ? null : _list$_nullable$_list$_nullable$dateTimeToJson(data);
