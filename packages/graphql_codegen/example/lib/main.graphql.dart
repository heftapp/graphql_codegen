import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_codegen_example/scalars.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FetchPerson {
  factory Variables$Query$FetchPerson({required String id}) =>
      Variables$Query$FetchPerson._({
        r'id': id,
      });

  Variables$Query$FetchPerson._(this._$data);

  factory Variables$Query$FetchPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FetchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FetchPerson<Variables$Query$FetchPerson>
      get copyWith => CopyWith$Variables$Query$FetchPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$FetchPerson<TRes> {
  factory CopyWith$Variables$Query$FetchPerson(
    Variables$Query$FetchPerson instance,
    TRes Function(Variables$Query$FetchPerson) then,
  ) = _CopyWithImpl$Variables$Query$FetchPerson;

  factory CopyWith$Variables$Query$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FetchPerson<TRes>
    implements CopyWith$Variables$Query$FetchPerson<TRes> {
  _CopyWithImpl$Variables$Query$FetchPerson(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchPerson _instance;

  final TRes Function(Variables$Query$FetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$FetchPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchPerson<TRes>
    implements CopyWith$Variables$Query$FetchPerson<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FetchPerson {
  Query$FetchPerson({
    this.fetchPerson,
    this.$__typename = 'Query',
  });

  factory Query$FetchPerson.fromJson(Map<String, dynamic> json) {
    final l$fetchPerson = json['fetchPerson'];
    final l$$__typename = json['__typename'];
    return Query$FetchPerson(
      fetchPerson: l$fetchPerson == null
          ? null
          : Query$FetchPerson$fetchPerson.fromJson(
              (l$fetchPerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchPerson$fetchPerson? fetchPerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchPerson = fetchPerson;
    _resultData['fetchPerson'] = l$fetchPerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchPerson = fetchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchPerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchPerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchPerson = fetchPerson;
    final lOther$fetchPerson = other.fetchPerson;
    if (l$fetchPerson != lOther$fetchPerson) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson on Query$FetchPerson {
  CopyWith$Query$FetchPerson<Query$FetchPerson> get copyWith =>
      CopyWith$Query$FetchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchPerson<TRes> {
  factory CopyWith$Query$FetchPerson(
    Query$FetchPerson instance,
    TRes Function(Query$FetchPerson) then,
  ) = _CopyWithImpl$Query$FetchPerson;

  factory CopyWith$Query$FetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson;

  TRes call({
    Query$FetchPerson$fetchPerson? fetchPerson,
    String? $__typename,
  });
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson;
}

class _CopyWithImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson(
    this._instance,
    this._then,
  );

  final Query$FetchPerson _instance;

  final TRes Function(Query$FetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchPerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchPerson(
        fetchPerson: fetchPerson == _undefined
            ? _instance.fetchPerson
            : (fetchPerson as Query$FetchPerson$fetchPerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson {
    final local$fetchPerson = _instance.fetchPerson;
    return local$fetchPerson == null
        ? CopyWith$Query$FetchPerson$fetchPerson.stub(_then(_instance))
        : CopyWith$Query$FetchPerson$fetchPerson(
            local$fetchPerson, (e) => call(fetchPerson: e));
  }
}

class _CopyWithStubImpl$Query$FetchPerson<TRes>
    implements CopyWith$Query$FetchPerson<TRes> {
  _CopyWithStubImpl$Query$FetchPerson(this._res);

  TRes _res;

  call({
    Query$FetchPerson$fetchPerson? fetchPerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchPerson$fetchPerson<TRes> get fetchPerson =>
      CopyWith$Query$FetchPerson$fetchPerson.stub(_res);
}

const documentNodeQueryFetchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetch_person'),
        alias: NameNode(value: 'fetchPerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PersonSummary'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'parents'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPersonSummary,
  fragmentDefinitionPersonParent,
]);
Query$FetchPerson _parserFn$Query$FetchPerson(Map<String, dynamic> data) =>
    Query$FetchPerson.fromJson(data);
typedef OnQueryComplete$Query$FetchPerson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchPerson?,
);

class Options$Query$FetchPerson
    extends graphql.QueryOptions<Query$FetchPerson> {
  Options$Query$FetchPerson({
    String? operationName,
    required Variables$Query$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchPerson? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchPerson? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FetchPerson(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchPerson,
          parserFn: _parserFn$Query$FetchPerson,
        );

  final OnQueryComplete$Query$FetchPerson? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchPerson
    extends graphql.WatchQueryOptions<Query$FetchPerson> {
  WatchOptions$Query$FetchPerson({
    String? operationName,
    required Variables$Query$FetchPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchPerson? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchPerson,
        );
}

class FetchMoreOptions$Query$FetchPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchPerson({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchPerson variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchPerson,
        );
}

extension ClientExtension$Query$FetchPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchPerson>> query$FetchPerson(
          Options$Query$FetchPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchPerson> watchQuery$FetchPerson(
          WatchOptions$Query$FetchPerson options) =>
      this.watchQuery(options);
  void writeQuery$FetchPerson({
    required Query$FetchPerson data,
    required Variables$Query$FetchPerson variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchPerson),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchPerson? readQuery$FetchPerson({
    required Variables$Query$FetchPerson variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchPerson),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
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
  Query$FetchPerson$Widget({
    widgets.Key? key,
    required Options$Query$FetchPerson options,
    required graphql_flutter.QueryBuilder<Query$FetchPerson> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchPerson$fetchPerson implements Fragment$PersonSummary {
  Query$FetchPerson$fetchPerson({
    this.nickname,
    required this.name,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
    this.$__typename = 'Person',
    this.children,
  });

  factory Query$FetchPerson$fetchPerson.fromJson(Map<String, dynamic> json) {
    final l$nickname = json['nickname'];
    final l$name = json['name'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    final l$$__typename = json['__typename'];
    final l$children = json['children'];
    return Query$FetchPerson$fetchPerson(
      nickname: (l$nickname as String?),
      name: (l$name as String),
      dob: l$dob == null ? null : dateTimeFromJson(l$dob),
      events: (l$events as List<dynamic>?)
          ?.map((e) => e == null ? null : dateTimeFromJson(e))
          .toList(),
      eventsOfEvents: (l$eventsOfEvents as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : dateTimeFromJson(e))
              .toList())
          .toList(),
      parents: (l$parents as List<dynamic>?)
          ?.map((e) => Query$FetchPerson$fetchPerson$parents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : Fragment$PersonParent.fromJson(
              (l$favParent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      children: (l$children as List<dynamic>?)
          ?.map((e) =>
              Fragment$PersonSummary.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String? nickname;

  final String name;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<Query$FetchPerson$fetchPerson$parents>? parents;

  final Fragment$PersonParent? favParent;

  final String $__typename;

  final List<Fragment$PersonSummary>? children;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dob = dob;
    _resultData['dob'] = l$dob == null ? null : dateTimeToJson(l$dob);
    final l$events = events;
    _resultData['events'] =
        l$events?.map((e) => e == null ? null : dateTimeToJson(e)).toList();
    final l$eventsOfEvents = eventsOfEvents;
    _resultData['eventsOfEvents'] = l$eventsOfEvents
        ?.map(
            (e) => e?.map((e) => e == null ? null : dateTimeToJson(e)).toList())
        .toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents?.map((e) => e.toJson()).toList();
    final l$favParent = favParent;
    _resultData['favParent'] = l$favParent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$children = children;
    _resultData['children'] = l$children?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    final l$favParent = favParent;
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
      l$favParent,
      l$$__typename,
      l$children == null ? null : Object.hashAll(l$children.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchPerson$fetchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) {
        return false;
      }
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) {
            return false;
          }
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) {
              return false;
            }
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
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$favParent = favParent;
    final lOther$favParent = other.favParent;
    if (l$favParent != lOther$favParent) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetchPerson
    on Query$FetchPerson$fetchPerson {
  CopyWith$Query$FetchPerson$fetchPerson<Query$FetchPerson$fetchPerson>
      get copyWith => CopyWith$Query$FetchPerson$fetchPerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  factory CopyWith$Query$FetchPerson$fetchPerson(
    Query$FetchPerson$fetchPerson instance,
    TRes Function(Query$FetchPerson$fetchPerson) then,
  ) = _CopyWithImpl$Query$FetchPerson$fetchPerson;

  factory CopyWith$Query$FetchPerson$fetchPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson$fetchPerson;

  TRes call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Query$FetchPerson$fetchPerson$parents>? parents,
    Fragment$PersonParent? favParent,
    String? $__typename,
    List<Fragment$PersonSummary>? children,
  });
  TRes parents(
      Iterable<Query$FetchPerson$fetchPerson$parents>? Function(
              Iterable<
                  CopyWith$Query$FetchPerson$fetchPerson$parents<
                      Query$FetchPerson$fetchPerson$parents>>?)
          _fn);
  CopyWith$Fragment$PersonParent<TRes> get favParent;
  TRes children(
      Iterable<Fragment$PersonSummary>? Function(
              Iterable<
                  CopyWith$Fragment$PersonSummary<Fragment$PersonSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$FetchPerson$fetchPerson<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  _CopyWithImpl$Query$FetchPerson$fetchPerson(
    this._instance,
    this._then,
  );

  final Query$FetchPerson$fetchPerson _instance;

  final TRes Function(Query$FetchPerson$fetchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nickname = _undefined,
    Object? name = _undefined,
    Object? dob = _undefined,
    Object? events = _undefined,
    Object? eventsOfEvents = _undefined,
    Object? parents = _undefined,
    Object? favParent = _undefined,
    Object? $__typename = _undefined,
    Object? children = _undefined,
  }) =>
      _then(Query$FetchPerson$fetchPerson(
        nickname:
            nickname == _undefined ? _instance.nickname : (nickname as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        events: events == _undefined
            ? _instance.events
            : (events as List<DateTime?>?),
        eventsOfEvents: eventsOfEvents == _undefined
            ? _instance.eventsOfEvents
            : (eventsOfEvents as List<List<DateTime?>?>?),
        parents: parents == _undefined
            ? _instance.parents
            : (parents as List<Query$FetchPerson$fetchPerson$parents>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as Fragment$PersonParent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        children: children == _undefined
            ? _instance.children
            : (children as List<Fragment$PersonSummary>?),
      ));
  TRes parents(
          Iterable<Query$FetchPerson$fetchPerson$parents>? Function(
                  Iterable<
                      CopyWith$Query$FetchPerson$fetchPerson$parents<
                          Query$FetchPerson$fetchPerson$parents>>?)
              _fn) =>
      call(
          parents: _fn(_instance.parents
              ?.map((e) => CopyWith$Query$FetchPerson$fetchPerson$parents(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Fragment$PersonParent<TRes> get favParent {
    final local$favParent = _instance.favParent;
    return local$favParent == null
        ? CopyWith$Fragment$PersonParent.stub(_then(_instance))
        : CopyWith$Fragment$PersonParent(
            local$favParent, (e) => call(favParent: e));
  }

  TRes children(
          Iterable<Fragment$PersonSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$PersonSummary<Fragment$PersonSummary>>?)
              _fn) =>
      call(
          children: _fn(
              _instance.children?.map((e) => CopyWith$Fragment$PersonSummary(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$FetchPerson$fetchPerson<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson<TRes> {
  _CopyWithStubImpl$Query$FetchPerson$fetchPerson(this._res);

  TRes _res;

  call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Query$FetchPerson$fetchPerson$parents>? parents,
    Fragment$PersonParent? favParent,
    String? $__typename,
    List<Fragment$PersonSummary>? children,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$Fragment$PersonParent<TRes> get favParent =>
      CopyWith$Fragment$PersonParent.stub(_res);
  children(_fn) => _res;
}

class Query$FetchPerson$fetchPerson$parents
    implements Fragment$PersonParent, Fragment$PersonSummary {
  Query$FetchPerson$fetchPerson$parents({
    required this.name,
    this.$__typename = 'Person',
    this.nickname,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
  });

  factory Query$FetchPerson$fetchPerson$parents.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$nickname = json['nickname'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    return Query$FetchPerson$fetchPerson$parents(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      nickname: (l$nickname as String?),
      dob: l$dob == null ? null : dateTimeFromJson(l$dob),
      events: (l$events as List<dynamic>?)
          ?.map((e) => e == null ? null : dateTimeFromJson(e))
          .toList(),
      eventsOfEvents: (l$eventsOfEvents as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : dateTimeFromJson(e))
              .toList())
          .toList(),
      parents: (l$parents as List<dynamic>?)
          ?.map((e) =>
              Fragment$PersonParent.fromJson((e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : Fragment$PersonParent.fromJson(
              (l$favParent as Map<String, dynamic>)),
    );
  }

  final String name;

  final String $__typename;

  final String? nickname;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<Fragment$PersonParent>? parents;

  final Fragment$PersonParent? favParent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$dob = dob;
    _resultData['dob'] = l$dob == null ? null : dateTimeToJson(l$dob);
    final l$events = events;
    _resultData['events'] =
        l$events?.map((e) => e == null ? null : dateTimeToJson(e)).toList();
    final l$eventsOfEvents = eventsOfEvents;
    _resultData['eventsOfEvents'] = l$eventsOfEvents
        ?.map(
            (e) => e?.map((e) => e == null ? null : dateTimeToJson(e)).toList())
        .toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents?.map((e) => e.toJson()).toList();
    final l$favParent = favParent;
    _resultData['favParent'] = l$favParent?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$nickname = nickname;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$parents = parents;
    final l$favParent = favParent;
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
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$favParent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchPerson$fetchPerson$parents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) {
        return false;
      }
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) {
            return false;
          }
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) {
              return false;
            }
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
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$favParent = favParent;
    final lOther$favParent = other.favParent;
    if (l$favParent != lOther$favParent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchPerson$fetchPerson$parents
    on Query$FetchPerson$fetchPerson$parents {
  CopyWith$Query$FetchPerson$fetchPerson$parents<
          Query$FetchPerson$fetchPerson$parents>
      get copyWith => CopyWith$Query$FetchPerson$fetchPerson$parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchPerson$fetchPerson$parents<TRes> {
  factory CopyWith$Query$FetchPerson$fetchPerson$parents(
    Query$FetchPerson$fetchPerson$parents instance,
    TRes Function(Query$FetchPerson$fetchPerson$parents) then,
  ) = _CopyWithImpl$Query$FetchPerson$fetchPerson$parents;

  factory CopyWith$Query$FetchPerson$fetchPerson$parents.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchPerson$fetchPerson$parents;

  TRes call({
    String? name,
    String? $__typename,
    String? nickname,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Fragment$PersonParent>? parents,
    Fragment$PersonParent? favParent,
  });
  TRes parents(
      Iterable<Fragment$PersonParent>? Function(
              Iterable<CopyWith$Fragment$PersonParent<Fragment$PersonParent>>?)
          _fn);
  CopyWith$Fragment$PersonParent<TRes> get favParent;
}

class _CopyWithImpl$Query$FetchPerson$fetchPerson$parents<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson$parents<TRes> {
  _CopyWithImpl$Query$FetchPerson$fetchPerson$parents(
    this._instance,
    this._then,
  );

  final Query$FetchPerson$fetchPerson$parents _instance;

  final TRes Function(Query$FetchPerson$fetchPerson$parents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? nickname = _undefined,
    Object? dob = _undefined,
    Object? events = _undefined,
    Object? eventsOfEvents = _undefined,
    Object? parents = _undefined,
    Object? favParent = _undefined,
  }) =>
      _then(Query$FetchPerson$fetchPerson$parents(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nickname:
            nickname == _undefined ? _instance.nickname : (nickname as String?),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        events: events == _undefined
            ? _instance.events
            : (events as List<DateTime?>?),
        eventsOfEvents: eventsOfEvents == _undefined
            ? _instance.eventsOfEvents
            : (eventsOfEvents as List<List<DateTime?>?>?),
        parents: parents == _undefined
            ? _instance.parents
            : (parents as List<Fragment$PersonParent>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as Fragment$PersonParent?),
      ));
  TRes parents(
          Iterable<Fragment$PersonParent>? Function(
                  Iterable<
                      CopyWith$Fragment$PersonParent<Fragment$PersonParent>>?)
              _fn) =>
      call(
          parents:
              _fn(_instance.parents?.map((e) => CopyWith$Fragment$PersonParent(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Fragment$PersonParent<TRes> get favParent {
    final local$favParent = _instance.favParent;
    return local$favParent == null
        ? CopyWith$Fragment$PersonParent.stub(_then(_instance))
        : CopyWith$Fragment$PersonParent(
            local$favParent, (e) => call(favParent: e));
  }
}

class _CopyWithStubImpl$Query$FetchPerson$fetchPerson$parents<TRes>
    implements CopyWith$Query$FetchPerson$fetchPerson$parents<TRes> {
  _CopyWithStubImpl$Query$FetchPerson$fetchPerson$parents(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? nickname,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Fragment$PersonParent>? parents,
    Fragment$PersonParent? favParent,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$Fragment$PersonParent<TRes> get favParent =>
      CopyWith$Fragment$PersonParent.stub(_res);
}

class Variables$Mutation$UpdatePerson {
  factory Variables$Mutation$UpdatePerson({required String id}) =>
      Variables$Mutation$UpdatePerson._({
        r'id': id,
      });

  Variables$Mutation$UpdatePerson._(this._$data);

  factory Variables$Mutation$UpdatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$UpdatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePerson<Variables$Mutation$UpdatePerson>
      get copyWith => CopyWith$Variables$Mutation$UpdatePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePerson<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePerson(
    Variables$Mutation$UpdatePerson instance,
    TRes Function(Variables$Mutation$UpdatePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePerson;

  factory CopyWith$Variables$Mutation$UpdatePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$UpdatePerson<TRes>
    implements CopyWith$Variables$Mutation$UpdatePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePerson _instance;

  final TRes Function(Variables$Mutation$UpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$UpdatePerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePerson<TRes>
    implements CopyWith$Variables$Mutation$UpdatePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$UpdatePerson {
  Mutation$UpdatePerson({
    this.updatePerson,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePerson = json['updatePerson'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePerson(
      updatePerson: l$updatePerson == null
          ? null
          : Mutation$UpdatePerson$updatePerson.fromJson(
              (l$updatePerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePerson$updatePerson? updatePerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePerson = updatePerson;
    _resultData['updatePerson'] = l$updatePerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePerson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePerson = updatePerson;
    final lOther$updatePerson = other.updatePerson;
    if (l$updatePerson != lOther$updatePerson) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePerson on Mutation$UpdatePerson {
  CopyWith$Mutation$UpdatePerson<Mutation$UpdatePerson> get copyWith =>
      CopyWith$Mutation$UpdatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePerson<TRes> {
  factory CopyWith$Mutation$UpdatePerson(
    Mutation$UpdatePerson instance,
    TRes Function(Mutation$UpdatePerson) then,
  ) = _CopyWithImpl$Mutation$UpdatePerson;

  factory CopyWith$Mutation$UpdatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePerson;

  TRes call({
    Mutation$UpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePerson$updatePerson<TRes> get updatePerson;
}

class _CopyWithImpl$Mutation$UpdatePerson<TRes>
    implements CopyWith$Mutation$UpdatePerson<TRes> {
  _CopyWithImpl$Mutation$UpdatePerson(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePerson _instance;

  final TRes Function(Mutation$UpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePerson(
        updatePerson: updatePerson == _undefined
            ? _instance.updatePerson
            : (updatePerson as Mutation$UpdatePerson$updatePerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdatePerson$updatePerson<TRes> get updatePerson {
    final local$updatePerson = _instance.updatePerson;
    return local$updatePerson == null
        ? CopyWith$Mutation$UpdatePerson$updatePerson.stub(_then(_instance))
        : CopyWith$Mutation$UpdatePerson$updatePerson(
            local$updatePerson, (e) => call(updatePerson: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePerson<TRes>
    implements CopyWith$Mutation$UpdatePerson<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePerson(this._res);

  TRes _res;

  call({
    Mutation$UpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdatePerson$updatePerson<TRes> get updatePerson =>
      CopyWith$Mutation$UpdatePerson$updatePerson.stub(_res);
}

const documentNodeMutationUpdatePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_person'),
        alias: NameNode(value: 'updatePerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'full_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdatePerson _parserFn$Mutation$UpdatePerson(
        Map<String, dynamic> data) =>
    Mutation$UpdatePerson.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePerson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdatePerson?,
);

class Options$Mutation$UpdatePerson
    extends graphql.MutationOptions<Mutation$UpdatePerson> {
  Options$Mutation$UpdatePerson({
    String? operationName,
    required Variables$Mutation$UpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePerson? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePerson>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdatePerson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePerson,
          parserFn: _parserFn$Mutation$UpdatePerson,
        );

  final OnMutationCompleted$Mutation$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePerson
    extends graphql.WatchQueryOptions<Mutation$UpdatePerson> {
  WatchOptions$Mutation$UpdatePerson({
    String? operationName,
    required Variables$Mutation$UpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdatePerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdatePerson,
        );
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
  Mutation$UpdatePerson$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdatePerson runMutation;

  final graphql.QueryResult<Mutation$UpdatePerson> result;
}

Mutation$UpdatePerson$HookResult useMutation$UpdatePerson(
    [WidgetOptions$Mutation$UpdatePerson? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdatePerson());
  return Mutation$UpdatePerson$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdatePerson> useWatchMutation$UpdatePerson(
        WatchOptions$Mutation$UpdatePerson options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdatePerson
    extends graphql.MutationOptions<Mutation$UpdatePerson> {
  WidgetOptions$Mutation$UpdatePerson({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePerson? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePerson>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdatePerson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePerson,
          parserFn: _parserFn$Mutation$UpdatePerson,
        );

  final OnMutationCompleted$Mutation$UpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdatePerson
    = graphql.MultiSourceResult<Mutation$UpdatePerson> Function(
  Variables$Mutation$UpdatePerson, {
  Object? optimisticResult,
  Mutation$UpdatePerson? typedOptimisticResult,
});
typedef Builder$Mutation$UpdatePerson = widgets.Widget Function(
  RunMutation$Mutation$UpdatePerson,
  graphql.QueryResult<Mutation$UpdatePerson>?,
);

class Mutation$UpdatePerson$Widget
    extends graphql_flutter.Mutation<Mutation$UpdatePerson> {
  Mutation$UpdatePerson$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdatePerson? options,
    required Builder$Mutation$UpdatePerson builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdatePerson(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdatePerson$updatePerson {
  Mutation$UpdatePerson$updatePerson({
    required this.full_name,
    this.$__typename = 'Person',
  });

  factory Mutation$UpdatePerson$updatePerson.fromJson(
      Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePerson$updatePerson(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String full_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePerson$updatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePerson$updatePerson
    on Mutation$UpdatePerson$updatePerson {
  CopyWith$Mutation$UpdatePerson$updatePerson<
          Mutation$UpdatePerson$updatePerson>
      get copyWith => CopyWith$Mutation$UpdatePerson$updatePerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePerson$updatePerson<TRes> {
  factory CopyWith$Mutation$UpdatePerson$updatePerson(
    Mutation$UpdatePerson$updatePerson instance,
    TRes Function(Mutation$UpdatePerson$updatePerson) then,
  ) = _CopyWithImpl$Mutation$UpdatePerson$updatePerson;

  factory CopyWith$Mutation$UpdatePerson$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePerson$updatePerson;

  TRes call({
    String? full_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdatePerson$updatePerson<TRes>
    implements CopyWith$Mutation$UpdatePerson$updatePerson<TRes> {
  _CopyWithImpl$Mutation$UpdatePerson$updatePerson(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePerson$updatePerson _instance;

  final TRes Function(Mutation$UpdatePerson$updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePerson$updatePerson(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdatePerson$updatePerson<TRes>
    implements CopyWith$Mutation$UpdatePerson$updatePerson<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePerson$updatePerson(this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$WatchPerson {
  factory Variables$Subscription$WatchPerson({String? id}) =>
      Variables$Subscription$WatchPerson._({
        if (id != null) r'id': id,
      });

  Variables$Subscription$WatchPerson._(this._$data);

  factory Variables$Subscription$WatchPerson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Variables$Subscription$WatchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$WatchPerson<
          Variables$Subscription$WatchPerson>
      get copyWith => CopyWith$Variables$Subscription$WatchPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$WatchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Subscription$WatchPerson<TRes> {
  factory CopyWith$Variables$Subscription$WatchPerson(
    Variables$Subscription$WatchPerson instance,
    TRes Function(Variables$Subscription$WatchPerson) then,
  ) = _CopyWithImpl$Variables$Subscription$WatchPerson;

  factory CopyWith$Variables$Subscription$WatchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$WatchPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Subscription$WatchPerson<TRes>
    implements CopyWith$Variables$Subscription$WatchPerson<TRes> {
  _CopyWithImpl$Variables$Subscription$WatchPerson(
    this._instance,
    this._then,
  );

  final Variables$Subscription$WatchPerson _instance;

  final TRes Function(Variables$Subscription$WatchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$WatchPerson._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$WatchPerson<TRes>
    implements CopyWith$Variables$Subscription$WatchPerson<TRes> {
  _CopyWithStubImpl$Variables$Subscription$WatchPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Subscription$WatchPerson {
  Subscription$WatchPerson({
    this.watchPerson,
    this.$__typename = 'Subscription',
  });

  factory Subscription$WatchPerson.fromJson(Map<String, dynamic> json) {
    final l$watchPerson = json['watchPerson'];
    final l$$__typename = json['__typename'];
    return Subscription$WatchPerson(
      watchPerson: l$watchPerson == null
          ? null
          : Subscription$WatchPerson$watchPerson.fromJson(
              (l$watchPerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$WatchPerson$watchPerson? watchPerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$watchPerson = watchPerson;
    _resultData['watchPerson'] = l$watchPerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$watchPerson = watchPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$watchPerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$WatchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$watchPerson = watchPerson;
    final lOther$watchPerson = other.watchPerson;
    if (l$watchPerson != lOther$watchPerson) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$WatchPerson
    on Subscription$WatchPerson {
  CopyWith$Subscription$WatchPerson<Subscription$WatchPerson> get copyWith =>
      CopyWith$Subscription$WatchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$WatchPerson<TRes> {
  factory CopyWith$Subscription$WatchPerson(
    Subscription$WatchPerson instance,
    TRes Function(Subscription$WatchPerson) then,
  ) = _CopyWithImpl$Subscription$WatchPerson;

  factory CopyWith$Subscription$WatchPerson.stub(TRes res) =
      _CopyWithStubImpl$Subscription$WatchPerson;

  TRes call({
    Subscription$WatchPerson$watchPerson? watchPerson,
    String? $__typename,
  });
  CopyWith$Subscription$WatchPerson$watchPerson<TRes> get watchPerson;
}

class _CopyWithImpl$Subscription$WatchPerson<TRes>
    implements CopyWith$Subscription$WatchPerson<TRes> {
  _CopyWithImpl$Subscription$WatchPerson(
    this._instance,
    this._then,
  );

  final Subscription$WatchPerson _instance;

  final TRes Function(Subscription$WatchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? watchPerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$WatchPerson(
        watchPerson: watchPerson == _undefined
            ? _instance.watchPerson
            : (watchPerson as Subscription$WatchPerson$watchPerson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$WatchPerson$watchPerson<TRes> get watchPerson {
    final local$watchPerson = _instance.watchPerson;
    return local$watchPerson == null
        ? CopyWith$Subscription$WatchPerson$watchPerson.stub(_then(_instance))
        : CopyWith$Subscription$WatchPerson$watchPerson(
            local$watchPerson, (e) => call(watchPerson: e));
  }
}

class _CopyWithStubImpl$Subscription$WatchPerson<TRes>
    implements CopyWith$Subscription$WatchPerson<TRes> {
  _CopyWithStubImpl$Subscription$WatchPerson(this._res);

  TRes _res;

  call({
    Subscription$WatchPerson$watchPerson? watchPerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$WatchPerson$watchPerson<TRes> get watchPerson =>
      CopyWith$Subscription$WatchPerson$watchPerson.stub(_res);
}

const documentNodeSubscriptionWatchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'WatchPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'watch_person'),
        alias: NameNode(value: 'watchPerson'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'full_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Subscription$WatchPerson _parserFn$Subscription$WatchPerson(
        Map<String, dynamic> data) =>
    Subscription$WatchPerson.fromJson(data);

class Options$Subscription$WatchPerson
    extends graphql.SubscriptionOptions<Subscription$WatchPerson> {
  Options$Subscription$WatchPerson({
    String? operationName,
    Variables$Subscription$WatchPerson? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$WatchPerson? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionWatchPerson,
          parserFn: _parserFn$Subscription$WatchPerson,
        );
}

class WatchOptions$Subscription$WatchPerson
    extends graphql.WatchQueryOptions<Subscription$WatchPerson> {
  WatchOptions$Subscription$WatchPerson({
    String? operationName,
    Variables$Subscription$WatchPerson? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$WatchPerson? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionWatchPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$WatchPerson,
        );
}

class FetchMoreOptions$Subscription$WatchPerson
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$WatchPerson({
    required graphql.UpdateQuery updateQuery,
    Variables$Subscription$WatchPerson? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeSubscriptionWatchPerson,
        );
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
  Subscription$WatchPerson$Widget({
    widgets.Key? key,
    Options$Subscription$WatchPerson? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$WatchPerson>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$WatchPerson>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$WatchPerson(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$WatchPerson$watchPerson {
  Subscription$WatchPerson$watchPerson({
    required this.full_name,
    this.$__typename = 'Person',
  });

  factory Subscription$WatchPerson$watchPerson.fromJson(
      Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    return Subscription$WatchPerson$watchPerson(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String full_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$WatchPerson$watchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$WatchPerson$watchPerson
    on Subscription$WatchPerson$watchPerson {
  CopyWith$Subscription$WatchPerson$watchPerson<
          Subscription$WatchPerson$watchPerson>
      get copyWith => CopyWith$Subscription$WatchPerson$watchPerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$WatchPerson$watchPerson<TRes> {
  factory CopyWith$Subscription$WatchPerson$watchPerson(
    Subscription$WatchPerson$watchPerson instance,
    TRes Function(Subscription$WatchPerson$watchPerson) then,
  ) = _CopyWithImpl$Subscription$WatchPerson$watchPerson;

  factory CopyWith$Subscription$WatchPerson$watchPerson.stub(TRes res) =
      _CopyWithStubImpl$Subscription$WatchPerson$watchPerson;

  TRes call({
    String? full_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$WatchPerson$watchPerson<TRes>
    implements CopyWith$Subscription$WatchPerson$watchPerson<TRes> {
  _CopyWithImpl$Subscription$WatchPerson$watchPerson(
    this._instance,
    this._then,
  );

  final Subscription$WatchPerson$watchPerson _instance;

  final TRes Function(Subscription$WatchPerson$watchPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$WatchPerson$watchPerson(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$WatchPerson$watchPerson<TRes>
    implements CopyWith$Subscription$WatchPerson$watchPerson<TRes> {
  _CopyWithStubImpl$Subscription$WatchPerson$watchPerson(this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
  }) =>
      _res;
}
