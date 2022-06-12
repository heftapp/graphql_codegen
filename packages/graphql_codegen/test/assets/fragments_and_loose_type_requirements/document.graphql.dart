import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({required this.$__typename, this.name});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T":
        return Fragment$F$$T.fromJson(json);
      default:
        return _$Fragment$FFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  Fragment$F copyWith({String? $__typename, String? Function()? name}) =>
      Fragment$F(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

const fragmentDefinitionF = FragmentDefinitionNode(
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
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F$$T implements Fragment$F {
  Fragment$F$$T({required this.$__typename, this.name, this.t});

  @override
  factory Fragment$F$$T.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$$TFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final Fragment$F$$T$t? t;

  Map<String, dynamic> toJson() => _$Fragment$F$$TToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$$T) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$F$$T on Fragment$F$$T {
  Fragment$F$$T copyWith(
          {String? $__typename,
          String? Function()? name,
          Fragment$F$$T$t? Function()? t}) =>
      Fragment$F$$T(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$$T$t {
  Fragment$F$$T$t({this.name});

  @override
  factory Fragment$F$$T$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$$T$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F$$T$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$$T$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$$T$t on Fragment$F$$T$t {
  Fragment$F$$T$t copyWith({String? Function()? name}) =>
      Fragment$F$$T$t(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.t});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$t? t;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  Query$Q copyWith({Query$Q$t? Function()? t}) =>
      Query$Q(t: t == null ? this.t : t());
}

const documentNodeQueryQ = DocumentNode(definitions: [
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
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$t implements Fragment$F$$T {
  Query$Q$t({required this.$__typename, this.name, this.t});

  @override
  factory Query$Q$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final Query$Q$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$name, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) return false;
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

extension UtilityExtension$Query$Q$t on Query$Q$t {
  Query$Q$t copyWith(
          {String? $__typename,
          String? Function()? name,
          Query$Q$t$t? Function()? t}) =>
      Query$Q$t(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t implements Fragment$F$$T$t {
  Query$Q$t$t({this.name});

  @override
  factory Query$Q$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$t$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t on Query$Q$t$t {
  Query$Q$t$t copyWith({String? Function()? name}) =>
      Query$Q$t$t(name: name == null ? this.name : name());
}

const possibleTypesMap = {
  'I': {'T'}
};
