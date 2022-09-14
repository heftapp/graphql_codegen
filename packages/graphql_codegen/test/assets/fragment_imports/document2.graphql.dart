import 'document1.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$F1 {
  Fragment$F1({this.name});

  factory Fragment$F1.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F1(name: (l$name as String?));
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
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  CopyWith$Fragment$F1<Fragment$F1> get copyWith => CopyWith$Fragment$F1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1<TRes> {
  factory CopyWith$Fragment$F1(
    Fragment$F1 instance,
    TRes Function(Fragment$F1) then,
  ) = _CopyWithImpl$Fragment$F1;

  factory CopyWith$Fragment$F1.stub(TRes res) = _CopyWithStubImpl$Fragment$F1;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(
    this._instance,
    this._then,
  );

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F1(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
  name: NameNode(value: 'F1'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T1'),
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
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

class Query$Q {
  Query$Q({this.t});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    return Query$Q(
        t: l$t == null
            ? null
            : Query$Q$t.fromJson((l$t as Map<String, dynamic>)));
  }

  final Query$Q$t? t;

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

  TRes call({Query$Q$t? t});
  CopyWith$Query$Q$t<TRes> get t;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = {};

  TRes call({Object? t = _undefined}) =>
      _then(Query$Q(t: t == _undefined ? _instance.t : (t as Query$Q$t?)));
  CopyWith$Query$Q$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Query$Q$t.stub(_then(_instance))
        : CopyWith$Query$Q$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Query$Q$t? t}) => _res;
  CopyWith$Query$Q$t<TRes> get t => CopyWith$Query$Q$t.stub(_res);
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
            name: NameNode(value: 'F1'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'F2'),
            directives: [],
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

class Query$Q$t implements Fragment$F1 {
  Query$Q$t({this.name});

  factory Query$Q$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$Q$t(name: (l$name as String?));
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
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$t on Query$Q$t {
  CopyWith$Query$Q$t<Query$Q$t> get copyWith => CopyWith$Query$Q$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$t<TRes> {
  factory CopyWith$Query$Q$t(
    Query$Q$t instance,
    TRes Function(Query$Q$t) then,
  ) = _CopyWithImpl$Query$Q$t;

  factory CopyWith$Query$Q$t.stub(TRes res) = _CopyWithStubImpl$Query$Q$t;

  TRes call({String? name});
}

class _CopyWithImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithImpl$Query$Q$t(
    this._instance,
    this._then,
  );

  final Query$Q$t _instance;

  final TRes Function(Query$Q$t) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(
      Query$Q$t(name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithStubImpl$Query$Q$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}
