import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'query.graphql.g.dart';

@JsonSerializable()
class QueryFoobar extends JsonSerializable {
  QueryFoobar({this.field, this.fields});

  @override
  factory QueryFoobar.fromJson(Map<String, dynamic> json) =>
      _$QueryFoobarFromJson(json);

  @JsonKey(unknownEnumValue: EnumEnum.$unknown)
  final EnumEnum? field;

  @JsonKey(unknownEnumValue: EnumEnum.$unknown)
  final List<EnumEnum>? fields;

  @override
  Map<String, dynamic> toJson() => _$QueryFoobarToJson(this);
}

const QUERY_FOOBAR = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Foobar'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'field'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'fields'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
