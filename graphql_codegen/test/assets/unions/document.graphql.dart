import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.u});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$u? u;

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
            name: NameNode(value: 'u'),
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
                          name: NameNode(value: 'TA'), isNonNull: false)),
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
                          name: NameNode(value: 'TB'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'velocity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ])),
]);

@JsonSerializable()
class QueryQ$u extends JsonSerializable {
  QueryQ$u();

  @override
  factory QueryQ$u.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TA":
        return QueryQ$u$Ta.fromJson(json);
      case "TB":
        return QueryQ$u$Tb.fromJson(json);
      default:
        return _$QueryQ$uFromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson() => _$QueryQ$uToJson(this);
}

@JsonSerializable()
class QueryQ$u$Ta extends QueryQ$u {
  QueryQ$u$Ta({this.name}) : super();

  @override
  factory QueryQ$u$Ta.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$u$TaFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$u$TaToJson(this);
}

@JsonSerializable()
class QueryQ$u$Tb extends QueryQ$u {
  QueryQ$u$Tb({this.velocity}) : super();

  @override
  factory QueryQ$u$Tb.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$u$TbFromJson(json);

  final int? velocity;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$u$TbToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'U': {'TA', 'TB'}
};
