import 'document1.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document2.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F1 {
  Fragment$F1({this.name});

  @override
  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  Fragment$F1 copyWith({String? Function()? name}) =>
      Fragment$F1(name: name == null ? this.name : name());
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

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
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
            ]))
      ])),
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$t implements Fragment$F1 {
  Query$Q$t({this.name});

  @override
  factory Query$Q$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t on Query$Q$t {
  Query$Q$t copyWith({String? Function()? name}) =>
      Query$Q$t(name: name == null ? this.name : name());
}
