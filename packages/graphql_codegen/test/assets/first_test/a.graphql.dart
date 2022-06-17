import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'a.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchName {
  Query$FetchName({this.name});

  @override
  factory Query$FetchName.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchNameFromJson(json);

  final Fragment$F? name;

  Map<String, dynamic> toJson() => _$Query$FetchNameToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchName) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchName on Query$FetchName {
  Query$FetchName copyWith({Fragment$F? Function()? name}) =>
      Query$FetchName(name: name == null ? this.name : name());
}

const documentNodeQueryFetchName = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchName'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
]);
