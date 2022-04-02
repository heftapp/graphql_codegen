import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
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
  int get hashCode {
    final l$field = field;
    final l$fields = fields;
    return Object.hashAll([
      l$field,
      l$fields == null ? null : Object.hashAll(l$fields.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFoobar) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != null && lOther$fields != null) {
      if (l$fields.length != lOther$fields.length) return false;
      for (int i = 0; i < l$fields.length; i++) {
        final l$fields$entry = l$fields[i];
        final lOther$fields$entry = lOther$fields[i];
        if (l$fields$entry != lOther$fields$entry) return false;
      }
    } else if (l$fields != lOther$fields) {
      return false;
    }

    return true;
  }
}

extension UtilityExtensionQueryFoobar on QueryFoobar {
  QueryFoobar copyWith(
          {EnumEnum? Function()? field, List<EnumEnum>? Function()? fields}) =>
      QueryFoobar(
          field: field == null ? this.field : field(),
          fields: fields == null ? this.fields : fields());
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
