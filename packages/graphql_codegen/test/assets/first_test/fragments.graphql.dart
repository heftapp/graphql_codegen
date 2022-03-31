import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'fragments.graphql.g.dart';

@JsonSerializable()
class FragmentF extends JsonSerializable {
  FragmentF({required this.name});

  @override
  factory FragmentF.fromJson(Map<String, dynamic> json) =>
      _$FragmentFFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$FragmentFToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF) || runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

const FRAGMENT_F = const FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
