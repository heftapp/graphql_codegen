import 'document2.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F1 {
  Fragment$F1({this.name, this.field, required this.$__typename});

  @override
  factory Fragment$F1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1FromJson(json);

  final String? name;

  final Fragment$F1$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F1ToJson(this);
  int get hashCode {
    final l$name = name;
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  Fragment$F1 copyWith(
          {String? Function()? name,
          Fragment$F1$field? Function()? field,
          String? $__typename}) =>
      Fragment$F1(
          name: name == null ? this.name : name(),
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
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
          name: NameNode(value: 'field'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

extension ClientExtension$Fragment$F1 on graphql.GraphQLClient {
  void writeFragment$F1(
          {required Fragment$F1 data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'F1', document: documentNodeFragmentF1)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$F1? readFragment$F1(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'F1', document: documentNodeFragmentF1)),
        optimistic: optimistic);
    return result == null ? null : Fragment$F1.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$F1$field implements Fragment$F2 {
  Fragment$F1$field({this.name, required this.$__typename});

  @override
  factory Fragment$F1$field.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F1$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F1$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F1$field) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$F1$field on Fragment$F1$field {
  Fragment$F1$field copyWith({String? Function()? name, String? $__typename}) =>
      Fragment$F1$field(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const possibleTypesMap = {};
