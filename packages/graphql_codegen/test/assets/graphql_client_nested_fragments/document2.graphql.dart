import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'document2.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.name, required this.$__typename});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  Fragment$F2 copyWith({String? Function()? name, String? $__typename}) =>
      Fragment$F2(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

extension ClientExtension$Fragment$F2 on graphql.GraphQLClient {
  void writeFragment$F2(
          {required Fragment$F2 data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'F2', document: queryDocumentF2)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$F2? readFragment$F2(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'F2', document: queryDocumentF2)),
        optimistic: optimistic);
    return result == null ? null : Fragment$F2.fromJson(result);
  }
}
