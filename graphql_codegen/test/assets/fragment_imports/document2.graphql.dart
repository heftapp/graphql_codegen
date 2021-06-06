import 'document1.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document2.graphql.g.dart';

abstract class FragmentF1 {
  String? get name;
}

const FRAGMENT_F1 = const FragmentDefinitionNode(
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
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
            ]))
      ])),
  FRAGMENT_F1,
  FRAGMENT_F2,
]);

@JsonSerializable()
class QueryQ$t extends JsonSerializable implements FragmentF1 {
  QueryQ$t({this.name});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
}
