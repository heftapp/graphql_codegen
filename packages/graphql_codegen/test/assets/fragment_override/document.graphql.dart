import 'package:gql/ast.dart';

class Fragment$T1 {
  Fragment$T1({this.t});

  factory Fragment$T1.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    return Fragment$T1(
        t: l$t == null
            ? null
            : Fragment$T1$t.fromJson((l$t as Map<String, dynamic>)));
  }

  final Fragment$T1$t? t;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$T1 on Fragment$T1 {
  CopyWith$Fragment$T1<Fragment$T1> get copyWith => CopyWith$Fragment$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$T1<TRes> {
  factory CopyWith$Fragment$T1(
    Fragment$T1 instance,
    TRes Function(Fragment$T1) then,
  ) = _CopyWithImpl$Fragment$T1;

  factory CopyWith$Fragment$T1.stub(TRes res) = _CopyWithStubImpl$Fragment$T1;

  TRes call({Fragment$T1$t? t});
  CopyWith$Fragment$T1$t<TRes> get t;
}

class _CopyWithImpl$Fragment$T1<TRes> implements CopyWith$Fragment$T1<TRes> {
  _CopyWithImpl$Fragment$T1(
    this._instance,
    this._then,
  );

  final Fragment$T1 _instance;

  final TRes Function(Fragment$T1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? t = _undefined}) => _then(
      Fragment$T1(t: t == _undefined ? _instance.t : (t as Fragment$T1$t?)));
  CopyWith$Fragment$T1$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$T1$t.stub(_then(_instance))
        : CopyWith$Fragment$T1$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Fragment$T1<TRes>
    implements CopyWith$Fragment$T1<TRes> {
  _CopyWithStubImpl$Fragment$T1(this._res);

  TRes _res;

  call({Fragment$T1$t? t}) => _res;
  CopyWith$Fragment$T1$t<TRes> get t => CopyWith$Fragment$T1$t.stub(_res);
}

const fragmentDefinitionT1 = FragmentDefinitionNode(
  name: NameNode(value: 'T1'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T'),
    isNonNull: false,
  )),
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
        )
      ]),
    )
  ]),
);
const documentNodeFragmentT1 = DocumentNode(definitions: [
  fragmentDefinitionT1,
]);

class Fragment$T1$t {
  Fragment$T1$t({this.name});

