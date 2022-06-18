import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({required this.$__typename, this.name});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T":
        return Fragment$F$$T.fromJson(json);
      default:
        return _$Fragment$FFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  CopyWith$Fragment$F<Fragment$F> get copyWith =>
      CopyWith$Fragment$F(this, (i) => i);
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
          Fragment$F instance, TRes Function(Fragment$F) then) =
      _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({String? $__typename, String? name});
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(this._instance, this._then);

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? name = _undefined}) =>
      _then(Fragment$F(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({String? $__typename, String? name}) => _res;
}

const fragmentDefinitionF = FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      InlineFragmentNode(
          typeCondition: TypeConditionNode(
              on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
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
                      selectionSet: null)
                ]))
          ]))
    ]));
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F$$T implements Fragment$F {
  Fragment$F$$T({required this.$__typename, this.name, this.t});

  @override
  factory Fragment$F$$T.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$$TFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final Fragment$F$$T$t? t;

  Map<String, dynamic> toJson() => _$Fragment$F$$TToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$$T) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$$T on Fragment$F$$T {
  CopyWith$Fragment$F$$T<Fragment$F$$T> get copyWith =>
      CopyWith$Fragment$F$$T(this, (i) => i);
}

abstract class CopyWith$Fragment$F$$T<TRes> {
  factory CopyWith$Fragment$F$$T(
          Fragment$F$$T instance, TRes Function(Fragment$F$$T) then) =
      _CopyWithImpl$Fragment$F$$T;

  factory CopyWith$Fragment$F$$T.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$$T;

  TRes call({String? $__typename, String? name, Fragment$F$$T$t? t});
  CopyWith$Fragment$F$$T$t<TRes> get t;
}

class _CopyWithImpl$Fragment$F$$T<TRes>
    implements CopyWith$Fragment$F$$T<TRes> {
  _CopyWithImpl$Fragment$F$$T(this._instance, this._then);

  final Fragment$F$$T _instance;

  final TRes Function(Fragment$F$$T) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? name = _undefined,
          Object? t = _undefined}) =>
      _then(Fragment$F$$T(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          name: name == _undefined ? _instance.name : (name as String?),
          t: t == _undefined ? _instance.t : (t as Fragment$F$$T$t?)));
  CopyWith$Fragment$F$$T$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$F$$T$t.stub(_then(_instance))
        : CopyWith$Fragment$F$$T$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Fragment$F$$T<TRes>
    implements CopyWith$Fragment$F$$T<TRes> {
  _CopyWithStubImpl$Fragment$F$$T(this._res);

  TRes _res;

  call({String? $__typename, String? name, Fragment$F$$T$t? t}) => _res;
  CopyWith$Fragment$F$$T$t<TRes> get t => CopyWith$Fragment$F$$T$t.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$$T$t {
  Fragment$F$$T$t({this.name});

  @override
  factory Fragment$F$$T$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$$T$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F$$T$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$$T$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$$T$t on Fragment$F$$T$t {
  CopyWith$Fragment$F$$T$t<Fragment$F$$T$t> get copyWith =>
      CopyWith$Fragment$F$$T$t(this, (i) => i);
}

abstract class CopyWith$Fragment$F$$T$t<TRes> {
  factory CopyWith$Fragment$F$$T$t(
          Fragment$F$$T$t instance, TRes Function(Fragment$F$$T$t) then) =
      _CopyWithImpl$Fragment$F$$T$t;

  factory CopyWith$Fragment$F$$T$t.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$$T$t;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F$$T$t<TRes>
    implements CopyWith$Fragment$F$$T$t<TRes> {
  _CopyWithImpl$Fragment$F$$T$t(this._instance, this._then);

  final Fragment$F$$T$t _instance;

  final TRes Function(Fragment$F$$T$t) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F$$T$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F$$T$t<TRes>
    implements CopyWith$Fragment$F$$T$t<TRes> {
  _CopyWithStubImpl$Fragment$F$$T$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.t});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$t? t;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(this, (i) => i);
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(Query$Q instance, TRes Function(Query$Q) then) =
      _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({Query$Q$t? t});
  CopyWith$Query$Q$t<TRes> get t;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(this._instance, this._then);

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
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$t implements Fragment$F$$T {
  Query$Q$t({required this.$__typename, this.name, this.t});

  @override
  factory Query$Q$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final Query$Q$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t on Query$Q$t {
  CopyWith$Query$Q$t<Query$Q$t> get copyWith =>
      CopyWith$Query$Q$t(this, (i) => i);
}

abstract class CopyWith$Query$Q$t<TRes> {
  factory CopyWith$Query$Q$t(
          Query$Q$t instance, TRes Function(Query$Q$t) then) =
      _CopyWithImpl$Query$Q$t;

  factory CopyWith$Query$Q$t.stub(TRes res) = _CopyWithStubImpl$Query$Q$t;

  TRes call({String? $__typename, String? name, Query$Q$t$t? t});
  CopyWith$Query$Q$t$t<TRes> get t;
}

class _CopyWithImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithImpl$Query$Q$t(this._instance, this._then);

  final Query$Q$t _instance;

  final TRes Function(Query$Q$t) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? name = _undefined,
          Object? t = _undefined}) =>
      _then(Query$Q$t(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          name: name == _undefined ? _instance.name : (name as String?),
          t: t == _undefined ? _instance.t : (t as Query$Q$t$t?)));
  CopyWith$Query$Q$t$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Query$Q$t$t.stub(_then(_instance))
        : CopyWith$Query$Q$t$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithStubImpl$Query$Q$t(this._res);

  TRes _res;

  call({String? $__typename, String? name, Query$Q$t$t? t}) => _res;
  CopyWith$Query$Q$t$t<TRes> get t => CopyWith$Query$Q$t$t.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t implements Fragment$F$$T$t {
  Query$Q$t$t({this.name});

  @override
  factory Query$Q$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$t$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t on Query$Q$t$t {
  CopyWith$Query$Q$t$t<Query$Q$t$t> get copyWith =>
      CopyWith$Query$Q$t$t(this, (i) => i);
}

abstract class CopyWith$Query$Q$t$t<TRes> {
  factory CopyWith$Query$Q$t$t(
          Query$Q$t$t instance, TRes Function(Query$Q$t$t) then) =
      _CopyWithImpl$Query$Q$t$t;

  factory CopyWith$Query$Q$t$t.stub(TRes res) = _CopyWithStubImpl$Query$Q$t$t;

  TRes call({String? name});
}

class _CopyWithImpl$Query$Q$t$t<TRes> implements CopyWith$Query$Q$t$t<TRes> {
  _CopyWithImpl$Query$Q$t$t(this._instance, this._then);

  final Query$Q$t$t _instance;

  final TRes Function(Query$Q$t$t) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Query$Q$t$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Query$Q$t$t<TRes>
    implements CopyWith$Query$Q$t$t<TRes> {
  _CopyWithStubImpl$Query$Q$t$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const possibleTypesMap = {
  'I': {'T'}
};
