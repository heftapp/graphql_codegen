import 'package:gql/ast.dart';

class Fragment$F {
  Fragment$F({this.other});

  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F(
        other: l$other == null
            ? null
            : Fragment$F2.fromJson((l$other as Map<String, dynamic>)));
  }

  final Fragment$F2? other;

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

  TRes call({Fragment$F2? other});
  CopyWith$Fragment$F2<TRes> get other;
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
      other: other == _undefined ? _instance.other : (other as Fragment$F2?)));
  CopyWith$Fragment$F2<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F2.stub(_then(_instance))
        : CopyWith$Fragment$F2(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({Fragment$F2? other}) => _res;
  CopyWith$Fragment$F2<TRes> get other => CopyWith$Fragment$F2.stub(_res);
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
        )
      ]),
    )
  ]),
);
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

class Fragment$F2 {
  Fragment$F2({this.other});

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F2(
        other: l$other == null
            ? null
            : Fragment$F3.fromJson((l$other as Map<String, dynamic>)));
  }

  final Fragment$F3? other;

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

  TRes call({Fragment$F3? other});
  CopyWith$Fragment$F3<TRes> get other;
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
      other: other == _undefined ? _instance.other : (other as Fragment$F3?)));
  CopyWith$Fragment$F3<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F3.stub(_then(_instance))
        : CopyWith$Fragment$F3(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({Fragment$F3? other}) => _res;
  CopyWith$Fragment$F3<TRes> get other => CopyWith$Fragment$F3.stub(_res);
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
        FragmentSpreadNode(
          name: NameNode(value: 'F3'),
          directives: [],
        )
      ]),
    )
  ]),
);
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

class Fragment$F3 {
  Fragment$F3({this.other});

  factory Fragment$F3.fromJson(Map<String, dynamic> json) {
    final l$other = json['other'];
    return Fragment$F3(
        other: l$other == null
            ? null
            : Fragment$F4.fromJson((l$other as Map<String, dynamic>)));
  }

  final Fragment$F4? other;

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
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  CopyWith$Fragment$F3<Fragment$F3> get copyWith => CopyWith$Fragment$F3(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F3<TRes> {
  factory CopyWith$Fragment$F3(
    Fragment$F3 instance,
    TRes Function(Fragment$F3) then,
  ) = _CopyWithImpl$Fragment$F3;

  factory CopyWith$Fragment$F3.stub(TRes res) = _CopyWithStubImpl$Fragment$F3;

  TRes call({Fragment$F4? other});
  CopyWith$Fragment$F4<TRes> get other;
}

class _CopyWithImpl$Fragment$F3<TRes> implements CopyWith$Fragment$F3<TRes> {
  _CopyWithImpl$Fragment$F3(
    this._instance,
    this._then,
  );

  final Fragment$F3 _instance;

  final TRes Function(Fragment$F3) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F3(
      other: other == _undefined ? _instance.other : (other as Fragment$F4?)));
  CopyWith$Fragment$F4<TRes> get other {
    final local$other = _instance.other;
    return local$other == null
        ? CopyWith$Fragment$F4.stub(_then(_instance))
        : CopyWith$Fragment$F4(local$other, (e) => call(other: e));
  }
}

class _CopyWithStubImpl$Fragment$F3<TRes>
    implements CopyWith$Fragment$F3<TRes> {
  _CopyWithStubImpl$Fragment$F3(this._res);

  TRes _res;

  call({Fragment$F4? other}) => _res;
  CopyWith$Fragment$F4<TRes> get other => CopyWith$Fragment$F4.stub(_res);
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
  name: NameNode(value: 'F3'),
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
          name: NameNode(value: 'F4'),
          directives: [],
        )
      ]),
    )
  ]),
);
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

class Fragment$F4 {
  Fragment$F4({this.name});

  factory Fragment$F4.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F4(name: (l$name as String?));
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
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F4 on Fragment$F4 {
  CopyWith$Fragment$F4<Fragment$F4> get copyWith => CopyWith$Fragment$F4(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F4<TRes> {
  factory CopyWith$Fragment$F4(
    Fragment$F4 instance,
    TRes Function(Fragment$F4) then,
  ) = _CopyWithImpl$Fragment$F4;

  factory CopyWith$Fragment$F4.stub(TRes res) = _CopyWithStubImpl$Fragment$F4;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F4<TRes> implements CopyWith$Fragment$F4<TRes> {
  _CopyWithImpl$Fragment$F4(
    this._instance,
    this._then,
  );

  final Fragment$F4 _instance;

  final TRes Function(Fragment$F4) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F4(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F4<TRes>
    implements CopyWith$Fragment$F4<TRes> {
  _CopyWithStubImpl$Fragment$F4(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
  name: NameNode(value: 'F4'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Type'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);

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
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);
const possibleTypesMap = {};
