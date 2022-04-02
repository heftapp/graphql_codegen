import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentF extends JsonSerializable {
  FragmentF({required this.$__typename, this.name});

  @override
  factory FragmentF.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T":
        return FragmentF$T.fromJson(json);
      default:
        return _$FragmentFFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentFToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF) || runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF on FragmentF {
  FragmentF copyWith({String? $__typename, String? Function()? name}) =>
      FragmentF(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

const FRAGMENT_DEFINITION_FRAGMENT_F = const FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      InlineFragmentNode(
          typeCondition: TypeConditionNode(
              on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
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
          ]))
    ]));
const FRAGMENT_F = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF$T extends JsonSerializable implements FragmentF {
  FragmentF$T({required this.$__typename, this.name, this.t});

  @override
  factory FragmentF$T.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$TFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final FragmentF$T$t? t;

  @override
  Map<String, dynamic> toJson() => _$FragmentF$TToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$T) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$T on FragmentF$T {
  FragmentF$T copyWith(
          {String? $__typename,
          String? Function()? name,
          FragmentF$T$t? Function()? t}) =>
      FragmentF$T(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$T$t extends JsonSerializable {
  FragmentF$T$t({this.name});

  @override
  factory FragmentF$T$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$T$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentF$T$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$T$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$T$t on FragmentF$T$t {
  FragmentF$T$t copyWith({String? Function()? name}) =>
      FragmentF$T$t(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
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

extension UtilityExtensionQueryQ on QueryQ {
  QueryQ copyWith({QueryQ$t? Function()? t}) =>
      QueryQ(t: t == null ? this.t : t());
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
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ$t extends JsonSerializable implements FragmentF$T {
  QueryQ$t({required this.$__typename, this.name, this.t});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final QueryQ$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t) || runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ$t on QueryQ$t {
  QueryQ$t copyWith(
          {String? $__typename,
          String? Function()? name,
          QueryQ$t$t? Function()? t}) =>
      QueryQ$t(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ$t$t extends JsonSerializable implements FragmentF$T$t {
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

extension UtilityExtensionQueryQ$t$t on QueryQ$t$t {
  QueryQ$t$t copyWith({String? Function()? name}) =>
      QueryQ$t$t(name: name == null ? this.name : name());
}

const POSSIBLE_TYPES_MAP = const {
  'I': {'T'}
};
