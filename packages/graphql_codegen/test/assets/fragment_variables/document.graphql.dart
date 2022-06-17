import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$Input {
  Input$Input({this.inputField});

  @override
  factory Input$Input.fromJson(Map<String, dynamic> json) =>
      _$Input$InputFromJson(json);

  final bool? inputField;

  Map<String, dynamic> toJson() => _$Input$InputToJson(this);
  int get hashCode {
    final l$inputField = inputField;
    return Object.hashAll([l$inputField]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$Input) || runtimeType != other.runtimeType)
      return false;
    final l$inputField = inputField;
    final lOther$inputField = other.inputField;
    if (l$inputField != lOther$inputField) return false;
    return true;
  }

  CopyWith$Input$Input<Input$Input> get copyWith =>
      CopyWith$Input$Input(this, (i) => i);
}

abstract class CopyWith$Input$Input<TRes> {
  factory CopyWith$Input$Input(
          Input$Input instance, TRes Function(Input$Input) then) =
      _CopyWithImpl$Input$Input;

  TRes call({bool? inputField});
}

class _CopyWithImpl$Input$Input<TRes> implements CopyWith$Input$Input<TRes> {
  _CopyWithImpl$Input$Input(this._instance, this._then);

  final Input$Input _instance;

  final TRes Function(Input$Input) _then;

  static const _undefined = {};

