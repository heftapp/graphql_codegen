import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.s});

  @override
  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
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

  Input$I copyWith({String? Function()? s}) =>
      Input$I(s: s == null ? this.s : s());
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

  @override
  factory Variables$Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F1FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F1ToJson(this);
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

  Variables$Fragment$F1 copyWith({Enum$Locale? locale}) =>
      Variables$Fragment$F1(locale: locale == null ? this.locale : locale);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1 implements Fragment$F2 {
  Fragment$F1({this.n2, required this.$__typename, this.n1});

  @override
  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? n1;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
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
  Fragment$F1 copyWith(
          {String? Function()? n2,
          String? $__typename,
          String? Function()? n1}) =>
      Fragment$F1(
          n2: n2 == null ? this.n2 : n2(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          n1: n1 == null ? this.n1 : n1());
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
const queryDocumentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F2 {
  Variables$Fragment$F2({required this.locale});

  @override
  factory Variables$Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F2FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F2ToJson(this);
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

  Variables$Fragment$F2 copyWith({Enum$Locale? locale}) =>
      Variables$Fragment$F2(locale: locale == null ? this.locale : locale);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.n2, required this.$__typename});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
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
  Fragment$F2 copyWith({String? Function()? n2, String? $__typename}) =>
      Fragment$F2(
          n2: n2 == null ? this.n2 : n2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
const queryDocumentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F3 {
  Variables$Fragment$F3({required this.i});

  @override
  factory Variables$Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F3FromJson(json);

  final Input$I i;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F3ToJson(this);
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

  Variables$Fragment$F3 copyWith({Input$I? i}) =>
      Variables$Fragment$F3(i: i == null ? this.i : i);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.test, required this.$__typename});

  @override
  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final String? test;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
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
  Fragment$F3 copyWith({String? Function()? test, String? $__typename}) =>
      Fragment$F3(
          test: test == null ? this.test : test(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
const queryDocumentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
]);

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$F4 {
  Variables$Fragment$F4({required this.locale});

  @override
  factory Variables$Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$F4FromJson(json);

  @JsonKey(unknownEnumValue: Enum$Locale.$unknown)
  final Enum$Locale locale;

  Map<String, dynamic> toJson() => _$Variables$Fragment$F4ToJson(this);
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

  Variables$Fragment$F4 copyWith({Enum$Locale? locale}) =>
      Variables$Fragment$F4(locale: locale == null ? this.locale : locale);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F4 {
  Fragment$F4({this.n1, this.n2, required this.$__typename});

  @override
  factory Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F4FromJson(json);

  final String? n1;

  final String? n2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F4ToJson(this);
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
  Fragment$F4 copyWith(
          {String? Function()? n1,
          String? Function()? n2,
          String? $__typename}) =>
      Fragment$F4(
          n1: n1 == null ? this.n1 : n1(),
          n2: n2 == null ? this.n2 : n2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
const queryDocumentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);
