import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.other});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final Fragment$F2? other;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  Fragment$F copyWith({Fragment$F2? Function()? other}) =>
      Fragment$F(other: other == null ? this.other : other());
}

const fragmentDefinitionF = FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
          ]))
    ]));
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.other});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F3? other;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  Fragment$F2 copyWith({Fragment$F3? Function()? other}) =>
      Fragment$F2(other: other == null ? this.other : other());
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
          ]))
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.other});

  @override
  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final Fragment$F4? other;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  Fragment$F3 copyWith({Fragment$F4? Function()? other}) =>
      Fragment$F3(other: other == null ? this.other : other());
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F4'), directives: [])
          ]))
    ]));
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F4 {
  Fragment$F4({this.name});

  @override
  factory Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F4FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F4ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F4 on Fragment$F4 {
  Fragment$F4 copyWith({String? Function()? name}) =>
      Fragment$F4(name: name == null ? this.name : name());
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Query$Fetch {
  Query$Fetch({this.t});

  @override
  factory Query$Fetch.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchFromJson(json);

  final Fragment$F? t;

  Map<String, dynamic> toJson() => _$Query$FetchToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch on Query$Fetch {
  Query$Fetch copyWith({Fragment$F? Function()? t}) =>
      Query$Fetch(t: t == null ? this.t : t());
}

const documentNodeQueryFetch = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Fetch'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);
const possibleTypesMap = {};