  TRes call({Object? inputField = _undefined}) => _then(Input$Input(
      inputField: inputField == _undefined
          ? _instance.inputField
          : (inputField as bool?)));
}

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F1 {
  Variables$Fragment$F1({this.i, required this.name});

  @override
  factory Variables$Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F1FromJson(json);

  final bool? i;

  final String name;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F1ToJson(this);
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([l$i, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F1<Variables$Fragment$F1> get copyWith =>
      CopyWith$Variables$Fragment$F1(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F1<TRes> {
  factory CopyWith$Variables$Fragment$F1(Variables$Fragment$F1 instance,
          TRes Function(Variables$Fragment$F1) then) =
      _CopyWithImpl$Variables$Fragment$F1;

  TRes call({bool? i, String? name});
}

class _CopyWithImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithImpl$Variables$Fragment$F1(this._instance, this._then);

  final Variables$Fragment$F1 _instance;

  final TRes Function(Variables$Fragment$F1) _then;

  static const _undefined = {};

  TRes call({Object? i = _undefined, Object? name = _undefined}) =>
      _then(Variables$Fragment$F1(
          i: i == _undefined ? _instance.i : (i as bool?),
          name: name == _undefined ? _instance.name : (name as String)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1 {
  Fragment$F1({this.level1, required this.$__typename});

  @override
  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final Fragment$F1$level1? level1;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$level1 = level1;
    final lOther$level1 = other.level1;
    if (l$level1 != lOther$level1) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  CopyWith$Fragment$F1<Fragment$F1> get copyWith =>
      CopyWith$Fragment$F1(this, (i) => i);
}

abstract class CopyWith$Fragment$F1<TRes> {
  factory CopyWith$Fragment$F1(
          Fragment$F1 instance, TRes Function(Fragment$F1) then) =
      _CopyWithImpl$Fragment$F1;

  TRes call({Fragment$F1$level1? level1, String? $__typename});
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(this._instance, this._then);

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = {};

  TRes call({Object? level1 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F1(
          level1: level1 == _undefined
              ? _instance.level1
              : (level1 as Fragment$F1$level1?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'level1'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')))
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'level2'),
                alias: null,
                arguments: [
                  ArgumentNode(
                      name: NameNode(value: 'list'),
                      value: VariableNode(name: NameNode(value: 'name')))
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'level3'),
                      alias: null,
                      arguments: [
                        ArgumentNode(
                            name: NameNode(value: 'i'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                  name: NameNode(value: 'inputField'),
                                  value:
                                      VariableNode(name: NameNode(value: 'i')))
                            ]))
                      ],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                            name: NameNode(value: 'level4'),
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
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F1$level1 {
  Fragment$F1$level1({this.level2, required this.$__typename});

  @override
  factory Fragment$F1$level1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1$level1FromJson(json);

  final Fragment$F1$level1$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F1$level1ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1$level1) || runtimeType != other.runtimeType)
      return false;
    final l$level2 = level2;
    final lOther$level2 = other.level2;
    if (l$level2 != lOther$level2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1$level1 on Fragment$F1$level1 {
  CopyWith$Fragment$F1$level1<Fragment$F1$level1> get copyWith =>
      CopyWith$Fragment$F1$level1(this, (i) => i);
}

abstract class CopyWith$Fragment$F1$level1<TRes> {
  factory CopyWith$Fragment$F1$level1(
          Fragment$F1$level1 instance, TRes Function(Fragment$F1$level1) then) =
      _CopyWithImpl$Fragment$F1$level1;

  TRes call({Fragment$F1$level1$level2? level2, String? $__typename});
}

class _CopyWithImpl$Fragment$F1$level1<TRes>
    implements CopyWith$Fragment$F1$level1<TRes> {
  _CopyWithImpl$Fragment$F1$level1(this._instance, this._then);

  final Fragment$F1$level1 _instance;

  final TRes Function(Fragment$F1$level1) _then;

  static const _undefined = {};

  TRes call({Object? level2 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F1$level1(
          level2: level2 == _undefined
              ? _instance.level2
              : (level2 as Fragment$F1$level1$level2?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1$level1$level2 {
  Fragment$F1$level1$level2({this.level3, required this.$__typename});

  @override
  factory Fragment$F1$level1$level2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1$level1$level2FromJson(json);

  final Fragment$F1$level1$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F1$level1$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1$level1$level2) ||
        runtimeType != other.runtimeType) return false;
    final l$level3 = level3;
    final lOther$level3 = other.level3;
    if (l$level3 != lOther$level3) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1$level1$level2
    on Fragment$F1$level1$level2 {
  CopyWith$Fragment$F1$level1$level2<Fragment$F1$level1$level2> get copyWith =>
      CopyWith$Fragment$F1$level1$level2(this, (i) => i);
}

abstract class CopyWith$Fragment$F1$level1$level2<TRes> {
  factory CopyWith$Fragment$F1$level1$level2(Fragment$F1$level1$level2 instance,
          TRes Function(Fragment$F1$level1$level2) then) =
      _CopyWithImpl$Fragment$F1$level1$level2;

  TRes call({Fragment$F1$level1$level2$level3? level3, String? $__typename});
}

class _CopyWithImpl$Fragment$F1$level1$level2<TRes>
    implements CopyWith$Fragment$F1$level1$level2<TRes> {
  _CopyWithImpl$Fragment$F1$level1$level2(this._instance, this._then);

  final Fragment$F1$level1$level2 _instance;

  final TRes Function(Fragment$F1$level1$level2) _then;

  static const _undefined = {};

  TRes call({Object? level3 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F1$level1$level2(
          level3: level3 == _undefined
              ? _instance.level3
              : (level3 as Fragment$F1$level1$level2$level3?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1$level1$level2$level3 {
  Fragment$F1$level1$level2$level3({this.level4, required this.$__typename});

  @override
  factory Fragment$F1$level1$level2$level3.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$F1$level1$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$F1$level1$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1$level1$level2$level3) ||
        runtimeType != other.runtimeType) return false;
    final l$level4 = level4;
    final lOther$level4 = other.level4;
    if (l$level4 != lOther$level4) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1$level1$level2$level3
    on Fragment$F1$level1$level2$level3 {
  CopyWith$Fragment$F1$level1$level2$level3<Fragment$F1$level1$level2$level3>
      get copyWith => CopyWith$Fragment$F1$level1$level2$level3(this, (i) => i);
}

abstract class CopyWith$Fragment$F1$level1$level2$level3<TRes> {
  factory CopyWith$Fragment$F1$level1$level2$level3(
          Fragment$F1$level1$level2$level3 instance,
          TRes Function(Fragment$F1$level1$level2$level3) then) =
      _CopyWithImpl$Fragment$F1$level1$level2$level3;

  TRes call({int? level4, String? $__typename});
}

class _CopyWithImpl$Fragment$F1$level1$level2$level3<TRes>
    implements CopyWith$Fragment$F1$level1$level2$level3<TRes> {
  _CopyWithImpl$Fragment$F1$level1$level2$level3(this._instance, this._then);

  final Fragment$F1$level1$level2$level3 _instance;

  final TRes Function(Fragment$F1$level1$level2$level3) _then;

  static const _undefined = {};

  TRes call({Object? level4 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F1$level1$level2$level3(
          level4: level4 == _undefined ? _instance.level4 : (level4 as int?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F2 {
  Variables$Fragment$F2({this.i, this.name});

  @override
  factory Variables$Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F2FromJson(json);

  final bool? i;

  final String? name;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F2ToJson(this);
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([l$i, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F2<Variables$Fragment$F2> get copyWith =>
      CopyWith$Variables$Fragment$F2(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F2<TRes> {
  factory CopyWith$Variables$Fragment$F2(Variables$Fragment$F2 instance,
          TRes Function(Variables$Fragment$F2) then) =
      _CopyWithImpl$Variables$Fragment$F2;

  TRes call({bool? i, String? name});
}

class _CopyWithImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithImpl$Variables$Fragment$F2(this._instance, this._then);

  final Variables$Fragment$F2 _instance;

  final TRes Function(Variables$Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? i = _undefined, Object? name = _undefined}) =>
      _then(Variables$Fragment$F2(
          i: i == _undefined ? _instance.i : (i as bool?),
          name: name == _undefined ? _instance.name : (name as String?)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.level1, required this.$__typename});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F21? level1;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$level1 = level1;
    final lOther$level1 = other.level1;
    if (l$level1 != lOther$level1) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

  TRes call({Fragment$F21? level1, String? $__typename});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(this._instance, this._then);

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? level1 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F2(
          level1: level1 == _undefined
              ? _instance.level1
              : (level1 as Fragment$F21?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'level1'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')))
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F21'), directives: []),
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
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF21,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F21 {
  Variables$Fragment$F21({this.i});

  @override
  factory Variables$Fragment$F21.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F21FromJson(json);

  final bool? i;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F21ToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F21) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F21<Variables$Fragment$F21> get copyWith =>
      CopyWith$Variables$Fragment$F21(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F21<TRes> {
  factory CopyWith$Variables$Fragment$F21(Variables$Fragment$F21 instance,
          TRes Function(Variables$Fragment$F21) then) =
      _CopyWithImpl$Variables$Fragment$F21;

  TRes call({bool? i});
}

class _CopyWithImpl$Variables$Fragment$F21<TRes>
    implements CopyWith$Variables$Fragment$F21<TRes> {
  _CopyWithImpl$Variables$Fragment$F21(this._instance, this._then);

  final Variables$Fragment$F21 _instance;

  final TRes Function(Variables$Fragment$F21) _then;

  static const _undefined = {};

  TRes call({Object? i = _undefined}) => _then(
      Variables$Fragment$F21(i: i == _undefined ? _instance.i : (i as bool?)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F21 {
  Fragment$F21({this.level2, required this.$__typename});

  @override
  factory Fragment$F21.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F21FromJson(json);

  final Fragment$F21$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F21ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F21) || runtimeType != other.runtimeType)
      return false;
    final l$level2 = level2;
    final lOther$level2 = other.level2;
    if (l$level2 != lOther$level2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F21 on Fragment$F21 {
  CopyWith$Fragment$F21<Fragment$F21> get copyWith =>
      CopyWith$Fragment$F21(this, (i) => i);
}

abstract class CopyWith$Fragment$F21<TRes> {
  factory CopyWith$Fragment$F21(
          Fragment$F21 instance, TRes Function(Fragment$F21) then) =
      _CopyWithImpl$Fragment$F21;

  TRes call({Fragment$F21$level2? level2, String? $__typename});
}

class _CopyWithImpl$Fragment$F21<TRes> implements CopyWith$Fragment$F21<TRes> {
  _CopyWithImpl$Fragment$F21(this._instance, this._then);

  final Fragment$F21 _instance;

  final TRes Function(Fragment$F21) _then;

  static const _undefined = {};

  TRes call({Object? level2 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F21(
          level2: level2 == _undefined
              ? _instance.level2
              : (level2 as Fragment$F21$level2?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

const fragmentDefinitionF21 = FragmentDefinitionNode(
    name: NameNode(value: 'F21'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Level1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'level2'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'list'),
                value: StringValueNode(value: 'foobar', isBlock: false))
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'level3'),
                alias: null,
                arguments: [
                  ArgumentNode(
                      name: NameNode(value: 'i'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'inputField'),
                            value: VariableNode(name: NameNode(value: 'i')))
                      ]))
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'level4'),
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
    ]));
const documentNodeFragmentF21 = DocumentNode(definitions: [
  fragmentDefinitionF21,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F21$level2 {
  Fragment$F21$level2({this.level3, required this.$__typename});

  @override
  factory Fragment$F21$level2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F21$level2FromJson(json);

  final Fragment$F21$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F21$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F21$level2) || runtimeType != other.runtimeType)
      return false;
    final l$level3 = level3;
    final lOther$level3 = other.level3;
    if (l$level3 != lOther$level3) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F21$level2 on Fragment$F21$level2 {
  CopyWith$Fragment$F21$level2<Fragment$F21$level2> get copyWith =>
      CopyWith$Fragment$F21$level2(this, (i) => i);
}

abstract class CopyWith$Fragment$F21$level2<TRes> {
  factory CopyWith$Fragment$F21$level2(Fragment$F21$level2 instance,
          TRes Function(Fragment$F21$level2) then) =
      _CopyWithImpl$Fragment$F21$level2;

  TRes call({Fragment$F21$level2$level3? level3, String? $__typename});
}

class _CopyWithImpl$Fragment$F21$level2<TRes>
    implements CopyWith$Fragment$F21$level2<TRes> {
  _CopyWithImpl$Fragment$F21$level2(this._instance, this._then);

  final Fragment$F21$level2 _instance;

  final TRes Function(Fragment$F21$level2) _then;

  static const _undefined = {};

  TRes call({Object? level3 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F21$level2(
          level3: level3 == _undefined
              ? _instance.level3
              : (level3 as Fragment$F21$level2$level3?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

@JsonSerializable(explicitToJson: true)
class Fragment$F21$level2$level3 {
  Fragment$F21$level2$level3({this.level4, required this.$__typename});

  @override
  factory Fragment$F21$level2$level3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F21$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F21$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F21$level2$level3) ||
        runtimeType != other.runtimeType) return false;
    final l$level4 = level4;
    final lOther$level4 = other.level4;
    if (l$level4 != lOther$level4) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F21$level2$level3
    on Fragment$F21$level2$level3 {
  CopyWith$Fragment$F21$level2$level3<Fragment$F21$level2$level3>
      get copyWith => CopyWith$Fragment$F21$level2$level3(this, (i) => i);
}

abstract class CopyWith$Fragment$F21$level2$level3<TRes> {
  factory CopyWith$Fragment$F21$level2$level3(
          Fragment$F21$level2$level3 instance,
          TRes Function(Fragment$F21$level2$level3) then) =
      _CopyWithImpl$Fragment$F21$level2$level3;

  TRes call({int? level4, String? $__typename});
}

class _CopyWithImpl$Fragment$F21$level2$level3<TRes>
    implements CopyWith$Fragment$F21$level2$level3<TRes> {
  _CopyWithImpl$Fragment$F21$level2$level3(this._instance, this._then);

  final Fragment$F21$level2$level3 _instance;

  final TRes Function(Fragment$F21$level2$level3) _then;

  static const _undefined = {};

  TRes call({Object? level4 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F21$level2$level3(
          level4: level4 == _undefined ? _instance.level4 : (level4 as int?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String)));
}

const possibleTypesMap = {};
