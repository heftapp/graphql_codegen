import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document1.graphql.g.dart';

@JsonSerializable()
class FragmentF2 extends JsonSerializable {
  FragmentF2({this.value});

  @override
  factory FragmentF2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2FromJson(json);

  final int? value;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2ToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T2'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
