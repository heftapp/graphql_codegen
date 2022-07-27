import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.s});

  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I) || runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(this, (i) => i);
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(Input$I instance, TRes Function(Input$I) then) =
      _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? s});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(this._instance, this._then);

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) =>
      _then(Input$I(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? s}) => _res;
}

enum Enum$Locale {
  @JsonValue('da_DK')
  da_DK,
  @JsonValue('nb_NO')
  nb_NO,
  $unknown
}

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F1 {
  Variables$Fragment$F1({required this.locale});

  factory Variables$Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F1FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F1ToJson(this);
  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F1<Variables$Fragment$F1> get copyWith =>
      CopyWith$Variables$Fragment$F1(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F1<TRes> {
  factory CopyWith$Variables$Fragment$F1(Variables$Fragment$F1 instance,
          TRes Function(Variables$Fragment$F1) then) =
      _CopyWithImpl$Variables$Fragment$F1;

  factory CopyWith$Variables$Fragment$F1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F1;

  TRes call({Enum$Locale? locale});
}

class _CopyWithImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithImpl$Variables$Fragment$F1(this._instance, this._then);

  final Variables$Fragment$F1 _instance;

  final TRes Function(Variables$Fragment$F1) _then;

  static const _undefined = {};

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F1(
      locale: locale == _undefined || locale == null
          ? _instance.locale
          : (locale as Enum$Locale)));
}

