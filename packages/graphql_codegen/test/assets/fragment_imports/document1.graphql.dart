import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document1.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.value});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final int? value;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  Fragment$F2 copyWith({int? Function()? value}) =>
      Fragment$F2(value: value == null ? this.value : value());
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
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
const queryDocumentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);
