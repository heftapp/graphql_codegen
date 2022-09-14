import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_codegen_example/scalars.dart';

class Fragment$PersonSummary {
  Fragment$PersonSummary({
    this.nickname,
    required this.name,
    this.dob,
    this.events,
    this.eventsOfEvents,
    this.parents,
    this.favParent,
    required this.$__typename,
  });

  factory Fragment$PersonSummary.fromJson(Map<String, dynamic> json) {
    final l$nickname = json['nickname'];
    final l$name = json['name'];
    final l$dob = json['dob'];
    final l$events = json['events'];
    final l$eventsOfEvents = json['eventsOfEvents'];
    final l$parents = json['parents'];
    final l$favParent = json['favParent'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonSummary(
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
          ?.map((e) =>
              Fragment$PersonParent.fromJson((e as Map<String, dynamic>)))
          .toList(),
      favParent: l$favParent == null
          ? null
          : Fragment$PersonParent.fromJson(
              (l$favParent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? nickname;

  final String name;

  final DateTime? dob;

  final List<DateTime?>? events;

  final List<List<DateTime?>?>? eventsOfEvents;

  final List<Fragment$PersonParent>? parents;

  final Fragment$PersonParent? favParent;

  final String $__typename;

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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PersonSummary) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$PersonSummary on Fragment$PersonSummary {
  CopyWith$Fragment$PersonSummary<Fragment$PersonSummary> get copyWith =>
      CopyWith$Fragment$PersonSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PersonSummary<TRes> {
  factory CopyWith$Fragment$PersonSummary(
    Fragment$PersonSummary instance,
    TRes Function(Fragment$PersonSummary) then,
  ) = _CopyWithImpl$Fragment$PersonSummary;

  factory CopyWith$Fragment$PersonSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonSummary;

  TRes call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Fragment$PersonParent>? parents,
    Fragment$PersonParent? favParent,
    String? $__typename,
  });
  TRes parents(
      Iterable<Fragment$PersonParent>? Function(
              Iterable<CopyWith$Fragment$PersonParent<Fragment$PersonParent>>?)
          _fn);
  CopyWith$Fragment$PersonParent<TRes> get favParent;
}

class _CopyWithImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithImpl$Fragment$PersonSummary(
    this._instance,
    this._then,
  );

  final Fragment$PersonSummary _instance;

  final TRes Function(Fragment$PersonSummary) _then;

  static const _undefined = {};

  TRes call({
    Object? nickname = _undefined,
    Object? name = _undefined,
    Object? dob = _undefined,
    Object? events = _undefined,
    Object? eventsOfEvents = _undefined,
    Object? parents = _undefined,
    Object? favParent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonSummary(
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
            : (parents as List<Fragment$PersonParent>?),
        favParent: favParent == _undefined
            ? _instance.favParent
            : (favParent as Fragment$PersonParent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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

class _CopyWithStubImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithStubImpl$Fragment$PersonSummary(this._res);

  TRes _res;

  call({
    String? nickname,
    String? name,
    DateTime? dob,
    List<DateTime?>? events,
    List<List<DateTime?>?>? eventsOfEvents,
    List<Fragment$PersonParent>? parents,
    Fragment$PersonParent? favParent,
    String? $__typename,
  }) =>
      _res;
  parents(_fn) => _res;
  CopyWith$Fragment$PersonParent<TRes> get favParent =>
      CopyWith$Fragment$PersonParent.stub(_res);
}

const fragmentDefinitionPersonSummary = FragmentDefinitionNode(
  name: NameNode(value: 'PersonSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'nickname'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'full_name'),
      alias: NameNode(value: 'name'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'dob'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'events'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'events_of_events'),
      alias: NameNode(value: 'eventsOfEvents'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'parents'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PersonParent'),
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
      name: NameNode(value: 'favorite_parent'),
      alias: NameNode(value: 'favParent'),
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PersonParent'),
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
);
const documentNodeFragmentPersonSummary = DocumentNode(definitions: [
  fragmentDefinitionPersonSummary,
  fragmentDefinitionPersonParent,
]);

extension ClientExtension$Fragment$PersonSummary on graphql.GraphQLClient {
  void writeFragment$PersonSummary({
    required Fragment$PersonSummary data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PersonSummary',
            document: documentNodeFragmentPersonSummary,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PersonSummary? readFragment$PersonSummary({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonSummary',
          document: documentNodeFragmentPersonSummary,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PersonSummary.fromJson(result);
  }
}

class Fragment$PersonParent {
  Fragment$PersonParent({
    required this.name,
    required this.$__typename,
  });

  factory Fragment$PersonParent.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonParent(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PersonParent) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$PersonParent on Fragment$PersonParent {
  CopyWith$Fragment$PersonParent<Fragment$PersonParent> get copyWith =>
      CopyWith$Fragment$PersonParent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PersonParent<TRes> {
  factory CopyWith$Fragment$PersonParent(
    Fragment$PersonParent instance,
    TRes Function(Fragment$PersonParent) then,
  ) = _CopyWithImpl$Fragment$PersonParent;

  factory CopyWith$Fragment$PersonParent.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonParent;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonParent<TRes>
    implements CopyWith$Fragment$PersonParent<TRes> {
  _CopyWithImpl$Fragment$PersonParent(
    this._instance,
    this._then,
  );

  final Fragment$PersonParent _instance;

  final TRes Function(Fragment$PersonParent) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonParent(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PersonParent<TRes>
    implements CopyWith$Fragment$PersonParent<TRes> {
  _CopyWithStubImpl$Fragment$PersonParent(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPersonParent = FragmentDefinitionNode(
  name: NameNode(value: 'PersonParent'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'full_name'),
      alias: NameNode(value: 'name'),
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
);
const documentNodeFragmentPersonParent = DocumentNode(definitions: [
  fragmentDefinitionPersonParent,
]);

extension ClientExtension$Fragment$PersonParent on graphql.GraphQLClient {
  void writeFragment$PersonParent({
    required Fragment$PersonParent data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PersonParent',
            document: documentNodeFragmentPersonParent,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PersonParent? readFragment$PersonParent({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonParent',
          document: documentNodeFragmentPersonParent,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PersonParent.fromJson(result);
  }
}
