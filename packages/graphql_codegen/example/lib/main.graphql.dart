import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_codegen_example/scalars.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'main.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchPerson {
  Variables$Query$FetchPerson({required this.id});

  @override
  factory Variables$Query$FetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$FetchPersonFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$Variables$Query$FetchPersonToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson {
  Query$FetchPerson({this.fetchPerson, required this.$__typename});

  @override
  factory Query$FetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPersonFromJson(json);

  final Query$FetchPerson$fetchPerson? fetchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchPersonToJson(this);
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$fetchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchPerson on Query$FetchPerson {
  Query$FetchPerson copyWith(
          {Query$FetchPerson$fetchPerson? Function()? fetchPerson,
          String? $__typename}) =>
      Query$FetchPerson(
          fetchPerson: fetchPerson == null ? this.fetchPerson : fetchPerson(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentFetchPerson = DocumentNode(definitions: [
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
  fragmentDefinitionPersonSummary,
  fragmentDefinitionPersonParent,
]);
Query$FetchPerson _parserFn$Query$FetchPerson(Map<String, dynamic> data) =>
    Query$FetchPerson.fromJson(data);

class Options$Query$FetchPerson
    extends graphql.QueryOptions<Query$FetchPerson> {
  Options$Query$FetchPerson(
      {String? operationName,
      required Variables$Query$FetchPerson variables,
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
            document: queryDocumentFetchPerson,
            parserFn: _parserFn$Query$FetchPerson);
}

class WatchOptions$Query$FetchPerson
    extends graphql.WatchQueryOptions<Query$FetchPerson> {
  WatchOptions$Query$FetchPerson(
      {String? operationName,
      required Variables$Query$FetchPerson variables,
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
            document: queryDocumentFetchPerson,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchPerson);
}

class FetchMoreOptions$Query$FetchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchPerson(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$FetchPerson variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentFetchPerson);
}

extension ClientExtension$Query$FetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchPerson>> query$FetchPerson(
          Options$Query$FetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchPerson> watchQuery$FetchPerson(
          WatchOptions$Query$FetchPerson options) =>
      this.watchQuery(options);
  void writeQuery$FetchPerson(
          {required Query$FetchPerson data,
          required Variables$Query$FetchPerson variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentFetchPerson),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchPerson? readQuery$FetchPerson(
      {required Variables$Query$FetchPerson variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentFetchPerson),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$FetchPerson.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchPerson> useQuery$FetchPerson(
        Options$Query$FetchPerson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchPerson> useWatchQuery$FetchPerson(
        WatchOptions$Query$FetchPerson options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchPerson$Widget
    extends graphql_flutter.Query<Query$FetchPerson> {
  Query$FetchPerson$Widget(
      {widgets.Key? key,
      required Options$Query$FetchPerson options,
      required graphql_flutter.QueryBuilder<Query$FetchPerson> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson implements Fragment$PersonSummary {
  Query$FetchPerson$fetchPerson(
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      this.parents,
      required this.$__typename,
      this.children});

  @override
  factory Query$FetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPersonFromJson(json);

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

  final List<Query$FetchPerson$fetchPerson$parents>? parents;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Query$FetchPerson$fetchPerson$children>? children;

  Map<String, dynamic> toJson() => _$Query$FetchPerson$fetchPersonToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    final l$$__typename = $__typename;
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
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$$__typename,
      l$children == null ? null : Object.hashAll(l$children.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson) ||
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

extension UtilityExtension$Query$FetchPerson$fetchPerson
    on Query$FetchPerson$fetchPerson {
  Query$FetchPerson$fetchPerson copyWith(
          {String? Function()? nickname,
          String? name,
          DateTime? Function()? dob,
          List<DateTime?>? Function()? events,
          List<List<DateTime?>?>? Function()? eventsOfEvents,
          List<Query$FetchPerson$fetchPerson$parents>? Function()? parents,
          String? $__typename,
          List<Query$FetchPerson$fetchPerson$children>? Function()?
              children}) =>
      Query$FetchPerson$fetchPerson(
          nickname: nickname == null ? this.nickname : nickname(),
          name: name == null ? this.name : name,
          dob: dob == null ? this.dob : dob(),
          events: events == null ? this.events : events(),
          eventsOfEvents:
              eventsOfEvents == null ? this.eventsOfEvents : eventsOfEvents(),
          parents: parents == null ? this.parents : parents(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          children: children == null ? this.children : children());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson$parents
    implements
        Fragment$PersonSummary$parents,
        Fragment$PersonParent,
        Fragment$PersonSummary {
  Query$FetchPerson$fetchPerson$parents(
      {required this.name,
      required this.$__typename,
      this.nickname,
      this.dob,
      this.events,
      this.eventsOfEvents,
      this.parents});

  @override
  factory Query$FetchPerson$fetchPerson$parents.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPerson$parentsFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? nickname;

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

  final List<Query$FetchPerson$fetchPerson$parents$parents>? parents;

  Map<String, dynamic> toJson() =>
      _$Query$FetchPerson$fetchPerson$parentsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$nickname = nickname;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$nickname,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson$parents) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) return false;
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

    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetchPerson$parents
    on Query$FetchPerson$fetchPerson$parents {
  Query$FetchPerson$fetchPerson$parents copyWith(
          {String? name,
          String? $__typename,
          String? Function()? nickname,
          DateTime? Function()? dob,
          List<DateTime?>? Function()? events,
          List<List<DateTime?>?>? Function()? eventsOfEvents,
          List<Query$FetchPerson$fetchPerson$parents$parents>? Function()?
              parents}) =>
      Query$FetchPerson$fetchPerson$parents(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          nickname: nickname == null ? this.nickname : nickname(),
          dob: dob == null ? this.dob : dob(),
          events: events == null ? this.events : events(),
          eventsOfEvents:
              eventsOfEvents == null ? this.eventsOfEvents : eventsOfEvents(),
          parents: parents == null ? this.parents : parents());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson$parents$parents
    implements Fragment$PersonSummary$parents, Fragment$PersonParent {
  Query$FetchPerson$fetchPerson$parents$parents(
      {required this.name, required this.$__typename});

  @override
  factory Query$FetchPerson$fetchPerson$parents$parents.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPerson$parents$parentsFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchPerson$fetchPerson$parents$parentsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson$parents$parents) ||
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

extension UtilityExtension$Query$FetchPerson$fetchPerson$parents$parents
    on Query$FetchPerson$fetchPerson$parents$parents {
  Query$FetchPerson$fetchPerson$parents$parents copyWith(
          {String? name, String? $__typename}) =>
      Query$FetchPerson$fetchPerson$parents$parents(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson$children implements Fragment$PersonSummary {
  Query$FetchPerson$fetchPerson$children(
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      this.parents,
      required this.$__typename});

  @override
  factory Query$FetchPerson$fetchPerson$children.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPerson$childrenFromJson(json);

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

  final List<Query$FetchPerson$fetchPerson$children$parents>? parents;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchPerson$fetchPerson$childrenToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
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
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson$children) ||
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetchPerson$children
    on Query$FetchPerson$fetchPerson$children {
  Query$FetchPerson$fetchPerson$children copyWith(
          {String? Function()? nickname,
          String? name,
          DateTime? Function()? dob,
          List<DateTime?>? Function()? events,
          List<List<DateTime?>?>? Function()? eventsOfEvents,
          List<Query$FetchPerson$fetchPerson$children$parents>? Function()?
              parents,
          String? $__typename}) =>
      Query$FetchPerson$fetchPerson$children(
          nickname: nickname == null ? this.nickname : nickname(),
          name: name == null ? this.name : name,
          dob: dob == null ? this.dob : dob(),
          events: events == null ? this.events : events(),
          eventsOfEvents:
              eventsOfEvents == null ? this.eventsOfEvents : eventsOfEvents(),
          parents: parents == null ? this.parents : parents(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchPerson$fetchPerson$children$parents
    implements Fragment$PersonSummary$parents, Fragment$PersonParent {
  Query$FetchPerson$fetchPerson$children$parents(
      {required this.name, required this.$__typename});

  @override
  factory Query$FetchPerson$fetchPerson$children$parents.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchPerson$fetchPerson$children$parentsFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchPerson$fetchPerson$children$parentsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchPerson$fetchPerson$children$parents) ||
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

extension UtilityExtension$Query$FetchPerson$fetchPerson$children$parents
    on Query$FetchPerson$fetchPerson$children$parents {
  Query$FetchPerson$fetchPerson$children$parents copyWith(
          {String? name, String? $__typename}) =>
      Query$FetchPerson$fetchPerson$children$parents(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdatePerson {
  Variables$Mutation$UpdatePerson({required this.id});

  @override
  factory Variables$Mutation$UpdatePerson.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdatePersonFromJson(json);

  final String id;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$UpdatePersonToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdatePerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdatePerson {
  Mutation$UpdatePerson({this.updatePerson, required this.$__typename});

  @override
  factory Mutation$UpdatePerson.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdatePersonFromJson(json);

  final Mutation$UpdatePerson$updatePerson? updatePerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$UpdatePersonToJson(this);
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdatePerson) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Mutation$UpdatePerson on Mutation$UpdatePerson {
  Mutation$UpdatePerson copyWith(
          {Mutation$UpdatePerson$updatePerson? Function()? updatePerson,
          String? $__typename}) =>
      Mutation$UpdatePerson(
          updatePerson:
              updatePerson == null ? this.updatePerson : updatePerson(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentUpdatePerson = DocumentNode(definitions: [
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
Mutation$UpdatePerson _parserFn$Mutation$UpdatePerson(
        Map<String, dynamic> data) =>
    Mutation$UpdatePerson.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePerson = FutureOr<void> Function(
    dynamic, Mutation$UpdatePerson?);

class Options$Mutation$UpdatePerson
    extends graphql.MutationOptions<Mutation$UpdatePerson> {
  Options$Mutation$UpdatePerson(
      {String? operationName,
      required Variables$Mutation$UpdatePerson variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdatePerson? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdatePerson>? update,
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
                        : _parserFn$Mutation$UpdatePerson(data)),
            update: update,
            onError: onError,
            document: queryDocumentUpdatePerson,
            parserFn: _parserFn$Mutation$UpdatePerson);

  final OnMutationCompleted$Mutation$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdatePerson
    extends graphql.WatchQueryOptions<Mutation$UpdatePerson> {
  WatchOptions$Mutation$UpdatePerson(
      {String? operationName,
      required Variables$Mutation$UpdatePerson variables,
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
            document: queryDocumentUpdatePerson,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdatePerson);
}

extension ClientExtension$Mutation$UpdatePerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePerson>> mutate$UpdatePerson(
          Options$Mutation$UpdatePerson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePerson> watchMutation$UpdatePerson(
          WatchOptions$Mutation$UpdatePerson options) =>
      this.watchMutation(options);
}

class Mutation$UpdatePerson$HookResult {
  Mutation$UpdatePerson$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdatePerson runMutation;

  final graphql.QueryResult<Mutation$UpdatePerson> result;
}

Mutation$UpdatePerson$HookResult useMutation$UpdatePerson(
    [WidgetOptions$Mutation$UpdatePerson? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdatePerson());
  return Mutation$UpdatePerson$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdatePerson> useWatchMutation$UpdatePerson(
        WatchOptions$Mutation$UpdatePerson options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdatePerson
    extends graphql.MutationOptions<Mutation$UpdatePerson> {
  WidgetOptions$Mutation$UpdatePerson(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdatePerson? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdatePerson>? update,
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
                        : _parserFn$Mutation$UpdatePerson(data)),
            update: update,
            onError: onError,
            document: queryDocumentUpdatePerson,
            parserFn: _parserFn$Mutation$UpdatePerson);

  final OnMutationCompleted$Mutation$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UpdatePerson
    = graphql.MultiSourceResult<Mutation$UpdatePerson>
        Function(Variables$Mutation$UpdatePerson, {Object? optimisticResult});
typedef Builder$Mutation$UpdatePerson = widgets.Widget Function(
    RunMutation$Mutation$UpdatePerson,
    graphql.QueryResult<Mutation$UpdatePerson>?);

class Mutation$UpdatePerson$Widget
    extends graphql_flutter.Mutation<Mutation$UpdatePerson> {
  Mutation$UpdatePerson$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UpdatePerson? options,
      required Builder$Mutation$UpdatePerson builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UpdatePerson(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdatePerson$updatePerson {
  Mutation$UpdatePerson$updatePerson(
      {required this.full_name, required this.$__typename});

  @override
  factory Mutation$UpdatePerson$updatePerson.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdatePerson$updatePersonFromJson(json);

  final String full_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdatePerson$updatePersonToJson(this);
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$full_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdatePerson$updatePerson) ||
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

extension UtilityExtension$Mutation$UpdatePerson$updatePerson
    on Mutation$UpdatePerson$updatePerson {
  Mutation$UpdatePerson$updatePerson copyWith(
          {String? full_name, String? $__typename}) =>
      Mutation$UpdatePerson$updatePerson(
          full_name: full_name == null ? this.full_name : full_name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Subscription$WatchPerson {
  Variables$Subscription$WatchPerson({this.id});

  @override
  factory Variables$Subscription$WatchPerson.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Subscription$WatchPersonFromJson(json);

  final String? id;

  Map<String, dynamic> toJson() =>
      _$Variables$Subscription$WatchPersonToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Subscription$WatchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription$WatchPerson {
  Subscription$WatchPerson({this.watchPerson, required this.$__typename});

  @override
  factory Subscription$WatchPerson.fromJson(Map<String, dynamic> json) =>
      _$Subscription$WatchPersonFromJson(json);

  final Subscription$WatchPerson$watchPerson? watchPerson;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Subscription$WatchPersonToJson(this);
  int get hashCode {
    final l$watchPerson = watchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$watchPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$WatchPerson) ||
        runtimeType != other.runtimeType) return false;
    final l$watchPerson = watchPerson;
    final lOther$watchPerson = other.watchPerson;
    if (l$watchPerson != lOther$watchPerson) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Subscription$WatchPerson
    on Subscription$WatchPerson {
  Subscription$WatchPerson copyWith(
          {Subscription$WatchPerson$watchPerson? Function()? watchPerson,
          String? $__typename}) =>
      Subscription$WatchPerson(
          watchPerson: watchPerson == null ? this.watchPerson : watchPerson(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentWatchPerson = DocumentNode(definitions: [
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
Subscription$WatchPerson _parserFn$Subscription$WatchPerson(
        Map<String, dynamic> data) =>
    Subscription$WatchPerson.fromJson(data);

class Options$Subscription$WatchPerson
    extends graphql.SubscriptionOptions<Subscription$WatchPerson> {
  Options$Subscription$WatchPerson(
      {String? operationName,
      Variables$Subscription$WatchPerson? variables,
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
            document: queryDocumentWatchPerson,
            parserFn: _parserFn$Subscription$WatchPerson);
}

class WatchOptions$Subscription$WatchPerson
    extends graphql.WatchQueryOptions<Subscription$WatchPerson> {
  WatchOptions$Subscription$WatchPerson(
      {String? operationName,
      Variables$Subscription$WatchPerson? variables,
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
            document: queryDocumentWatchPerson,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Subscription$WatchPerson);
}

class FetchMoreOptions$Subscription$WatchPerson
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$WatchPerson(
      {required graphql.UpdateQuery updateQuery,
      Variables$Subscription$WatchPerson? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: queryDocumentWatchPerson);
}

extension ClientExtension$Subscription$WatchPerson on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$WatchPerson>> subscribe$WatchPerson(
          [Options$Subscription$WatchPerson? options]) =>
      this.subscribe(options ?? Options$Subscription$WatchPerson());
  graphql.ObservableQuery<Subscription$WatchPerson>
      watchSubscription$WatchPerson(
              [WatchOptions$Subscription$WatchPerson? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$WatchPerson());
}

graphql.QueryResult<Subscription$WatchPerson> useSubscription$WatchPerson(
        Options$Subscription$WatchPerson options) =>
    graphql_flutter.useSubscription(options);

class Subscription$WatchPerson$Widget
    extends graphql_flutter.Subscription<Subscription$WatchPerson> {
  Subscription$WatchPerson$Widget(
      {widgets.Key? key,
      Options$Subscription$WatchPerson? options,
      required graphql_flutter.SubscriptionBuilder<Subscription$WatchPerson>
          builder,
      graphql_flutter.OnSubscriptionResult<Subscription$WatchPerson>?
          onSubscriptionResult})
      : super(
            key: key,
            options: options ?? Options$Subscription$WatchPerson(),
            builder: builder,
            onSubscriptionResult: onSubscriptionResult);
}

@JsonSerializable(explicitToJson: true)
class Subscription$WatchPerson$watchPerson {
  Subscription$WatchPerson$watchPerson(
      {required this.full_name, required this.$__typename});

  @override
  factory Subscription$WatchPerson$watchPerson.fromJson(
          Map<String, dynamic> json) =>
      _$Subscription$WatchPerson$watchPersonFromJson(json);

  final String full_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Subscription$WatchPerson$watchPersonToJson(this);
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$full_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Subscription$WatchPerson$watchPerson) ||
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

extension UtilityExtension$Subscription$WatchPerson$watchPerson
    on Subscription$WatchPerson$watchPerson {
  Subscription$WatchPerson$watchPerson copyWith(
          {String? full_name, String? $__typename}) =>
      Subscription$WatchPerson$watchPerson(
          full_name: full_name == null ? this.full_name : full_name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
