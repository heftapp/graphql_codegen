import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class FragmentT1 extends JsonSerializable {
  FragmentT1({this.t});

  @override
  factory FragmentT1.fromJson(Map<String, dynamic> json) =>
      _$FragmentT1FromJson(json);

  final FragmentT1$t? t;

  @override
  Map<String, dynamic> toJson() => _$FragmentT1ToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentT1) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

const FRAGMENT_T1 = const FragmentDefinitionNode(
    name: NameNode(value: 'T1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
    ]));

@JsonSerializable()
class FragmentT1$t extends JsonSerializable {
  FragmentT1$t({this.name});

  @override
  factory FragmentT1$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentT1$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentT1$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentT1$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class FragmentT2 extends JsonSerializable {
  FragmentT2({this.t, this.name});

  @override
  factory FragmentT2.fromJson(Map<String, dynamic> json) =>
      _$FragmentT2FromJson(json);

  final FragmentT2$t? t;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentT2ToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentT2) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

const FRAGMENT_T2 = const FragmentDefinitionNode(
    name: NameNode(value: 'T2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
          ])),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class FragmentT2$t extends JsonSerializable {
  FragmentT2$t({this.name});

  @override
  factory FragmentT2$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentT2$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentT2$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentT2$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class FragmentTC extends JsonSerializable implements FragmentT1, FragmentT2 {
  FragmentTC({this.t, this.name});

  @override
  factory FragmentTC.fromJson(Map<String, dynamic> json) =>
      _$FragmentTCFromJson(json);

  final FragmentTC$t? t;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentTCToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentTC) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

const FRAGMENT_T_C = const FragmentDefinitionNode(
    name: NameNode(value: 'TC'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'T1'), directives: []),
      FragmentSpreadNode(name: NameNode(value: 'T2'), directives: [])
    ]));

@JsonSerializable()
class FragmentTC$t extends JsonSerializable
    implements FragmentT1$t, FragmentT2$t {
  FragmentTC$t({this.name});

  @override
  factory FragmentTC$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentTC$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentTC$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentTC$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.t});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
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
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'TC'), directives: [])
            ]))
      ])),
  FRAGMENT_T_C,
  FRAGMENT_T1,
  FRAGMENT_T2,
]);

@JsonSerializable()
class QueryQ$t extends JsonSerializable
    implements FragmentTC, FragmentT1, FragmentT2 {
  QueryQ$t({this.t, this.name});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final QueryQ$t$t? t;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class QueryQ$t$t extends JsonSerializable
    implements FragmentTC$t, FragmentT1$t, FragmentT2$t {
  QueryQ$t$t({this.name});

  @override
  factory QueryQ$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$t$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {};
