import 'package:gql/ast.dart';
import 'package:graphql_codegen_example/scalars.dart';

abstract class FragmentPersonSummary {
  String? get nickname;
  String get name;
  DateTime? get dob;
  List<DateTime?>? get events;
  List<List<DateTime?>?>? get eventsOfEvents;
  String get $__typename;
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
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'dob'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'events'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'events_of_events'),
          alias: NameNode(value: 'eventsOfEvents'),
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
