import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'variables.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryHiBob extends JsonSerializable {
  VariablesQueryHiBob({required this.i});

  @override
  factory VariablesQueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryHiBobFromJson(json);

  final InputI1 i;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryHiBobToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryHiBob) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryHiBob extends JsonSerializable {
  QueryHiBob({this.field});

  @override
  factory QueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBobFromJson(json);

  final QueryHiBob$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBobToJson(this);
  int get hashCode {
    final l$field = field;
    return Object.hashAll([l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryHiBob) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

extension UtilityExtensionQueryHiBob on QueryHiBob {
  QueryHiBob copyWith({QueryHiBob$field? Function()? field}) =>
      QueryHiBob(field: field == null ? this.field : field());
}

const QUERY_HI_BOB = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HiBob'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'i')),
            type: NamedTypeNode(name: NameNode(value: 'I1'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'field'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'i'))),
              ArgumentNode(
                  name: NameNode(value: 'b'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
]);

@JsonSerializable(explicitToJson: true)
class QueryHiBob$field extends JsonSerializable {
  QueryHiBob$field({required this.value});

  @override
  factory QueryHiBob$field.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBob$fieldFromJson(json);

  final String value;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBob$fieldToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryHiBob$field) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtensionQueryHiBob$field on QueryHiBob$field {
  QueryHiBob$field copyWith({String? value}) =>
      QueryHiBob$field(value: value == null ? this.value : value);
}
