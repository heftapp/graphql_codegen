import 'package:gql/ast.dart';

class Query$Foobar {
  Query$Foobar({
    this.ts,
    this.tss,
    this.$__typename = 'Query',
  });

  factory Query$Foobar.fromJson(Map<String, dynamic> json) {
    final l$ts = json['ts'];
    final l$tss = json['tss'];
    final l$$__typename = json['__typename'];
    return Query$Foobar(
      ts: (l$ts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Foobar$ts.fromJson((e as Map<String, dynamic>)))
          .toList(),
      tss: (l$tss as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$Foobar$tss.fromJson((e as Map<String, dynamic>)))
              .toList())
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Foobar$ts?>? ts;

  final List<List<Query$Foobar$tss?>?>? tss;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ts = ts;
    _resultData['ts'] = l$ts?.map((e) => e?.toJson()).toList();
    final l$tss = tss;
    _resultData['tss'] =
        l$tss?.map((e) => e?.map((e) => e?.toJson()).toList()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ts = ts;
    final l$tss = tss;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ts == null ? null : Object.hashAll(l$ts.map((v) => v)),
      l$tss == null
          ? null
          : Object.hashAll(l$tss
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Foobar) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ts = ts;
    final lOther$ts = other.ts;
    if (l$ts != null && lOther$ts != null) {
      if (l$ts.length != lOther$ts.length) {
        return false;
      }
      for (int i = 0; i < l$ts.length; i++) {
        final l$ts$entry = l$ts[i];
        final lOther$ts$entry = lOther$ts[i];
        if (l$ts$entry != lOther$ts$entry) {
          return false;
        }
      }
    } else if (l$ts != lOther$ts) {
      return false;
    }
    final l$tss = tss;
    final lOther$tss = other.tss;
    if (l$tss != null && lOther$tss != null) {
      if (l$tss.length != lOther$tss.length) {
        return false;
      }
      for (int i = 0; i < l$tss.length; i++) {
        final l$tss$entry = l$tss[i];
        final lOther$tss$entry = lOther$tss[i];
        if (l$tss$entry != null && lOther$tss$entry != null) {
          if (l$tss$entry.length != lOther$tss$entry.length) {
            return false;
          }
          for (int i = 0; i < l$tss$entry.length; i++) {
            final l$tss$entry$entry = l$tss$entry[i];
            final lOther$tss$entry$entry = lOther$tss$entry[i];
            if (l$tss$entry$entry != lOther$tss$entry$entry) {
              return false;
            }
          }
        } else if (l$tss$entry != lOther$tss$entry) {
          return false;
        }
      }
    } else if (l$tss != lOther$tss) {
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

extension UtilityExtension$Query$Foobar on Query$Foobar {
  CopyWith$Query$Foobar<Query$Foobar> get copyWith => CopyWith$Query$Foobar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Foobar<TRes> {
  factory CopyWith$Query$Foobar(
    Query$Foobar instance,
    TRes Function(Query$Foobar) then,
  ) = _CopyWithImpl$Query$Foobar;

  factory CopyWith$Query$Foobar.stub(TRes res) = _CopyWithStubImpl$Query$Foobar;

  TRes call({
    List<Query$Foobar$ts?>? ts,
    List<List<Query$Foobar$tss?>?>? tss,
    String? $__typename,
  });
  TRes ts(
      Iterable<Query$Foobar$ts?>? Function(
              Iterable<CopyWith$Query$Foobar$ts<Query$Foobar$ts>?>?)
          _fn);
  TRes tss(
      Iterable<Iterable<Query$Foobar$tss?>?>? Function(
              Iterable<
                  Iterable<CopyWith$Query$Foobar$tss<Query$Foobar$tss>?>?>?)
          _fn);
}

class _CopyWithImpl$Query$Foobar<TRes> implements CopyWith$Query$Foobar<TRes> {
  _CopyWithImpl$Query$Foobar(
    this._instance,
    this._then,
  );

  final Query$Foobar _instance;

  final TRes Function(Query$Foobar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ts = _undefined,
    Object? tss = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Foobar(
        ts: ts == _undefined ? _instance.ts : (ts as List<Query$Foobar$ts?>?),
        tss: tss == _undefined
            ? _instance.tss
            : (tss as List<List<Query$Foobar$tss?>?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ts(
          Iterable<Query$Foobar$ts?>? Function(
                  Iterable<CopyWith$Query$Foobar$ts<Query$Foobar$ts>?>?)
              _fn) =>
      call(
          ts: _fn(_instance.ts?.map((e) => e == null
              ? null
              : CopyWith$Query$Foobar$ts(
                  e,
                  (i) => i,
                )))?.toList());
  TRes tss(
          Iterable<Iterable<Query$Foobar$tss?>?>? Function(
                  Iterable<
                      Iterable<CopyWith$Query$Foobar$tss<Query$Foobar$tss>?>?>?)
              _fn) =>
      call(
          tss: _fn(_instance.tss?.map((e) => e?.map((e) => e == null
              ? null
              : CopyWith$Query$Foobar$tss(
                  e,
                  (i) => i,
                ))))?.map((e) => e?.toList()).toList());
}

class _CopyWithStubImpl$Query$Foobar<TRes>
    implements CopyWith$Query$Foobar<TRes> {
  _CopyWithStubImpl$Query$Foobar(this._res);

  TRes _res;

  call({
    List<Query$Foobar$ts?>? ts,
    List<List<Query$Foobar$tss?>?>? tss,
    String? $__typename,
  }) =>
      _res;
  ts(_fn) => _res;
  tss(_fn) => _res;
}

const documentNodeQueryFoobar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Foobar'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'name'),
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
        name: NameNode(value: 'tss'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nameEnforced'),
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

class Query$Foobar$ts {
  Query$Foobar$ts({
    this.t,
    this.name,
    this.$__typename = 'TS',
  });

  factory Query$Foobar$ts.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Foobar$ts(
      t: l$t == null
          ? null
          : Query$Foobar$ts$t.fromJson((l$t as Map<String, dynamic>)),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Foobar$ts$t? t;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$t,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Foobar$ts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
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

extension UtilityExtension$Query$Foobar$ts on Query$Foobar$ts {
  CopyWith$Query$Foobar$ts<Query$Foobar$ts> get copyWith =>
      CopyWith$Query$Foobar$ts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Foobar$ts<TRes> {
  factory CopyWith$Query$Foobar$ts(
    Query$Foobar$ts instance,
    TRes Function(Query$Foobar$ts) then,
  ) = _CopyWithImpl$Query$Foobar$ts;

  factory CopyWith$Query$Foobar$ts.stub(TRes res) =
      _CopyWithStubImpl$Query$Foobar$ts;

  TRes call({
    Query$Foobar$ts$t? t,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$Foobar$ts$t<TRes> get t;
}

class _CopyWithImpl$Query$Foobar$ts<TRes>
    implements CopyWith$Query$Foobar$ts<TRes> {
  _CopyWithImpl$Query$Foobar$ts(
    this._instance,
    this._then,
  );

  final Query$Foobar$ts _instance;

  final TRes Function(Query$Foobar$ts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? t = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Foobar$ts(
        t: t == _undefined ? _instance.t : (t as Query$Foobar$ts$t?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Foobar$ts$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Query$Foobar$ts$t.stub(_then(_instance))
        : CopyWith$Query$Foobar$ts$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Foobar$ts<TRes>
    implements CopyWith$Query$Foobar$ts<TRes> {
  _CopyWithStubImpl$Query$Foobar$ts(this._res);

  TRes _res;

  call({
    Query$Foobar$ts$t? t,
    String? name,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Foobar$ts$t<TRes> get t =>
      CopyWith$Query$Foobar$ts$t.stub(_res);
}

class Query$Foobar$ts$t {
  Query$Foobar$ts$t({
    this.name,
    this.$__typename = 'TS',
  });

  factory Query$Foobar$ts$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Foobar$ts$t(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

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
    if (!(other is Query$Foobar$ts$t) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Foobar$ts$t on Query$Foobar$ts$t {
  CopyWith$Query$Foobar$ts$t<Query$Foobar$ts$t> get copyWith =>
      CopyWith$Query$Foobar$ts$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Foobar$ts$t<TRes> {
  factory CopyWith$Query$Foobar$ts$t(
    Query$Foobar$ts$t instance,
    TRes Function(Query$Foobar$ts$t) then,
  ) = _CopyWithImpl$Query$Foobar$ts$t;

  factory CopyWith$Query$Foobar$ts$t.stub(TRes res) =
      _CopyWithStubImpl$Query$Foobar$ts$t;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Foobar$ts$t<TRes>
    implements CopyWith$Query$Foobar$ts$t<TRes> {
  _CopyWithImpl$Query$Foobar$ts$t(
    this._instance,
    this._then,
  );

  final Query$Foobar$ts$t _instance;

  final TRes Function(Query$Foobar$ts$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Foobar$ts$t(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Foobar$ts$t<TRes>
    implements CopyWith$Query$Foobar$ts$t<TRes> {
  _CopyWithStubImpl$Query$Foobar$ts$t(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Foobar$tss {
  Query$Foobar$tss({
    required this.nameEnforced,
    this.$__typename = 'TS',
  });

  factory Query$Foobar$tss.fromJson(Map<String, dynamic> json) {
    final l$nameEnforced = json['nameEnforced'];
    final l$$__typename = json['__typename'];
    return Query$Foobar$tss(
      nameEnforced: (l$nameEnforced as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String nameEnforced;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nameEnforced = nameEnforced;
    _resultData['nameEnforced'] = l$nameEnforced;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nameEnforced = nameEnforced;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nameEnforced,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Foobar$tss) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$nameEnforced = nameEnforced;
    final lOther$nameEnforced = other.nameEnforced;
    if (l$nameEnforced != lOther$nameEnforced) {
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

extension UtilityExtension$Query$Foobar$tss on Query$Foobar$tss {
  CopyWith$Query$Foobar$tss<Query$Foobar$tss> get copyWith =>
      CopyWith$Query$Foobar$tss(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Foobar$tss<TRes> {
  factory CopyWith$Query$Foobar$tss(
    Query$Foobar$tss instance,
    TRes Function(Query$Foobar$tss) then,
  ) = _CopyWithImpl$Query$Foobar$tss;

  factory CopyWith$Query$Foobar$tss.stub(TRes res) =
      _CopyWithStubImpl$Query$Foobar$tss;

  TRes call({
    String? nameEnforced,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Foobar$tss<TRes>
    implements CopyWith$Query$Foobar$tss<TRes> {
  _CopyWithImpl$Query$Foobar$tss(
    this._instance,
    this._then,
  );

  final Query$Foobar$tss _instance;

  final TRes Function(Query$Foobar$tss) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nameEnforced = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Foobar$tss(
        nameEnforced: nameEnforced == _undefined || nameEnforced == null
            ? _instance.nameEnforced
            : (nameEnforced as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Foobar$tss<TRes>
    implements CopyWith$Query$Foobar$tss<TRes> {
  _CopyWithStubImpl$Query$Foobar$tss(this._res);

  TRes _res;

  call({
    String? nameEnforced,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
