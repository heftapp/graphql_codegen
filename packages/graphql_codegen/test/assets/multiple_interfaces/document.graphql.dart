import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class FragmentF0 extends JsonSerializable {
  FragmentF0({this.name01});

  @override
  factory FragmentF0.fromJson(Map<String, dynamic> json) =>
      _$FragmentF0FromJson(json);

  final String? name01;

  @override
  Map<String, dynamic> toJson() => _$FragmentF0ToJson(this);
  int get hashCode {
    final l$name01 = name01;
    return Object.hashAll([l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF0) || runtimeType != other.runtimeType)
      return false;
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) return false;
    return true;
  }
}

const FRAGMENT_F0 = const FragmentDefinitionNode(
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

@JsonSerializable()
class FragmentF1 extends JsonSerializable {
  FragmentF1({this.size2});

  @override
  factory FragmentF1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1FromJson(json);

  final int? size2;

  @override
  Map<String, dynamic> toJson() => _$FragmentF1ToJson(this);
  int get hashCode {
    final l$size2 = size2;
    return Object.hashAll([l$size2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1) || runtimeType != other.runtimeType)
      return false;
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) return false;
    return true;
  }
}

const FRAGMENT_F1 = const FragmentDefinitionNode(
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

@JsonSerializable()
class FragmentF2 extends JsonSerializable {
  FragmentF2({this.name2});

  @override
  factory FragmentF2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2FromJson(json);

  final String? name2;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2ToJson(this);
  int get hashCode {
    final l$name2 = name2;
    return Object.hashAll([l$name2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2) || runtimeType != other.runtimeType)
      return false;
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) return false;
    return true;
  }
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
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

@JsonSerializable()
class FragmentF3 extends JsonSerializable {
  FragmentF3({this.value});

  @override
  factory FragmentF3.fromJson(Map<String, dynamic> json) =>
      _$FragmentF3FromJson(json);

  final double? value;

  @override
  Map<String, dynamic> toJson() => _$FragmentF3ToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF3) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

const FRAGMENT_F3 = const FragmentDefinitionNode(
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

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.field});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$field = field;
    return Object.hashAll([l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

const QUERY_Q = const DocumentNode(definitions: [
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
  FRAGMENT_F0,
  FRAGMENT_F1,
  FRAGMENT_F2,
  FRAGMENT_F3,
]);

@JsonSerializable()
class QueryQ$field extends JsonSerializable implements FragmentF0 {
  QueryQ$field({required this.$__typename, this.name0, this.name01});

  @override
  factory QueryQ$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return QueryQ$field$T1.fromJson(json);
      default:
        return _$QueryQ$fieldFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name0;

  final String? name01;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$fieldToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name0 = name0;
    final l$name01 = name01;
    return Object.hashAll([l$$__typename, l$name0, l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$field) || runtimeType != other.runtimeType)
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

@JsonSerializable()
class QueryQ$field$T1 extends JsonSerializable
    implements FragmentF1, FragmentF2, QueryQ$field {
  QueryQ$field$T1(
      {required this.$__typename,
      this.name0,
      this.name01,
      this.size,
      this.name,
      this.size2,
      this.name2});

  @override
  factory QueryQ$field$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$field$T1FromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name0;

  final String? name01;

  final int? size;

  final String? name;

  final int? size2;

  final String? name2;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$field$T1ToJson(this);
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
    if (!(other is QueryQ$field$T1) || runtimeType != other.runtimeType)
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

const POSSIBLE_TYPES_MAP = const {
  'I1': {'T1'},
  'I2': {'T1'}
};
