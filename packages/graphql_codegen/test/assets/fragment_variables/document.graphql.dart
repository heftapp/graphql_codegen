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

  Input$Input copyWith({bool? Function()? inputField}) => Input$Input(
      inputField: inputField == null ? this.inputField : inputField());
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

  Variables$Fragment$F1 copyWith({bool? Function()? i, String? name}) =>
      Variables$Fragment$F1(
          i: i == null ? this.i : i(), name: name == null ? this.name : name);
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
  Fragment$F1 copyWith(
          {Fragment$F1$level1? Function()? level1, String? $__typename}) =>
      Fragment$F1(
          level1: level1 == null ? this.level1 : level1(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
  Fragment$F1$level1 copyWith(
          {Fragment$F1$level1$level2? Function()? level2,
          String? $__typename}) =>
      Fragment$F1$level1(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
  Fragment$F1$level1$level2 copyWith(
          {Fragment$F1$level1$level2$level3? Function()? level3,
          String? $__typename}) =>
      Fragment$F1$level1$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
  Fragment$F1$level1$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      Fragment$F1$level1$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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

  Variables$Fragment$F2 copyWith(
          {bool? Function()? i, String? Function()? name}) =>
      Variables$Fragment$F2(
          i: i == null ? this.i : i(), name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.level1, required this.$__typename});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F2$level1? level1;

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
  Fragment$F2 copyWith(
          {Fragment$F2$level1? Function()? level1, String? $__typename}) =>
      Fragment$F2(
          level1: level1 == null ? this.level1 : level1(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
class Fragment$F2$level1 implements Fragment$F21 {
  Fragment$F2$level1({this.level2, required this.$__typename});

  @override
  factory Fragment$F2$level1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$level1FromJson(json);

  final Fragment$F2$level1$level2? level2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2$level1ToJson(this);
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$level1) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$F2$level1 on Fragment$F2$level1 {
  Fragment$F2$level1 copyWith(
          {Fragment$F2$level1$level2? Function()? level2,
          String? $__typename}) =>
      Fragment$F2$level1(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2$level1$level2 implements Fragment$F21$level2 {
  Fragment$F2$level1$level2({this.level3, required this.$__typename});

  @override
  factory Fragment$F2$level1$level2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$level1$level2FromJson(json);

  final Fragment$F2$level1$level2$level3? level3;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2$level1$level2ToJson(this);
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level3, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$level1$level2) ||
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

extension UtilityExtension$Fragment$F2$level1$level2
    on Fragment$F2$level1$level2 {
  Fragment$F2$level1$level2 copyWith(
          {Fragment$F2$level1$level2$level3? Function()? level3,
          String? $__typename}) =>
      Fragment$F2$level1$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2$level1$level2$level3 implements Fragment$F21$level2$level3 {
  Fragment$F2$level1$level2$level3({this.level4, required this.$__typename});

  @override
  factory Fragment$F2$level1$level2$level3.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$F2$level1$level2$level3FromJson(json);

  final int? level4;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$F2$level1$level2$level3ToJson(this);
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([l$level4, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$level1$level2$level3) ||
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

extension UtilityExtension$Fragment$F2$level1$level2$level3
    on Fragment$F2$level1$level2$level3 {
  Fragment$F2$level1$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      Fragment$F2$level1$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

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

  Variables$Fragment$F21 copyWith({bool? Function()? i}) =>
      Variables$Fragment$F21(i: i == null ? this.i : i());
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
  Fragment$F21 copyWith(
          {Fragment$F21$level2? Function()? level2, String? $__typename}) =>
      Fragment$F21(
          level2: level2 == null ? this.level2 : level2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
  Fragment$F21$level2 copyWith(
          {Fragment$F21$level2$level3? Function()? level3,
          String? $__typename}) =>
      Fragment$F21$level2(
          level3: level3 == null ? this.level3 : level3(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
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
  Fragment$F21$level2$level3 copyWith(
          {int? Function()? level4, String? $__typename}) =>
      Fragment$F21$level2$level3(
          level4: level4 == null ? this.level4 : level4(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const possibleTypesMap = {};
