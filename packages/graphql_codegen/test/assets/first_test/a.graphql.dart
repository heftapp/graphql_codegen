import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'a.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryFetchName extends JsonSerializable {
  QueryFetchName({this.name});

  @override
  factory QueryFetchName.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchNameFromJson(json);

  final QueryFetchName$name? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchNameToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchName) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchName on QueryFetchName {
  QueryFetchName copyWith({QueryFetchName$name? Function()? name}) =>
      QueryFetchName(name: name == null ? this.name : name());
}

const QUERY_FETCH_NAME = const DocumentNode(definitions: [
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
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetchName$name extends JsonSerializable implements FragmentF {
  QueryFetchName$name({required this.name});

  @override
  factory QueryFetchName$name.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchName$nameFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchName$nameToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchName$name) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchName$name on QueryFetchName$name {
  QueryFetchName$name copyWith({String? name}) =>
      QueryFetchName$name(name: name == null ? this.name : name);
}
