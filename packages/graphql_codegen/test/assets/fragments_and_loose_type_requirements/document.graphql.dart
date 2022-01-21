import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF {
  String? get name;
}

const FRAGMENT_F = const FragmentDefinitionNode(
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

abstract class FragmentF$T extends FragmentF {
  FragmentF$T$t? get t;
}

abstract class FragmentF$T$t {
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
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_F,
]);

@JsonSerializable()
class QueryQ$t extends JsonSerializable implements FragmentF$T {
  QueryQ$t({this.name, this.t});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final String? name;

  final QueryQ$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
}

@JsonSerializable()
class QueryQ$t$t extends JsonSerializable implements FragmentF$T$t {
  QueryQ$t$t({this.name});

  @override
  factory QueryQ$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$tFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$t$tToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'I': {'T'}
};
