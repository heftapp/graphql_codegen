import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF0 {
  String? get name01;
}

const FRAGMENT_F0 = const FragmentDefinitionNode(
    name: NameNode(value: 'F0'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'name01'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

abstract class FragmentF1 {
  int? get size2;
}

const FRAGMENT_F1 = const FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I2'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'size'),
          alias: NameNode(value: 'size2'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

abstract class FragmentF2 {
  String? get name2;
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: NameNode(value: 'name2'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

abstract class FragmentF3 {
  double? get value;
}

const FRAGMENT_F3 = const FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'I3'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.field});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
}

const QUERY_Q = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I1'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: NameNode(value: 'name0'),
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FragmentSpreadNode(name: NameNode(value: 'F0'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I2'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'size'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'T1'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'I3'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
            ]))
      ])),
  FRAGMENT_F0,
  FRAGMENT_F1,
  FRAGMENT_F2,
  FRAGMENT_F3,
]);

@JsonSerializable()
class QueryQ$field extends JsonSerializable implements FragmentF0 {
  QueryQ$field({this.name0, this.name01});

  @override
  factory QueryQ$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return QueryQ$field$T1.fromJson(json);
      default:
        return _$QueryQ$fieldFromJson(json);
    }
  }

  final String? name0;

  final String? name01;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$fieldToJson(this);
}

@JsonSerializable()
class QueryQ$field$T1 extends QueryQ$field implements FragmentF1, FragmentF2 {
  QueryQ$field$T1(
      {this.size,
      this.name,
      this.size2,
      this.name2,
      String? name0,
      String? name01})
      : super(name0: name0, name01: name01);

  @override
  factory QueryQ$field$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$field$T1FromJson(json);

  final int? size;

  final String? name;

  final int? size2;

  final String? name2;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$field$T1ToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'I1': {'T1'},
  'I2': {'T1'}
};
