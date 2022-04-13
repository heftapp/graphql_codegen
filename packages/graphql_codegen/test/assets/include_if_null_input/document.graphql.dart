import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputInput {
  InputInput({this.field, this.flag});

  @override
  factory InputInput.fromJson(Map<String, dynamic> json) =>
      _$InputInputFromJson(json);

  final String? field;

  final bool? flag;

  Map<String, dynamic> toJson() => _$InputInputToJson(this);
  int get hashCode {
    final l$field = field;
    final l$flag = flag;
    return Object.hashAll([l$field, l$flag]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputInput) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$flag = flag;
    final lOther$flag = other.flag;
    if (l$flag != lOther$flag) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VariablesQueryQ1 {
  VariablesQueryQ1({this.input});

  @override
  factory VariablesQueryQ1.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryQ1FromJson(json);

  final InputInput? input;

  Map<String, dynamic> toJson() => _$VariablesQueryQ1ToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryQ1) || runtimeType != other.runtimeType)
      return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ1 {
  QueryQ1({this.field, required this.$__typename});

  @override
  factory QueryQ1.fromJson(Map<String, dynamic> json) =>
      _$QueryQ1FromJson(json);

  final String? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryQ1ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ1) || runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ1 on QueryQ1 {
  QueryQ1 copyWith({String? Function()? field, String? $__typename}) => QueryQ1(
      field: field == null ? this.field : field(),
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_Q1 = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q1'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type:
                NamedTypeNode(name: NameNode(value: 'Input'), isNonNull: false),
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
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
const POSSIBLE_TYPES_MAP = const {};
