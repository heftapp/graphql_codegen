import 'package:gql/ast.dart';

abstract class FragmentPersonSummary {
  String? get nickname;
  String get name;
}

const FRAGMENT_PERSON_SUMMARY = const FragmentDefinitionNode(
    name: NameNode(value: 'PersonSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'nickname'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'full_name'),
          alias: NameNode(value: 'name'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