class _CopyWithStubImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F1(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1 implements Fragment$F2 {
  Fragment$F1({this.n2, required this.$__typename, this.n1});

  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? n1;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
  @override
  int get hashCode {
    final l$n2 = n2;
    final l$$__typename = $__typename;
    final l$n1 = n1;
    return Object.hashAll([l$n2, l$$__typename, l$n1]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$n1 = n1;
    final lOther$n1 = other.n1;
    if (l$n1 != lOther$n1) return false;
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

  factory CopyWith$Fragment$F1.stub(TRes res) = _CopyWithStubImpl$Fragment$F1;

  TRes call({String? n2, String? $__typename, String? n1});
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(this._instance, this._then);

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = {};

  TRes call(
          {Object? n2 = _undefined,
          Object? $__typename = _undefined,
          Object? n1 = _undefined}) =>
      _then(Fragment$F1(
          n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          n1: n1 == _undefined ? _instance.n1 : (n1 as String?)));
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({String? n2, String? $__typename, String? n1}) => _res;
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'n1'),
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'locale'),
                value: VariableNode(name: NameNode(value: 'locale')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F2 {
  Variables$Fragment$F2({required this.locale});

  factory Variables$Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F2FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F2ToJson(this);
  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F2<Variables$Fragment$F2> get copyWith =>
      CopyWith$Variables$Fragment$F2(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F2<TRes> {
  factory CopyWith$Variables$Fragment$F2(Variables$Fragment$F2 instance,
          TRes Function(Variables$Fragment$F2) then) =
      _CopyWithImpl$Variables$Fragment$F2;

  factory CopyWith$Variables$Fragment$F2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F2;

  TRes call({Enum$Locale? locale});
}

class _CopyWithImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithImpl$Variables$Fragment$F2(this._instance, this._then);

  final Variables$Fragment$F2 _instance;

  final TRes Function(Variables$Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F2(
      locale: locale == _undefined || locale == null
          ? _instance.locale
          : (locale as Enum$Locale)));
}

class _CopyWithStubImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F2(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.n2, required this.$__typename});

  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  @override
  int get hashCode {
    final l$n2 = n2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$n2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) return false;
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

  factory CopyWith$Fragment$F2.stub(TRes res) = _CopyWithStubImpl$Fragment$F2;

  TRes call({String? n2, String? $__typename});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(this._instance, this._then);

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? n2 = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F2(
          n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({String? n2, String? $__typename}) => _res;
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'n2'),
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'locale'),
                value: VariableNode(name: NameNode(value: 'locale')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F3 {
  Variables$Fragment$F3({required this.i});

  factory Variables$Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F3FromJson(json);

  final Input$I i;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F3ToJson(this);
  @override
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F3<Variables$Fragment$F3> get copyWith =>
      CopyWith$Variables$Fragment$F3(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F3<TRes> {
  factory CopyWith$Variables$Fragment$F3(Variables$Fragment$F3 instance,
          TRes Function(Variables$Fragment$F3) then) =
      _CopyWithImpl$Variables$Fragment$F3;

  factory CopyWith$Variables$Fragment$F3.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F3;

  TRes call({Input$I? i});
  CopyWith$Input$I<TRes> get i;
}

class _CopyWithImpl$Variables$Fragment$F3<TRes>
    implements CopyWith$Variables$Fragment$F3<TRes> {
  _CopyWithImpl$Variables$Fragment$F3(this._instance, this._then);

  final Variables$Fragment$F3 _instance;

  final TRes Function(Variables$Fragment$F3) _then;

  static const _undefined = {};

  TRes call({Object? i = _undefined}) => _then(Variables$Fragment$F3(
      i: i == _undefined || i == null ? _instance.i : (i as Input$I)));
  CopyWith$Input$I<TRes> get i {
    final local$i = _instance.i;
    return CopyWith$Input$I(local$i, (e) => call(i: e));
  }
}

class _CopyWithStubImpl$Variables$Fragment$F3<TRes>
    implements CopyWith$Variables$Fragment$F3<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F3(this._res);

  TRes _res;

  call({Input$I? i}) => _res;
  CopyWith$Input$I<TRes> get i => CopyWith$Input$I.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.test, required this.$__typename});

  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final String? test;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
  @override
  int get hashCode {
    final l$test = test;
    final l$$__typename = $__typename;
    return Object.hashAll([l$test, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$test = test;
    final lOther$test = other.test;
    if (l$test != lOther$test) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

  factory CopyWith$Fragment$F3.stub(TRes res) = _CopyWithStubImpl$Fragment$F3;

  TRes call({String? test, String? $__typename});
}

class _CopyWithImpl$Fragment$F3<TRes> implements CopyWith$Fragment$F3<TRes> {
  _CopyWithImpl$Fragment$F3(this._instance, this._then);

  final Fragment$F3 _instance;

  final TRes Function(Fragment$F3) _then;

  static const _undefined = {};

  TRes call({Object? test = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F3(
          test: test == _undefined ? _instance.test : (test as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$F3<TRes>
    implements CopyWith$Fragment$F3<TRes> {
  _CopyWithStubImpl$Fragment$F3(this._res);

  TRes _res;

  call({String? test, String? $__typename}) => _res;
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'test'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'i'),
                value: VariableNode(name: NameNode(value: 'i')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F4 {
  Variables$Fragment$F4({required this.locale});

  factory Variables$Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F4FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F4ToJson(this);
  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$F4) || runtimeType != other.runtimeType)
      return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    return true;
  }

  CopyWith$Variables$Fragment$F4<Variables$Fragment$F4> get copyWith =>
      CopyWith$Variables$Fragment$F4(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$F4<TRes> {
  factory CopyWith$Variables$Fragment$F4(Variables$Fragment$F4 instance,
          TRes Function(Variables$Fragment$F4) then) =
      _CopyWithImpl$Variables$Fragment$F4;

  factory CopyWith$Variables$Fragment$F4.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F4;

  TRes call({Enum$Locale? locale});
}

class _CopyWithImpl$Variables$Fragment$F4<TRes>
    implements CopyWith$Variables$Fragment$F4<TRes> {
  _CopyWithImpl$Variables$Fragment$F4(this._instance, this._then);

  final Variables$Fragment$F4 _instance;

  final TRes Function(Variables$Fragment$F4) _then;

  static const _undefined = {};

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F4(
      locale: locale == _undefined || locale == null
          ? _instance.locale
          : (locale as Enum$Locale)));
}

class _CopyWithStubImpl$Variables$Fragment$F4<TRes>
    implements CopyWith$Variables$Fragment$F4<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F4(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$F4 {
  Fragment$F4({this.n1, this.n2, required this.$__typename});

  factory Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F4FromJson(json);

  final String? n1;

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F4ToJson(this);
  @override
  int get hashCode {
    final l$n1 = n1;
    final l$n2 = n2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$n1, l$n2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType)
      return false;
    final l$n1 = n1;
    final lOther$n1 = other.n1;
    if (l$n1 != lOther$n1) return false;
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

  factory CopyWith$Fragment$F4.stub(TRes res) = _CopyWithStubImpl$Fragment$F4;

  TRes call({String? n1, String? n2, String? $__typename});
}

class _CopyWithImpl$Fragment$F4<TRes> implements CopyWith$Fragment$F4<TRes> {
  _CopyWithImpl$Fragment$F4(this._instance, this._then);

  final Fragment$F4 _instance;

  final TRes Function(Fragment$F4) _then;

  static const _undefined = {};

  TRes call(
          {Object? n1 = _undefined,
          Object? n2 = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$F4(
          n1: n1 == _undefined ? _instance.n1 : (n1 as String?),
          n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$F4<TRes>
    implements CopyWith$Fragment$F4<TRes> {
  _CopyWithStubImpl$Fragment$F4(this._res);

  TRes _res;

  call({String? n1, String? n2, String? $__typename}) => _res;
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'n1'),
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'locale'),
                value: VariableNode(name: NameNode(value: 'locale')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'n2'),
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'locale'),
                value: VariableNode(name: NameNode(value: 'locale')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);
