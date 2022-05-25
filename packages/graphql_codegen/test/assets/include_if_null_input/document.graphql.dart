import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Input$Input {
  Input$Input({this.field, this.flag});

  @override
  factory Input$Input.fromJson(Map<String, dynamic> json) =>
      _$Input$InputFromJson(json);

  final String? field;

  final bool? flag;

  Map<String, dynamic> toJson() => _$Input$InputToJson(this);
  int get hashCode {
    final l$field = field;
    final l$flag = flag;
    return Object.hashAll([l$field, l$flag]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$Input) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$flag = flag;
    final lOther$flag = other.flag;
    if (l$flag != lOther$flag) return false;
    return true;
  }

  Input$Input copyWith({String? Function()? field, bool? Function()? flag}) =>
      Input$Input(
          field: field == null ? this.field : field(),
          flag: flag == null ? this.flag : flag());
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Variables$Query$Q1 {
  Variables$Query$Q1({this.input});

  @override
  factory Variables$Query$Q1.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$Q1FromJson(json);

  final Input$Input? input;

  Map<String, dynamic> toJson() => _$Variables$Query$Q1ToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$Q1) || runtimeType != other.runtimeType)
      return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  Variables$Query$Q1 copyWith({Input$Input? Function()? input}) =>
      Variables$Query$Q1(input: input == null ? this.input : input());
}

@JsonSerializable(explicitToJson: true)
class Query$Q1 {
  Query$Q1({this.field, required this.$__typename});

  @override
  factory Query$Q1.fromJson(Map<String, dynamic> json) =>
      _$Query$Q1FromJson(json);

  final String? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q1ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q1) || runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q1 on Query$Q1 {
  Query$Q1 copyWith({String? Function()? field, String? $__typename}) =>
      Query$Q1(
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentQ1 = DocumentNode(definitions: [
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
const possibleTypesMap = {};