  factory Fragment$T1$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$T1$t(name: (l$name as String?));
  }

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$T1$t) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$T1$t on Fragment$T1$t {
  CopyWith$Fragment$T1$t<Fragment$T1$t> get copyWith => CopyWith$Fragment$T1$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$T1$t<TRes> {
  factory CopyWith$Fragment$T1$t(
    Fragment$T1$t instance,
    TRes Function(Fragment$T1$t) then,
  ) = _CopyWithImpl$Fragment$T1$t;

  factory CopyWith$Fragment$T1$t.stub(TRes res) =
      _CopyWithStubImpl$Fragment$T1$t;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$T1$t<TRes>
    implements CopyWith$Fragment$T1$t<TRes> {
  _CopyWithImpl$Fragment$T1$t(
    this._instance,
    this._then,
  );

  final Fragment$T1$t _instance;

  final TRes Function(Fragment$T1$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$T1$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$T1$t<TRes>
    implements CopyWith$Fragment$T1$t<TRes> {
  _CopyWithStubImpl$Fragment$T1$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$T2 {
  Fragment$T2({
    this.t,
    this.name,
  });

  factory Fragment$T2.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    final l$name = json['name'];
    return Fragment$T2(
      t: l$t == null
          ? null
          : Fragment$T2$t.fromJson((l$t as Map<String, dynamic>)),
      name: (l$name as String?),
    );
  }

  final Fragment$T2$t? t;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([
      l$t,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$T2) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$T2 on Fragment$T2 {
  CopyWith$Fragment$T2<Fragment$T2> get copyWith => CopyWith$Fragment$T2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$T2<TRes> {
  factory CopyWith$Fragment$T2(
    Fragment$T2 instance,
    TRes Function(Fragment$T2) then,
  ) = _CopyWithImpl$Fragment$T2;

  factory CopyWith$Fragment$T2.stub(TRes res) = _CopyWithStubImpl$Fragment$T2;

  TRes call({
    Fragment$T2$t? t,
    String? name,
  });
  CopyWith$Fragment$T2$t<TRes> get t;
}

class _CopyWithImpl$Fragment$T2<TRes> implements CopyWith$Fragment$T2<TRes> {
  _CopyWithImpl$Fragment$T2(
    this._instance,
    this._then,
  );

  final Fragment$T2 _instance;

  final TRes Function(Fragment$T2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? t = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$T2(
        t: t == _undefined ? _instance.t : (t as Fragment$T2$t?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
  CopyWith$Fragment$T2$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$T2$t.stub(_then(_instance))
        : CopyWith$Fragment$T2$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Fragment$T2<TRes>
    implements CopyWith$Fragment$T2<TRes> {
  _CopyWithStubImpl$Fragment$T2(this._res);

  TRes _res;

  call({
    Fragment$T2$t? t,
    String? name,
  }) =>
      _res;
  CopyWith$Fragment$T2$t<TRes> get t => CopyWith$Fragment$T2$t.stub(_res);
}

const fragmentDefinitionT2 = FragmentDefinitionNode(
  name: NameNode(value: 'T2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T'),
    isNonNull: false,
  )),
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
        )
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentT2 = DocumentNode(definitions: [
  fragmentDefinitionT2,
]);

class Fragment$T2$t {
  Fragment$T2$t({this.name});

  factory Fragment$T2$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$T2$t(name: (l$name as String?));
  }

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$T2$t) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$T2$t on Fragment$T2$t {
  CopyWith$Fragment$T2$t<Fragment$T2$t> get copyWith => CopyWith$Fragment$T2$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$T2$t<TRes> {
  factory CopyWith$Fragment$T2$t(
    Fragment$T2$t instance,
    TRes Function(Fragment$T2$t) then,
  ) = _CopyWithImpl$Fragment$T2$t;

  factory CopyWith$Fragment$T2$t.stub(TRes res) =
      _CopyWithStubImpl$Fragment$T2$t;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$T2$t<TRes>
    implements CopyWith$Fragment$T2$t<TRes> {
  _CopyWithImpl$Fragment$T2$t(
    this._instance,
    this._then,
  );

  final Fragment$T2$t _instance;

  final TRes Function(Fragment$T2$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$T2$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$T2$t<TRes>
    implements CopyWith$Fragment$T2$t<TRes> {
  _CopyWithStubImpl$Fragment$T2$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$TC implements Fragment$T1, Fragment$T2 {
  Fragment$TC({
    this.t,
    this.name,
  });

  factory Fragment$TC.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    final l$name = json['name'];
    return Fragment$TC(
      t: l$t == null
          ? null
          : Fragment$TC$t.fromJson((l$t as Map<String, dynamic>)),
      name: (l$name as String?),
    );
  }

  final Fragment$TC$t? t;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([
      l$t,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TC) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$TC on Fragment$TC {
  CopyWith$Fragment$TC<Fragment$TC> get copyWith => CopyWith$Fragment$TC(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TC<TRes> {
  factory CopyWith$Fragment$TC(
    Fragment$TC instance,
    TRes Function(Fragment$TC) then,
  ) = _CopyWithImpl$Fragment$TC;

  factory CopyWith$Fragment$TC.stub(TRes res) = _CopyWithStubImpl$Fragment$TC;

  TRes call({
    Fragment$TC$t? t,
    String? name,
  });
  CopyWith$Fragment$TC$t<TRes> get t;
}

class _CopyWithImpl$Fragment$TC<TRes> implements CopyWith$Fragment$TC<TRes> {
  _CopyWithImpl$Fragment$TC(
    this._instance,
    this._then,
  );

  final Fragment$TC _instance;

  final TRes Function(Fragment$TC) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? t = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$TC(
        t: t == _undefined ? _instance.t : (t as Fragment$TC$t?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
  CopyWith$Fragment$TC$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$TC$t.stub(_then(_instance))
        : CopyWith$Fragment$TC$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Fragment$TC<TRes>
    implements CopyWith$Fragment$TC<TRes> {
  _CopyWithStubImpl$Fragment$TC(this._res);

  TRes _res;

  call({
    Fragment$TC$t? t,
    String? name,
  }) =>
      _res;
  CopyWith$Fragment$TC$t<TRes> get t => CopyWith$Fragment$TC$t.stub(_res);
}

const fragmentDefinitionTC = FragmentDefinitionNode(
  name: NameNode(value: 'TC'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'T1'),
      directives: [],
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'T2'),
      directives: [],
    ),
  ]),
);
const documentNodeFragmentTC = DocumentNode(definitions: [
  fragmentDefinitionTC,
  fragmentDefinitionT1,
  fragmentDefinitionT2,
]);

class Fragment$TC$t implements Fragment$T1$t, Fragment$T2$t {
  Fragment$TC$t({this.name});

  factory Fragment$TC$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$TC$t(name: (l$name as String?));
  }

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TC$t) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TC$t on Fragment$TC$t {
  CopyWith$Fragment$TC$t<Fragment$TC$t> get copyWith => CopyWith$Fragment$TC$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TC$t<TRes> {
  factory CopyWith$Fragment$TC$t(
    Fragment$TC$t instance,
    TRes Function(Fragment$TC$t) then,
  ) = _CopyWithImpl$Fragment$TC$t;

  factory CopyWith$Fragment$TC$t.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TC$t;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$TC$t<TRes>
    implements CopyWith$Fragment$TC$t<TRes> {
  _CopyWithImpl$Fragment$TC$t(
    this._instance,
    this._then,
  );

  final Fragment$TC$t _instance;

  final TRes Function(Fragment$TC$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$TC$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$TC$t<TRes>
    implements CopyWith$Fragment$TC$t<TRes> {
  _CopyWithStubImpl$Fragment$TC$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$Q {
  Query$Q({this.t});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    return Query$Q(
        t: l$t == null
            ? null
            : Fragment$TC.fromJson((l$t as Map<String, dynamic>)));
  }

  final Fragment$TC? t;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({Fragment$TC? t});
  CopyWith$Fragment$TC<TRes> get t;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? t = _undefined}) =>
      _then(Query$Q(t: t == _undefined ? _instance.t : (t as Fragment$TC?)));
  CopyWith$Fragment$TC<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$TC.stub(_then(_instance))
        : CopyWith$Fragment$TC(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Fragment$TC? t}) => _res;
  CopyWith$Fragment$TC<TRes> get t => CopyWith$Fragment$TC.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 't'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'TC'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionTC,
  fragmentDefinitionT1,
  fragmentDefinitionT2,
]);
const possibleTypesMap = <String, Set<String>>{};
