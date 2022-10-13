import 'package:gql/ast.dart';

class Fragment$F {
  Fragment$F({this.other});

  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F(
        other: l$other == null
            ? null
            : Fragment$F$other.fromJson((l$other as Map<String, dynamic>)));
  }

  final Fragment$F$other? other;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$other = other;
    _resultData['other'] = l$other?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  CopyWith$Fragment$F<Fragment$F> get copyWith => CopyWith$Fragment$F(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
    Fragment$F instance,
    TRes Function(Fragment$F) then,
  ) = _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({Fragment$F$other? other});
  CopyWith$Fragment$F$other<TRes> get other;
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(
    this._instance,
    this._then,
  );

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F$other?)));
  CopyWith$Fragment$F$other<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F$other.stub(_then(_instance))
        : CopyWith$Fragment$F$other(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({Fragment$F$other? other}) => _res;
  CopyWith$Fragment$F$other<TRes> get other =>
      CopyWith$Fragment$F$other.stub(_res);
}

const fragmentDefinitionF = FragmentDefinitionNode(
  name: NameNode(value: 'F'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Type'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'other'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'F2'),
          directives: [],
        ),
        InlineFragmentNode(
          typeCondition: TypeConditionNode(
              on: NamedTypeNode(
            name: NameNode(value: 'T1'),
            isNonNull: false,
          )),
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'b'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            )
          ]),
        ),
      ]),
    )
  ]),
);
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
]);

class Fragment$F$other implements Fragment$F2 {
  Fragment$F$other({this.other});

