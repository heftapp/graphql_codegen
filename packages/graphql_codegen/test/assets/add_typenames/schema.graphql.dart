import 'package:gql/ast.dart';

class Fragment$FReport {
  Fragment$FReport({this.title, required this.$__typename});

  factory Fragment$FReport.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$FReport(
        title: (l$title as String?), $__typename: (l$$__typename as String));
  }

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FReport) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Fragment$FReport on Fragment$FReport {
  CopyWith$Fragment$FReport<Fragment$FReport> get copyWith =>
      CopyWith$Fragment$FReport(this, (i) => i);
}

abstract class CopyWith$Fragment$FReport<TRes> {
  factory CopyWith$Fragment$FReport(
          Fragment$FReport instance, TRes Function(Fragment$FReport) then) =>
      _CopyWithImpl$Fragment$FReport(instance, then);

  factory CopyWith$Fragment$FReport.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FReport;

  TRes call({String? title, String? $__typename});
}

class _CopyWithImpl$Fragment$FReport<TRes>
    implements CopyWith$Fragment$FReport<TRes> {
  _CopyWithImpl$Fragment$FReport(this._instance, this._then);

  final Fragment$FReport _instance;

  final TRes Function(Fragment$FReport) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$FReport(
          title: title == _undefined ? _instance.title : (title as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$FReport<TRes>
    implements CopyWith$Fragment$FReport<TRes> {
  _CopyWithStubImpl$Fragment$FReport(this._res);

  TRes _res;

  call({String? title, String? $__typename}) => _res;
}

const fragmentDefinitionFReport = FragmentDefinitionNode(
    name: NameNode(value: 'FReport'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Report'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'title'),
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
    ]));
const documentNodeFragmentFReport = DocumentNode(definitions: [
  fragmentDefinitionFReport,
]);

class Query$Q {
  Query$Q(
      {this.docsWithTypename,
      this.docsWihtoutTypename,
      this.docsWithAliasedTypename,
      this.docsWithFragment,
      required this.$__typename});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$docsWithTypename = json['docsWithTypename'];
    final l$docsWihtoutTypename = json['docsWihtoutTypename'];
    final l$docsWithAliasedTypename = json['docsWithAliasedTypename'];
    final l$docsWithFragment = json['docsWithFragment'];
    final l$$__typename = json['__typename'];
    return Query$Q(
        docsWithTypename: (l$docsWithTypename as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$Q$docsWithTypename.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        docsWihtoutTypename: (l$docsWihtoutTypename as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$Q$docsWihtoutTypename.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        docsWithAliasedTypename: (l$docsWithAliasedTypename as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$Q$docsWithAliasedTypename.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        docsWithFragment: (l$docsWithFragment as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$Q$docsWithFragment.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$Q$docsWithTypename?>? docsWithTypename;

  final List<Query$Q$docsWihtoutTypename?>? docsWihtoutTypename;

  final List<Query$Q$docsWithAliasedTypename?>? docsWithAliasedTypename;

  final List<Query$Q$docsWithFragment?>? docsWithFragment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$docsWithTypename = docsWithTypename;
    _resultData['docsWithTypename'] =
        l$docsWithTypename?.map((e) => e?.toJson()).toList();
    final l$docsWihtoutTypename = docsWihtoutTypename;
    _resultData['docsWihtoutTypename'] =
        l$docsWihtoutTypename?.map((e) => e?.toJson()).toList();
    final l$docsWithAliasedTypename = docsWithAliasedTypename;
    _resultData['docsWithAliasedTypename'] =
        l$docsWithAliasedTypename?.map((e) => e?.toJson()).toList();
    final l$docsWithFragment = docsWithFragment;
    _resultData['docsWithFragment'] =
        l$docsWithFragment?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$docsWithTypename = docsWithTypename;
    final l$docsWihtoutTypename = docsWihtoutTypename;
    final l$docsWithAliasedTypename = docsWithAliasedTypename;
    final l$docsWithFragment = docsWithFragment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$docsWithTypename == null
          ? null
          : Object.hashAll(l$docsWithTypename.map((v) => v)),
      l$docsWihtoutTypename == null
          ? null
          : Object.hashAll(l$docsWihtoutTypename.map((v) => v)),
      l$docsWithAliasedTypename == null
          ? null
          : Object.hashAll(l$docsWithAliasedTypename.map((v) => v)),
      l$docsWithFragment == null
          ? null
          : Object.hashAll(l$docsWithFragment.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$docsWithTypename = docsWithTypename;
    final lOther$docsWithTypename = other.docsWithTypename;
    if (l$docsWithTypename != null && lOther$docsWithTypename != null) {
      if (l$docsWithTypename.length != lOther$docsWithTypename.length) {
        return false;
      }
      for (int i = 0; i < l$docsWithTypename.length; i++) {
        final l$docsWithTypename$entry = l$docsWithTypename[i];
        final lOther$docsWithTypename$entry = lOther$docsWithTypename[i];
        if (l$docsWithTypename$entry != lOther$docsWithTypename$entry) {
          return false;
        }
      }
    } else if (l$docsWithTypename != lOther$docsWithTypename) {
      return false;
    }
    final l$docsWihtoutTypename = docsWihtoutTypename;
    final lOther$docsWihtoutTypename = other.docsWihtoutTypename;
    if (l$docsWihtoutTypename != null && lOther$docsWihtoutTypename != null) {
      if (l$docsWihtoutTypename.length != lOther$docsWihtoutTypename.length) {
        return false;
      }
      for (int i = 0; i < l$docsWihtoutTypename.length; i++) {
        final l$docsWihtoutTypename$entry = l$docsWihtoutTypename[i];
        final lOther$docsWihtoutTypename$entry = lOther$docsWihtoutTypename[i];
        if (l$docsWihtoutTypename$entry != lOther$docsWihtoutTypename$entry) {
          return false;
        }
      }
    } else if (l$docsWihtoutTypename != lOther$docsWihtoutTypename) {
      return false;
    }
    final l$docsWithAliasedTypename = docsWithAliasedTypename;
    final lOther$docsWithAliasedTypename = other.docsWithAliasedTypename;
    if (l$docsWithAliasedTypename != null &&
        lOther$docsWithAliasedTypename != null) {
      if (l$docsWithAliasedTypename.length !=
          lOther$docsWithAliasedTypename.length) {
        return false;
      }
      for (int i = 0; i < l$docsWithAliasedTypename.length; i++) {
        final l$docsWithAliasedTypename$entry = l$docsWithAliasedTypename[i];
        final lOther$docsWithAliasedTypename$entry =
            lOther$docsWithAliasedTypename[i];
        if (l$docsWithAliasedTypename$entry !=
            lOther$docsWithAliasedTypename$entry) {
          return false;
        }
      }
    } else if (l$docsWithAliasedTypename != lOther$docsWithAliasedTypename) {
      return false;
    }
    final l$docsWithFragment = docsWithFragment;
    final lOther$docsWithFragment = other.docsWithFragment;
    if (l$docsWithFragment != null && lOther$docsWithFragment != null) {
      if (l$docsWithFragment.length != lOther$docsWithFragment.length) {
        return false;
      }
      for (int i = 0; i < l$docsWithFragment.length; i++) {
        final l$docsWithFragment$entry = l$docsWithFragment[i];
        final lOther$docsWithFragment$entry = lOther$docsWithFragment[i];
        if (l$docsWithFragment$entry != lOther$docsWithFragment$entry) {
          return false;
        }
      }
    } else if (l$docsWithFragment != lOther$docsWithFragment) {
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

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(this, (i) => i);
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(Query$Q instance, TRes Function(Query$Q) then) =>
      _CopyWithImpl$Query$Q(instance, then);

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call(
      {List<Query$Q$docsWithTypename?>? docsWithTypename,
      List<Query$Q$docsWihtoutTypename?>? docsWihtoutTypename,
      List<Query$Q$docsWithAliasedTypename?>? docsWithAliasedTypename,
      List<Query$Q$docsWithFragment?>? docsWithFragment,
      String? $__typename});
  TRes docsWithTypename(
      Iterable<Query$Q$docsWithTypename?>? Function(
              Iterable<
                  CopyWith$Query$Q$docsWithTypename<
                      Query$Q$docsWithTypename>?>?)
          _fn);
  TRes docsWihtoutTypename(
      Iterable<Query$Q$docsWihtoutTypename?>? Function(
              Iterable<
                  CopyWith$Query$Q$docsWihtoutTypename<
                      Query$Q$docsWihtoutTypename>?>?)
          _fn);
  TRes docsWithAliasedTypename(
      Iterable<Query$Q$docsWithAliasedTypename?>? Function(
              Iterable<
                  CopyWith$Query$Q$docsWithAliasedTypename<
                      Query$Q$docsWithAliasedTypename>?>?)
          _fn);
  TRes docsWithFragment(
      Iterable<Query$Q$docsWithFragment?>? Function(
              Iterable<
                  CopyWith$Query$Q$docsWithFragment<
                      Query$Q$docsWithFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(this._instance, this._then);

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = {};

  TRes call(
          {Object? docsWithTypename = _undefined,
          Object? docsWihtoutTypename = _undefined,
          Object? docsWithAliasedTypename = _undefined,
          Object? docsWithFragment = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Q(
          docsWithTypename: docsWithTypename == _undefined
              ? _instance.docsWithTypename
              : (docsWithTypename as List<Query$Q$docsWithTypename?>?),
          docsWihtoutTypename: docsWihtoutTypename == _undefined
              ? _instance.docsWihtoutTypename
              : (docsWihtoutTypename as List<Query$Q$docsWihtoutTypename?>?),
          docsWithAliasedTypename: docsWithAliasedTypename == _undefined
              ? _instance.docsWithAliasedTypename
              : (docsWithAliasedTypename
                  as List<Query$Q$docsWithAliasedTypename?>?),
          docsWithFragment: docsWithFragment == _undefined
              ? _instance.docsWithFragment
              : (docsWithFragment as List<Query$Q$docsWithFragment?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes docsWithTypename(
          Iterable<Query$Q$docsWithTypename?>? Function(
                  Iterable<
                      CopyWith$Query$Q$docsWithTypename<
                          Query$Q$docsWithTypename>?>?)
              _fn) =>
      call(
          docsWithTypename: _fn(_instance.docsWithTypename?.map((e) => e == null
              ? null
              : CopyWith$Query$Q$docsWithTypename(e, (i) => i)))?.toList());
  TRes docsWihtoutTypename(
          Iterable<Query$Q$docsWihtoutTypename?>? Function(
                  Iterable<
                      CopyWith$Query$Q$docsWihtoutTypename<
                          Query$Q$docsWihtoutTypename>?>?)
              _fn) =>
      call(
          docsWihtoutTypename: _fn(_instance.docsWihtoutTypename?.map((e) =>
                  e == null
                      ? null
                      : CopyWith$Query$Q$docsWihtoutTypename(e, (i) => i)))
              ?.toList());
  TRes docsWithAliasedTypename(
          Iterable<Query$Q$docsWithAliasedTypename?>? Function(
                  Iterable<
                      CopyWith$Query$Q$docsWithAliasedTypename<
                          Query$Q$docsWithAliasedTypename>?>?)
              _fn) =>
      call(
          docsWithAliasedTypename: _fn(_instance.docsWithAliasedTypename?.map(
                  (e) => e == null
                      ? null
                      : CopyWith$Query$Q$docsWithAliasedTypename(e, (i) => i)))
              ?.toList());
  TRes docsWithFragment(
          Iterable<Query$Q$docsWithFragment?>? Function(
                  Iterable<
                      CopyWith$Query$Q$docsWithFragment<
                          Query$Q$docsWithFragment>?>?)
              _fn) =>
      call(
          docsWithFragment: _fn(_instance.docsWithFragment?.map((e) => e == null
              ? null
              : CopyWith$Query$Q$docsWithFragment(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call(
          {List<Query$Q$docsWithTypename?>? docsWithTypename,
          List<Query$Q$docsWihtoutTypename?>? docsWihtoutTypename,
          List<Query$Q$docsWithAliasedTypename?>? docsWithAliasedTypename,
          List<Query$Q$docsWithFragment?>? docsWithFragment,
          String? $__typename}) =>
      _res;
  docsWithTypename(_fn) => _res;
  docsWihtoutTypename(_fn) => _res;
  docsWithAliasedTypename(_fn) => _res;
  docsWithFragment(_fn) => _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWihtoutTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'title'),
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
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithAliasedTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: NameNode(value: '__typename'),
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithFragment'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Contract'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'title'),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'FReport'), directives: []),
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
  fragmentDefinitionFReport,
]);

class Query$Q$docsWithTypename {
  Query$Q$docsWithTypename({required this.$__typename});

  factory Query$Q$docsWithTypename.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Q$docsWithTypename($__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWithTypename) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$docsWithTypename
    on Query$Q$docsWithTypename {
  CopyWith$Query$Q$docsWithTypename<Query$Q$docsWithTypename> get copyWith =>
      CopyWith$Query$Q$docsWithTypename(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWithTypename<TRes> {
  factory CopyWith$Query$Q$docsWithTypename(Query$Q$docsWithTypename instance,
          TRes Function(Query$Q$docsWithTypename) then) =>
      _CopyWithImpl$Query$Q$docsWithTypename(instance, then);

  factory CopyWith$Query$Q$docsWithTypename.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWithTypename;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$docsWithTypename<TRes>
    implements CopyWith$Query$Q$docsWithTypename<TRes> {
  _CopyWithImpl$Query$Q$docsWithTypename(this._instance, this._then);

  final Query$Q$docsWithTypename _instance;

  final TRes Function(Query$Q$docsWithTypename) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Q$docsWithTypename(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q$docsWithTypename<TRes>
    implements CopyWith$Query$Q$docsWithTypename<TRes> {
  _CopyWithStubImpl$Query$Q$docsWithTypename(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Q$docsWihtoutTypename {
  Query$Q$docsWihtoutTypename({this.title, required this.$__typename});

  factory Query$Q$docsWihtoutTypename.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Q$docsWihtoutTypename(
        title: (l$title as String?), $__typename: (l$$__typename as String));
  }

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWihtoutTypename) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Q$docsWihtoutTypename
    on Query$Q$docsWihtoutTypename {
  CopyWith$Query$Q$docsWihtoutTypename<Query$Q$docsWihtoutTypename>
      get copyWith => CopyWith$Query$Q$docsWihtoutTypename(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWihtoutTypename<TRes> {
  factory CopyWith$Query$Q$docsWihtoutTypename(
          Query$Q$docsWihtoutTypename instance,
          TRes Function(Query$Q$docsWihtoutTypename) then) =>
      _CopyWithImpl$Query$Q$docsWihtoutTypename(instance, then);

  factory CopyWith$Query$Q$docsWihtoutTypename.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWihtoutTypename;

  TRes call({String? title, String? $__typename});
}

class _CopyWithImpl$Query$Q$docsWihtoutTypename<TRes>
    implements CopyWith$Query$Q$docsWihtoutTypename<TRes> {
  _CopyWithImpl$Query$Q$docsWihtoutTypename(this._instance, this._then);

  final Query$Q$docsWihtoutTypename _instance;

  final TRes Function(Query$Q$docsWihtoutTypename) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Q$docsWihtoutTypename(
          title: title == _undefined ? _instance.title : (title as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q$docsWihtoutTypename<TRes>
    implements CopyWith$Query$Q$docsWihtoutTypename<TRes> {
  _CopyWithStubImpl$Query$Q$docsWihtoutTypename(this._res);

  TRes _res;

  call({String? title, String? $__typename}) => _res;
}

class Query$Q$docsWithAliasedTypename {
  Query$Q$docsWithAliasedTypename({this.$__typename});

  factory Query$Q$docsWithAliasedTypename.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Q$docsWithAliasedTypename(
        $__typename: (l$$__typename as String?));
  }

  final String? $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWithAliasedTypename) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$docsWithAliasedTypename
    on Query$Q$docsWithAliasedTypename {
  CopyWith$Query$Q$docsWithAliasedTypename<Query$Q$docsWithAliasedTypename>
      get copyWith => CopyWith$Query$Q$docsWithAliasedTypename(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWithAliasedTypename<TRes> {
  factory CopyWith$Query$Q$docsWithAliasedTypename(
          Query$Q$docsWithAliasedTypename instance,
          TRes Function(Query$Q$docsWithAliasedTypename) then) =>
      _CopyWithImpl$Query$Q$docsWithAliasedTypename(instance, then);

  factory CopyWith$Query$Q$docsWithAliasedTypename.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWithAliasedTypename;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$docsWithAliasedTypename<TRes>
    implements CopyWith$Query$Q$docsWithAliasedTypename<TRes> {
  _CopyWithImpl$Query$Q$docsWithAliasedTypename(this._instance, this._then);

  final Query$Q$docsWithAliasedTypename _instance;

  final TRes Function(Query$Q$docsWithAliasedTypename) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Q$docsWithAliasedTypename(
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String?)));
}

class _CopyWithStubImpl$Query$Q$docsWithAliasedTypename<TRes>
    implements CopyWith$Query$Q$docsWithAliasedTypename<TRes> {
  _CopyWithStubImpl$Query$Q$docsWithAliasedTypename(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Q$docsWithFragment {
  Query$Q$docsWithFragment({required this.$__typename});

  factory Query$Q$docsWithFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Contract":
        return Query$Q$docsWithFragment$$Contract.fromJson(json);

      case "Report":
        return Query$Q$docsWithFragment$$Report.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Q$docsWithFragment($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWithFragment) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$docsWithFragment
    on Query$Q$docsWithFragment {
  CopyWith$Query$Q$docsWithFragment<Query$Q$docsWithFragment> get copyWith =>
      CopyWith$Query$Q$docsWithFragment(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWithFragment<TRes> {
  factory CopyWith$Query$Q$docsWithFragment(Query$Q$docsWithFragment instance,
          TRes Function(Query$Q$docsWithFragment) then) =>
      _CopyWithImpl$Query$Q$docsWithFragment(instance, then);

  factory CopyWith$Query$Q$docsWithFragment.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWithFragment;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$docsWithFragment<TRes>
    implements CopyWith$Query$Q$docsWithFragment<TRes> {
  _CopyWithImpl$Query$Q$docsWithFragment(this._instance, this._then);

  final Query$Q$docsWithFragment _instance;

  final TRes Function(Query$Q$docsWithFragment) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Q$docsWithFragment(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q$docsWithFragment<TRes>
    implements CopyWith$Query$Q$docsWithFragment<TRes> {
  _CopyWithStubImpl$Query$Q$docsWithFragment(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Q$docsWithFragment$$Contract implements Query$Q$docsWithFragment {
  Query$Q$docsWithFragment$$Contract({required this.$__typename, this.title});

  factory Query$Q$docsWithFragment$$Contract.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$title = json['title'];
    return Query$Q$docsWithFragment$$Contract(
        $__typename: (l$$__typename as String), title: (l$title as String?));
  }

  final String $__typename;

  final String? title;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWithFragment$$Contract) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$docsWithFragment$$Contract
    on Query$Q$docsWithFragment$$Contract {
  CopyWith$Query$Q$docsWithFragment$$Contract<
          Query$Q$docsWithFragment$$Contract>
      get copyWith =>
          CopyWith$Query$Q$docsWithFragment$$Contract(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWithFragment$$Contract<TRes> {
  factory CopyWith$Query$Q$docsWithFragment$$Contract(
          Query$Q$docsWithFragment$$Contract instance,
          TRes Function(Query$Q$docsWithFragment$$Contract) then) =>
      _CopyWithImpl$Query$Q$docsWithFragment$$Contract(instance, then);

  factory CopyWith$Query$Q$docsWithFragment$$Contract.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWithFragment$$Contract;

  TRes call({String? $__typename, String? title});
}

class _CopyWithImpl$Query$Q$docsWithFragment$$Contract<TRes>
    implements CopyWith$Query$Q$docsWithFragment$$Contract<TRes> {
  _CopyWithImpl$Query$Q$docsWithFragment$$Contract(this._instance, this._then);

  final Query$Q$docsWithFragment$$Contract _instance;

  final TRes Function(Query$Q$docsWithFragment$$Contract) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? title = _undefined}) =>
      _then(Query$Q$docsWithFragment$$Contract(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          title: title == _undefined ? _instance.title : (title as String?)));
}

class _CopyWithStubImpl$Query$Q$docsWithFragment$$Contract<TRes>
    implements CopyWith$Query$Q$docsWithFragment$$Contract<TRes> {
  _CopyWithStubImpl$Query$Q$docsWithFragment$$Contract(this._res);

  TRes _res;

  call({String? $__typename, String? title}) => _res;
}

class Query$Q$docsWithFragment$$Report
    implements Fragment$FReport, Query$Q$docsWithFragment {
  Query$Q$docsWithFragment$$Report({required this.$__typename, this.title});

  factory Query$Q$docsWithFragment$$Report.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$title = json['title'];
    return Query$Q$docsWithFragment$$Report(
        $__typename: (l$$__typename as String), title: (l$title as String?));
  }

  final String $__typename;

  final String? title;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$docsWithFragment$$Report) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$docsWithFragment$$Report
    on Query$Q$docsWithFragment$$Report {
  CopyWith$Query$Q$docsWithFragment$$Report<Query$Q$docsWithFragment$$Report>
      get copyWith => CopyWith$Query$Q$docsWithFragment$$Report(this, (i) => i);
}

abstract class CopyWith$Query$Q$docsWithFragment$$Report<TRes> {
  factory CopyWith$Query$Q$docsWithFragment$$Report(
          Query$Q$docsWithFragment$$Report instance,
          TRes Function(Query$Q$docsWithFragment$$Report) then) =>
      _CopyWithImpl$Query$Q$docsWithFragment$$Report(instance, then);

  factory CopyWith$Query$Q$docsWithFragment$$Report.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$docsWithFragment$$Report;

  TRes call({String? $__typename, String? title});
}

class _CopyWithImpl$Query$Q$docsWithFragment$$Report<TRes>
    implements CopyWith$Query$Q$docsWithFragment$$Report<TRes> {
  _CopyWithImpl$Query$Q$docsWithFragment$$Report(this._instance, this._then);

  final Query$Q$docsWithFragment$$Report _instance;

  final TRes Function(Query$Q$docsWithFragment$$Report) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? title = _undefined}) =>
      _then(Query$Q$docsWithFragment$$Report(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          title: title == _undefined ? _instance.title : (title as String?)));
}

class _CopyWithStubImpl$Query$Q$docsWithFragment$$Report<TRes>
    implements CopyWith$Query$Q$docsWithFragment$$Report<TRes> {
  _CopyWithStubImpl$Query$Q$docsWithFragment$$Report(this._res);

  TRes _res;

  call({String? $__typename, String? title}) => _res;
}

const possibleTypesMap = {
  'Document': {'Contract', 'Report'}
};
