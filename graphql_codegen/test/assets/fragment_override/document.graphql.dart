import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentT1 {
  FragmentT1$t? get t;
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

abstract class FragmentT1$t {
  String? get name;
}

abstract class FragmentT2 {
  FragmentT2$t? get t;
  String? get name;
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

abstract class FragmentT2$t {
  String? get name;
}

abstract class FragmentTC implements FragmentT1, FragmentT2 {
  FragmentTC$t? get t;
  String? get name;
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

abstract class FragmentTC$t implements FragmentT1$t, FragmentT2$t {
  String? get name;
}

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.t});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
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
}

const POSSIBLE_TYPES_MAP = const {};
