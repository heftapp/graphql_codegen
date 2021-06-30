import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF1 {
  String? get name;
}

const FRAGMENT_F1 = const FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
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

abstract class FragmentF1$T extends FragmentF1 {
  FragmentF1$T$t? get t;
}

abstract class FragmentF1$T$t {
  String? get name;
}

abstract class FragmentF2 {
  String? get name;
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
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
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryQ1 extends JsonSerializable {
  QueryQ1({this.t});

  @override
  factory QueryQ1.fromJson(Map<String, dynamic> json) =>
      _$QueryQ1FromJson(json);

  final QueryQ1$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ1ToJson(this);
}

const QUERY_Q1 = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q1'),
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
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: [])
            ]))
      ])),
  FRAGMENT_F1,
]);

@JsonSerializable()
class QueryQ1$t extends JsonSerializable implements FragmentF1$T {
  QueryQ1$t({this.name, this.t});

  @override
  factory QueryQ1$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ1$tFromJson(json);

  final String? name;

  final QueryQ1$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ1$tToJson(this);
}

@JsonSerializable()
class QueryQ1$t$t extends JsonSerializable implements FragmentF1$T$t {
  QueryQ1$t$t({this.name});

  @override
  factory QueryQ1$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ1$t$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ1$t$tToJson(this);
}

@JsonSerializable()
class QueryQ2 extends JsonSerializable {
  QueryQ2({this.t});

  @override
  factory QueryQ2.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2FromJson(json);

  final QueryQ2$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2ToJson(this);
}

const QUERY_Q2 = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q2'),
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
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
            ]))
      ])),
  FRAGMENT_F2,
]);

@JsonSerializable()
class QueryQ2$t extends JsonSerializable implements FragmentF2 {
  QueryQ2$t({this.name});

  @override
  factory QueryQ2$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2$tToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'I': {'T'}
};
