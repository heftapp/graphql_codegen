import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputInput extends JsonSerializable {
  InputInput({this.inputField});

  @override
  factory InputInput.fromJson(Map<String, dynamic> json) =>
      _$InputInputFromJson(json);

  final bool? inputField;

  @override
  Map<String, dynamic> toJson() => _$InputInputToJson(this);
  int get hashCode {
    final l$inputField = inputField;
    return Object.hashAll([l$inputField]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputInput) || runtimeType != other.runtimeType)
      return false;
    final l$inputField = inputField;
    final lOther$inputField = other.inputField;
    if (l$inputField != lOther$inputField) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class VariablesFragmentF1 extends JsonSerializable {
  VariablesFragmentF1({this.i, required this.name});

  @override
  factory VariablesFragmentF1.fromJson(Map<String, dynamic> json) =>
      _$VariablesFragmentF1FromJson(json);

  final bool? i;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$VariablesFragmentF1ToJson(this);
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([l$i, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesFragmentF1) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class FragmentF1 extends JsonSerializable {
  FragmentF1({this.level1, required this.$__typename});

  @override
  factory FragmentF1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1FromJson(json);

  final FragmentF1$level1? level1;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF1ToJson(this);
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF1 on FragmentF1 {
  FragmentF1 copyWith(
          {FragmentF1$level1? Function()? level1, String? $__typename}) =>
      FragmentF1(
          level1: level1 == null ? this.level1 : level1(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_F1 = const FragmentDefinitionNode(
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
const FRAGMENT_F1 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F1,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF1$level1 extends JsonSerializable {
  FragmentF1$level1({this.level2, required this.$__typename});

  @override
  factory FragmentF1$level1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1$level1FromJson(json);

  final FragmentF1$level1$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF1$level1ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1$level1) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF1$level1 on FragmentF1$level1 {
  FragmentF1$level1 copyWith(
          {FragmentF1$level1$level2? Function()? level2,
          String? $__typename}) =>
      FragmentF1$level1(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class FragmentF1$level1$level2 extends JsonSerializable {
  FragmentF1$level1$level2({this.level3, required this.$__typename});

  @override
  factory FragmentF1$level1$level2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1$level1$level2FromJson(json);

  final FragmentF1$level1$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF1$level1$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1$level1$level2) ||
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

extension UtilityExtensionFragmentF1$level1$level2 on FragmentF1$level1$level2 {
  FragmentF1$level1$level2 copyWith(
          {FragmentF1$level1$level2$level3? Function()? level3,
          String? $__typename}) =>
      FragmentF1$level1$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class FragmentF1$level1$level2$level3 extends JsonSerializable {
  FragmentF1$level1$level2$level3({this.level4, required this.$__typename});

  @override
  factory FragmentF1$level1$level2$level3.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1$level1$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$FragmentF1$level1$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1$level1$level2$level3) ||
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

extension UtilityExtensionFragmentF1$level1$level2$level3
    on FragmentF1$level1$level2$level3 {
  FragmentF1$level1$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      FragmentF1$level1$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class VariablesFragmentF2 extends JsonSerializable {
  VariablesFragmentF2({this.i, this.name});

  @override
  factory VariablesFragmentF2.fromJson(Map<String, dynamic> json) =>
      _$VariablesFragmentF2FromJson(json);

  final bool? i;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesFragmentF2ToJson(this);
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([l$i, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesFragmentF2) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class FragmentF2 extends JsonSerializable {
  FragmentF2({this.level1, required this.$__typename});

  @override
  factory FragmentF2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2FromJson(json);

  final FragmentF2$level1? level1;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2ToJson(this);
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF2 on FragmentF2 {
  FragmentF2 copyWith(
          {FragmentF2$level1? Function()? level1, String? $__typename}) =>
      FragmentF2(
          level1: level1 == null ? this.level1 : level1(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_F2 = const FragmentDefinitionNode(
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
const FRAGMENT_F2 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F2,
  FRAGMENT_DEFINITION_FRAGMENT_F21,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF2$level1 extends JsonSerializable implements FragmentF21 {
  FragmentF2$level1({this.level2, required this.$__typename});

  @override
  factory FragmentF2$level1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$level1FromJson(json);

  final FragmentF2$level1$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2$level1ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$level1) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF2$level1 on FragmentF2$level1 {
  FragmentF2$level1 copyWith(
          {FragmentF2$level1$level2? Function()? level2,
          String? $__typename}) =>
      FragmentF2$level1(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class FragmentF2$level1$level2 extends JsonSerializable
    implements FragmentF21$level2 {
  FragmentF2$level1$level2({this.level3, required this.$__typename});

  @override
  factory FragmentF2$level1$level2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$level1$level2FromJson(json);

  final FragmentF2$level1$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2$level1$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$level1$level2) ||
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

extension UtilityExtensionFragmentF2$level1$level2 on FragmentF2$level1$level2 {
  FragmentF2$level1$level2 copyWith(
          {FragmentF2$level1$level2$level3? Function()? level3,
          String? $__typename}) =>
      FragmentF2$level1$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class FragmentF2$level1$level2$level3 extends JsonSerializable
    implements FragmentF21$level2$level3 {
  FragmentF2$level1$level2$level3({this.level4, required this.$__typename});

  @override
  factory FragmentF2$level1$level2$level3.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$level1$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$FragmentF2$level1$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$level1$level2$level3) ||
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

extension UtilityExtensionFragmentF2$level1$level2$level3
    on FragmentF2$level1$level2$level3 {
  FragmentF2$level1$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      FragmentF2$level1$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class VariablesFragmentF21 extends JsonSerializable {
  VariablesFragmentF21({this.i});

  @override
  factory VariablesFragmentF21.fromJson(Map<String, dynamic> json) =>
      _$VariablesFragmentF21FromJson(json);

  final bool? i;

  @override
  Map<String, dynamic> toJson() => _$VariablesFragmentF21ToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesFragmentF21) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class FragmentF21 extends JsonSerializable {
  FragmentF21({this.level2, required this.$__typename});

  @override
  factory FragmentF21.fromJson(Map<String, dynamic> json) =>
      _$FragmentF21FromJson(json);

  final FragmentF21$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF21ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF21) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF21 on FragmentF21 {
  FragmentF21 copyWith(
          {FragmentF21$level2? Function()? level2, String? $__typename}) =>
      FragmentF21(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const FRAGMENT_DEFINITION_FRAGMENT_F21 = const FragmentDefinitionNode(
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
const FRAGMENT_F21 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F21,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF21$level2 extends JsonSerializable {
  FragmentF21$level2({this.level3, required this.$__typename});

  @override
  factory FragmentF21$level2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF21$level2FromJson(json);

  final FragmentF21$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF21$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF21$level2) || runtimeType != other.runtimeType)
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

extension UtilityExtensionFragmentF21$level2 on FragmentF21$level2 {
  FragmentF21$level2 copyWith(
          {FragmentF21$level2$level3? Function()? level3,
          String? $__typename}) =>
      FragmentF21$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class FragmentF21$level2$level3 extends JsonSerializable {
  FragmentF21$level2$level3({this.level4, required this.$__typename});

  @override
  factory FragmentF21$level2$level3.fromJson(Map<String, dynamic> json) =>
      _$FragmentF21$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentF21$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF21$level2$level3) ||
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

extension UtilityExtensionFragmentF21$level2$level3
    on FragmentF21$level2$level3 {
  FragmentF21$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      FragmentF21$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const POSSIBLE_TYPES_MAP = const {};
