import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentFragmentA implements FragmentFragmentI {
  String? get value;
  String? get name;
}

const FRAGMENT_FRAGMENT_A = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentA'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'FieldA'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FragmentSpreadNode(name: NameNode(value: 'FragmentI'), directives: [])
    ]));

abstract class FragmentFragmentI {
  String? get name;
}

const FRAGMENT_FRAGMENT_I = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentI'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'IField'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryFetchStuff extends JsonSerializable {
  QueryFetchStuff({this.field});

  @override
  factory QueryFetchStuff.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuffFromJson(json);

  final QueryFetchStuff$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuffToJson(this);
}

const QUERY_FETCH_STUFF = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchStuff'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
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
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(
                  name: NameNode(value: 'FragmentA'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'FieldA'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                                name: NameNode(value: 'IField'),
                                isNonNull: false)),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ])),
  FRAGMENT_FRAGMENT_A,
  FRAGMENT_FRAGMENT_I,
]);

@JsonSerializable()
class QueryFetchStuff$field extends JsonSerializable {
  QueryFetchStuff$field({this.name});

  @override
  factory QueryFetchStuff$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return QueryFetchStuff$field$FieldA.fromJson(json);
      default:
        return _$QueryFetchStuff$fieldFromJson(json);
    }
  }

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$fieldToJson(this);
}

@JsonSerializable()
class QueryFetchStuff$field$FieldA extends QueryFetchStuff$field
    implements FragmentFragmentA, FragmentFragmentI {
  QueryFetchStuff$field$FieldA({this.value, String? name}) : super(name: name);

  @override
  factory QueryFetchStuff$field$FieldA.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuff$field$FieldAFromJson(json);

  final String? value;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$field$FieldAToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'IField': {'FieldA'}
};
