import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.other});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final Fragment$F$other? other;

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

  TRes call({Fragment$F$other? other});
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(this._instance, this._then);

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F$other?)));
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
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
            InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                        name: NameNode(value: 'T1'), isNonNull: false)),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'b'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F$other implements Fragment$F2 {
  Fragment$F$other({this.other});

  @override
  factory Fragment$F$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$otherFromJson(json);

  final Fragment$F$other$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other on Fragment$F$other {
  CopyWith$Fragment$F$other<Fragment$F$other> get copyWith =>
      CopyWith$Fragment$F$other(this, (i) => i);
}

abstract class CopyWith$Fragment$F$other<TRes> {
  factory CopyWith$Fragment$F$other(
          Fragment$F$other instance, TRes Function(Fragment$F$other) then) =
      _CopyWithImpl$Fragment$F$other;

  TRes call({Fragment$F$other$other? other});
}

class _CopyWithImpl$Fragment$F$other<TRes>
    implements CopyWith$Fragment$F$other<TRes> {
  _CopyWithImpl$Fragment$F$other(this._instance, this._then);

  final Fragment$F$other _instance;

  final TRes Function(Fragment$F$other) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F$other(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F$other$other?)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$other$other implements Fragment$F2$other {
  Fragment$F$other$other({this.name});

  @override
  factory Fragment$F$other$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$other on Fragment$F$other$other {
  CopyWith$Fragment$F$other$other<Fragment$F$other$other> get copyWith =>
      CopyWith$Fragment$F$other$other(this, (i) => i);
}

abstract class CopyWith$Fragment$F$other$other<TRes> {
  factory CopyWith$Fragment$F$other$other(Fragment$F$other$other instance,
          TRes Function(Fragment$F$other$other) then) =
      _CopyWithImpl$Fragment$F$other$other;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F$other$other<TRes>
    implements CopyWith$Fragment$F$other$other<TRes> {
  _CopyWithImpl$Fragment$F$other$other(this._instance, this._then);

  final Fragment$F$other$other _instance;

  final TRes Function(Fragment$F$other$other) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F$other$other(
      name: name == _undefined ? _instance.name : (name as String?)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$other$$T1 implements Fragment$F$other {
  Fragment$F$other$$T1({this.other, this.b});

  @override
  factory Fragment$F$other$$T1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$$T1FromJson(json);

  final Fragment$F$other$other? other;

  final bool? b;

  Map<String, dynamic> toJson() => _$Fragment$F$other$$T1ToJson(this);
  int get hashCode {
    final l$other = other;
    final l$b = b;
    return Object.hashAll([l$other, l$b]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$$T1) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$$T1 on Fragment$F$other$$T1 {
  CopyWith$Fragment$F$other$$T1<Fragment$F$other$$T1> get copyWith =>
      CopyWith$Fragment$F$other$$T1(this, (i) => i);
}

abstract class CopyWith$Fragment$F$other$$T1<TRes> {
  factory CopyWith$Fragment$F$other$$T1(Fragment$F$other$$T1 instance,
          TRes Function(Fragment$F$other$$T1) then) =
      _CopyWithImpl$Fragment$F$other$$T1;

  TRes call({Fragment$F$other$other? other, bool? b});
}

class _CopyWithImpl$Fragment$F$other$$T1<TRes>
    implements CopyWith$Fragment$F$other$$T1<TRes> {
  _CopyWithImpl$Fragment$F$other$$T1(this._instance, this._then);

  final Fragment$F$other$$T1 _instance;

  final TRes Function(Fragment$F$other$$T1) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined, Object? b = _undefined}) =>
      _then(Fragment$F$other$$T1(
          other: other == _undefined
              ? _instance.other
              : (other as Fragment$F$other$other?),
          b: b == _undefined ? _instance.b : (b as bool?)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.other});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F2$other? other;

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

  TRes call({Fragment$F2$other? other});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(this._instance, this._then);

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? other = _undefined}) => _then(Fragment$F2(
      other: other == _undefined
          ? _instance.other
          : (other as Fragment$F2$other?)));
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
            FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2$other {
  Fragment$F2$other({this.name});

  @override
  factory Fragment$F2$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F2$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2$other on Fragment$F2$other {
  CopyWith$Fragment$F2$other<Fragment$F2$other> get copyWith =>
      CopyWith$Fragment$F2$other(this, (i) => i);
}

abstract class CopyWith$Fragment$F2$other<TRes> {
  factory CopyWith$Fragment$F2$other(
          Fragment$F2$other instance, TRes Function(Fragment$F2$other) then) =
      _CopyWithImpl$Fragment$F2$other;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F2$other<TRes>
    implements CopyWith$Fragment$F2$other<TRes> {
  _CopyWithImpl$Fragment$F2$other(this._instance, this._then);

  final Fragment$F2$other _instance;

  final TRes Function(Fragment$F2$other) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Fragment$F2$other(
      name: name == _undefined ? _instance.name : (name as String?)));
}

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
]);
const possibleTypesMap = {
  'Type': {'T1'}
};