  factory Fragment$F$other.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F$other(
        other: l$other == null
            ? null
            : Fragment$F$other$other.fromJson(
                (l$other as Map<String, dynamic>)));
  }

  final Fragment$F$other$other? other;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$other = other;
    _resultData['other'] = l$other?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F$other) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F$other on Fragment$F$other {
  CopyWith$Fragment$F$other<Fragment$F$other> get copyWith =>
      CopyWith$Fragment$F$other(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F$other<TRes> {
  factory CopyWith$Fragment$F$other(
    Fragment$F$other instance,
    TRes Function(Fragment$F$other) then,
  ) = _CopyWithImpl$Fragment$F$other;

  factory CopyWith$Fragment$F$other.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$other;

  TRes call({Fragment$F$other$other? other});
  CopyWith$Fragment$F$other$other<TRes> get other;
}

class _CopyWithImpl$Fragment$F$other<TRes>
    implements CopyWith$Fragment$F$other<TRes> {
  _CopyWithImpl$Fragment$F$other(
    this._instance,
    this._then,
  );

  final Fragment$F$other _instance;

  final TRes Function(Fragment$F$other) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F$other(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F$other$other?)));
  CopyWith$Fragment$F$other$other<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F$other$other.stub(_then(_instance))
        : CopyWith$Fragment$F$other$other(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F$other<TRes>
    implements CopyWith$Fragment$F$other<TRes> {
  _CopyWithStubImpl$Fragment$F$other(this._res);

  TRes _res;

  call({Fragment$F$other$other? other}) => _res;
  CopyWith$Fragment$F$other$other<TRes> get other =>
      CopyWith$Fragment$F$other$other.stub(_res);
}

class Fragment$F$other$other implements Fragment$F2$other {
  Fragment$F$other$other({this.name});

  factory Fragment$F$other$other.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F$other$other(name: (l$name as String?));
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
    if (!(other is Fragment$F$other$other) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F$other$other on Fragment$F$other$other {
  CopyWith$Fragment$F$other$other<Fragment$F$other$other> get copyWith =>
      CopyWith$Fragment$F$other$other(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F$other$other<TRes> {
  factory CopyWith$Fragment$F$other$other(
    Fragment$F$other$other instance,
    TRes Function(Fragment$F$other$other) then,
  ) = _CopyWithImpl$Fragment$F$other$other;

  factory CopyWith$Fragment$F$other$other.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$other$other;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F$other$other<TRes>
    implements CopyWith$Fragment$F$other$other<TRes> {
  _CopyWithImpl$Fragment$F$other$other(
    this._instance,
    this._then,
  );

  final Fragment$F$other$other _instance;

  final TRes Function(Fragment$F$other$other) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F$other$other(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F$other$other<TRes>
    implements CopyWith$Fragment$F$other$other<TRes> {
  _CopyWithStubImpl$Fragment$F$other$other(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$F$other$$T1 implements Fragment$F$other {
  Fragment$F$other$$T1({
    this.other,
    this.b,
  });

  factory Fragment$F$other$$T1.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    final l$b = json['b'];
    return Fragment$F$other$$T1(
      other: l$other == null
          ? null
          : Fragment$F$other$other.fromJson((l$other as Map<String, dynamic>)),
      b: (l$b as bool?),
    );
  }

  final Fragment$F$other$other? other;

  final bool? b;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$other = other;
    _resultData['other'] = l$other?.toJson();
    final l$b = b;
    _resultData['b'] = l$b;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$other = other;
    final l$b = b;
    return Object.hashAll([
      l$other,
      l$b,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F$other$$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) {
      return false;
    }
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$$T1 on Fragment$F$other$$T1 {
  CopyWith$Fragment$F$other$$T1<Fragment$F$other$$T1> get copyWith =>
      CopyWith$Fragment$F$other$$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F$other$$T1<TRes> {
  factory CopyWith$Fragment$F$other$$T1(
    Fragment$F$other$$T1 instance,
    TRes Function(Fragment$F$other$$T1) then,
  ) = _CopyWithImpl$Fragment$F$other$$T1;

  factory CopyWith$Fragment$F$other$$T1.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$other$$T1;

  TRes call({
    Fragment$F$other$other? other,
    bool? b,
  });
  CopyWith$Fragment$F$other$other<TRes> get other;
}

class _CopyWithImpl$Fragment$F$other$$T1<TRes>
    implements CopyWith$Fragment$F$other$$T1<TRes> {
  _CopyWithImpl$Fragment$F$other$$T1(
    this._instance,
    this._then,
  );

  final Fragment$F$other$$T1 _instance;

  final TRes Function(Fragment$F$other$$T1) _then;

  static const _undefined = {};

  TRes call({
    Object? other = _undefined,
    Object? b = _undefined,
  }) =>
      _then(Fragment$F$other$$T1(
        other: other == _undefined
            ? _instance.other
            : (other as Fragment$F$other$other?),
        b: b == _undefined ? _instance.b : (b as bool?),
      ));
  CopyWith$Fragment$F$other$other<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F$other$other.stub(_then(_instance))
        : CopyWith$Fragment$F$other$other(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F$other$$T1<TRes>
    implements CopyWith$Fragment$F$other$$T1<TRes> {
  _CopyWithStubImpl$Fragment$F$other$$T1(this._res);

  TRes _res;

  call({
    Fragment$F$other$other? other,
    bool? b,
  }) =>
      _res;
  CopyWith$Fragment$F$other$other<TRes> get other =>
      CopyWith$Fragment$F$other$other.stub(_res);
}

class Fragment$F2 {
  Fragment$F2({this.other});

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F2(
        other: l$other == null
            ? null
            : Fragment$F2$other.fromJson((l$other as Map<String, dynamic>)));
  }

  final Fragment$F2$other? other;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$other = other;
    _resultData['other'] = l$other?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  CopyWith$Fragment$F2<Fragment$F2> get copyWith => CopyWith$Fragment$F2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F2<TRes> {
  factory CopyWith$Fragment$F2(
    Fragment$F2 instance,
    TRes Function(Fragment$F2) then,
  ) = _CopyWithImpl$Fragment$F2;

  factory CopyWith$Fragment$F2.stub(TRes res) = _CopyWithStubImpl$Fragment$F2;

  TRes call({Fragment$F2$other? other});
  CopyWith$Fragment$F2$other<TRes> get other;
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(
    this._instance,
    this._then,
  );

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F2(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F2$other?)));
  CopyWith$Fragment$F2$other<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F2$other.stub(_then(_instance))
        : CopyWith$Fragment$F2$other(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({Fragment$F2$other? other}) => _res;
  CopyWith$Fragment$F2$other<TRes> get other =>
      CopyWith$Fragment$F2$other.stub(_res);
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
  name: NameNode(value: 'F2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Type'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'other'),
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
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

class Fragment$F2$other {
  Fragment$F2$other({this.name});

  factory Fragment$F2$other.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F2$other(name: (l$name as String?));
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
    if (!(other is Fragment$F2$other) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F2$other on Fragment$F2$other {
  CopyWith$Fragment$F2$other<Fragment$F2$other> get copyWith =>
      CopyWith$Fragment$F2$other(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F2$other<TRes> {
  factory CopyWith$Fragment$F2$other(
    Fragment$F2$other instance,
    TRes Function(Fragment$F2$other) then,
  ) = _CopyWithImpl$Fragment$F2$other;

  factory CopyWith$Fragment$F2$other.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F2$other;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F2$other<TRes>
    implements CopyWith$Fragment$F2$other<TRes> {
  _CopyWithImpl$Fragment$F2$other(
    this._instance,
    this._then,
  );

  final Fragment$F2$other _instance;

  final TRes Function(Fragment$F2$other) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F2$other(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F2$other<TRes>
    implements CopyWith$Fragment$F2$other<TRes> {
  _CopyWithStubImpl$Fragment$F2$other(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$Fetch {
  Query$Fetch({this.t});

  factory Query$Fetch.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    return Query$Fetch(
        t: l$t == null
            ? null
            : Fragment$F.fromJson((l$t as Map<String, dynamic>)));
  }

  final Fragment$F? t;

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
    if (!(other is Query$Fetch) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Fetch on Query$Fetch {
  CopyWith$Query$Fetch<Query$Fetch> get copyWith => CopyWith$Query$Fetch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Fetch<TRes> {
  factory CopyWith$Query$Fetch(
    Query$Fetch instance,
    TRes Function(Query$Fetch) then,
  ) = _CopyWithImpl$Query$Fetch;

  factory CopyWith$Query$Fetch.stub(TRes res) = _CopyWithStubImpl$Query$Fetch;

  TRes call({Fragment$F? t});
  CopyWith$Fragment$F<TRes> get t;
}

class _CopyWithImpl$Query$Fetch<TRes> implements CopyWith$Query$Fetch<TRes> {
  _CopyWithImpl$Query$Fetch(
    this._instance,
    this._then,
  );

  final Query$Fetch _instance;

  final TRes Function(Query$Fetch) _then;

  static const _undefined = {};

  TRes call({Object? t = _undefined}) =>
      _then(Query$Fetch(t: t == _undefined ? _instance.t : (t as Fragment$F?)));
  CopyWith$Fragment$F<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$F.stub(_then(_instance))
        : CopyWith$Fragment$F(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Fetch<TRes>
    implements CopyWith$Query$Fetch<TRes> {
  _CopyWithStubImpl$Query$Fetch(this._res);

  TRes _res;

  call({Fragment$F? t}) => _res;
  CopyWith$Fragment$F<TRes> get t => CopyWith$Fragment$F.stub(_res);
}

const documentNodeQueryFetch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Fetch'),
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
            name: NameNode(value: 'F'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionF,
  fragmentDefinitionF2,
]);
const possibleTypesMap = {
  'Type': {'T1'}
};
