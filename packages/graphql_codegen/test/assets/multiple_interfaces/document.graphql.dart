import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F0 {
  Fragment$F0({this.name01});

  @override
  factory Fragment$F0.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F0FromJson(json);

  final String? name01;

  Map<String, dynamic> toJson() => _$Fragment$F0ToJson(this);
  int get hashCode {
    final l$name01 = name01;
    return Object.hashAll([l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F0) || runtimeType != other.runtimeType)
      return false;
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F0 on Fragment$F0 {
  Fragment$F0 copyWith({String? Function()? name01}) =>
      Fragment$F0(name01: name01 == null ? this.name01 : name01());
}

const fragmentDefinitionF0 = FragmentDefinitionNode(
    name: NameNode(value: 'F0'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'name01'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentF0 = DocumentNode(definitions: [
  fragmentDefinitionF0,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F1 {
  Fragment$F1({this.size2});

  @override
  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final int? size2;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
  int get hashCode {
    final l$size2 = size2;
    return Object.hashAll([l$size2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  Fragment$F1 copyWith({int? Function()? size2}) =>
      Fragment$F1(size2: size2 == null ? this.size2 : size2());
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I2'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'size'),
          alias: NameNode(value: 'size2'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.name2});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final String? name2;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$name2 = name2;
    return Object.hashAll([l$name2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  Fragment$F2 copyWith({String? Function()? name2}) =>
      Fragment$F2(name2: name2 == null ? this.name2 : name2());
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'name2'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.value});

  @override
  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final double? value;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  Fragment$F3 copyWith({double? Function()? value}) =>
      Fragment$F3(value: value == null ? this.value : value());
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I3'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.field});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$field? field;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$field = field;
    return Object.hashAll([l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  Query$Q copyWith({Query$Q$field? Function()? field}) =>
      Query$Q(field: field == null ? this.field : field());
}

const queryDocumentQ = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'field'),
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
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I1'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: NameNode(value: 'name0'),
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FragmentSpreadNode(name: NameNode(value: 'F0'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I2'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'size'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'T1'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I3'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
            ]))
      ])),
  fragmentDefinitionF0,
  fragmentDefinitionF1,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$field implements Fragment$F0 {
  Query$Q$field({required this.$__typename, this.name0, this.name01});

  @override
  factory Query$Q$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return Query$Q$field$$T1.fromJson(json);
      default:
        return _$Query$Q$fieldFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name0;

  final String? name01;

  Map<String, dynamic> toJson() => _$Query$Q$fieldToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name0 = name0;
    final l$name01 = name01;
    return Object.hashAll([l$$__typename, l$name0, l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$field) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name0 = name0;
    final lOther$name0 = other.name0;
    if (l$name0 != lOther$name0) return false;
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$field on Query$Q$field {
  Query$Q$field copyWith(
          {String? $__typename,
          String? Function()? name0,
          String? Function()? name01}) =>
      Query$Q$field(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name0: name0 == null ? this.name0 : name0(),
          name01: name01 == null ? this.name01 : name01());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$field$$T1 implements Fragment$F1, Fragment$F2, Query$Q$field {
  Query$Q$field$$T1(
      {required this.$__typename,
      this.name0,
      this.name01,
      this.size,
      this.name,
      this.size2,
      this.name2});

  @override
  factory Query$Q$field$$T1.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$field$$T1FromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name0;

  final String? name01;

  final int? size;

  final String? name;

  final int? size2;

  final String? name2;

  Map<String, dynamic> toJson() => _$Query$Q$field$$T1ToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name0 = name0;
    final l$name01 = name01;
    final l$size = size;
    final l$name = name;
    final l$size2 = size2;
    final l$name2 = name2;
    return Object.hashAll(
        [l$$__typename, l$name0, l$name01, l$size, l$name, l$size2, l$name2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$field$$T1) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name0 = name0;
    final lOther$name0 = other.name0;
    if (l$name0 != lOther$name0) return false;
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) return false;
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) return false;
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$field$$T1 on Query$Q$field$$T1 {
  Query$Q$field$$T1 copyWith(
          {String? $__typename,
          String? Function()? name0,
          String? Function()? name01,
          int? Function()? size,
          String? Function()? name,
          int? Function()? size2,
          String? Function()? name2}) =>
      Query$Q$field$$T1(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name0: name0 == null ? this.name0 : name0(),
          name01: name01 == null ? this.name01 : name01(),
          size: size == null ? this.size : size(),
          name: name == null ? this.name : name(),
          size2: size2 == null ? this.size2 : size2(),
          name2: name2 == null ? this.name2 : name2());
}

const possibleTypesMap = {
  'I1': {'T1'},
  'I2': {'T1'}
};
