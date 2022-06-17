import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.other});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final Fragment$F2? other;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
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

  TRes call({Fragment$F2? other});
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(this._instance, this._then);

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F(
      other: other == _undefined ? _instance.other : (other as Fragment$F2?)));
}

const fragmentDefinitionF = FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
          ]))
    ]));
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.other});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F3? other;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  CopyWith$Fragment$F2<Fragment$F2> get copyWith =>
      CopyWith$Fragment$F2(this, (i) => i);
}

abstract class CopyWith$Fragment$F2<TRes> {
  factory CopyWith$Fragment$F2(
          Fragment$F2 instance, TRes Function(Fragment$F2) then) =
      _CopyWithImpl$Fragment$F2;

  TRes call({Fragment$F3? other});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(this._instance, this._then);

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F2(
      other: other == _undefined ? _instance.other : (other as Fragment$F3?)));
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
          ]))
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.other});

  @override
  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final Fragment$F4? other;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  CopyWith$Fragment$F3<Fragment$F3> get copyWith =>
      CopyWith$Fragment$F3(this, (i) => i);
}

abstract class CopyWith$Fragment$F3<TRes> {
  factory CopyWith$Fragment$F3(
          Fragment$F3 instance, TRes Function(Fragment$F3) then) =
      _CopyWithImpl$Fragment$F3;

  TRes call({Fragment$F4? other});
}

class _CopyWithImpl$Fragment$F3<TRes> implements CopyWith$Fragment$F3<TRes> {
  _CopyWithImpl$Fragment$F3(this._instance, this._then);

  final Fragment$F3 _instance;

  final TRes Function(Fragment$F3) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F3(
      other: other == _undefined ? _instance.other : (other as Fragment$F4?)));
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F4'), directives: [])
          ]))
    ]));
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F4 {
  Fragment$F4({this.name});

  @override
  factory Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F4FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F4ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F4 on Fragment$F4 {
  CopyWith$Fragment$F4<Fragment$F4> get copyWith =>
      CopyWith$Fragment$F4(this, (i) => i);
}

abstract class CopyWith$Fragment$F4<TRes> {
  factory CopyWith$Fragment$F4(
          Fragment$F4 instance, TRes Function(Fragment$F4) then) =
      _CopyWithImpl$Fragment$F4;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F4<TRes> implements CopyWith$Fragment$F4<TRes> {
  _CopyWithImpl$Fragment$F4(this._instance, this._then);

  final Fragment$F4 _instance;

  final TRes Function(Fragment$F4) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F4(
      name: name == _undefined ? _instance.name : (name as String?)));
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Query$Fetch {
  Query$Fetch({this.t});

  @override
  factory Query$Fetch.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchFromJson(json);

  final Fragment$F? t;

  Map<String, dynamic> toJson() => _$Query$FetchToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch on Query$Fetch {
  CopyWith$Query$Fetch<Query$Fetch> get copyWith =>
      CopyWith$Query$Fetch(this, (i) => i);
}

abstract class CopyWith$Query$Fetch<TRes> {
  factory CopyWith$Query$Fetch(
          Query$Fetch instance, TRes Function(Query$Fetch) then) =
      _CopyWithImpl$Query$Fetch;

  TRes call({Fragment$F? t});
}

class _CopyWithImpl$Query$Fetch<TRes> implements CopyWith$Query$Fetch<TRes> {
  _CopyWithImpl$Query$Fetch(this._instance, this._then);

  final Query$Fetch _instance;

  final TRes Function(Query$Fetch) _then;

  static const _undefined = {};

  TRes call({Object? t = _undefined}) =>
      _then(Query$Fetch(t: t == _undefined ? _instance.t : (t as Fragment$F?)));
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
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);
const possibleTypesMap = {};
