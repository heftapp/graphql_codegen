import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF {
  FragmentF$t? get t;
}

const FRAGMENT_F = const FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 't'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 't'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));

abstract class FragmentF$t {
  FragmentF$t$t? get t;
}

abstract class FragmentF$t$t {}

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.t});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$t? t;

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
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 't'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 't'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 't'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FragmentSpreadNode(
                        name: NameNode(value: 'F'), directives: [])
                  ])),
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_F,
]);

@JsonSerializable()
class QueryQ$t extends JsonSerializable implements FragmentF {
  QueryQ$t({this.t});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final QueryQ$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
}

@JsonSerializable()
class QueryQ$t$t extends JsonSerializable implements FragmentF, FragmentF$t {
  QueryQ$t$t({this.t});

  @override
  factory QueryQ$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$tFromJson(json);

  final QueryQ$t$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$t$tToJson(this);
}

@JsonSerializable()
class QueryQ$t$t$t extends JsonSerializable
    implements FragmentF$t, FragmentF$t$t {
  QueryQ$t$t$t({this.t});

  @override
  factory QueryQ$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$t$tFromJson(json);

  final QueryQ$t$t$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$t$t$tToJson(this);
}

@JsonSerializable()
class QueryQ$t$t$t$t extends JsonSerializable implements FragmentF$t$t {
  QueryQ$t$t$t$t();

  @override
  factory QueryQ$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$t$t$tFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QueryQ$t$t$t$tToJson(this);
}

@JsonSerializable()
class QueryQ2 extends JsonSerializable {
  QueryQ2({this.t});

  @override
  factory QueryQ2.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2FromJson(json);

  final QueryQ2$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2ToJson(this);
}

const QUERY_Q2 = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q2'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: []),
              FieldNode(
                  name: NameNode(value: 't'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'F'), directives: []),
                    FieldNode(
                        name: NameNode(value: 't'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 't'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ])),
  FRAGMENT_F,
]);

@JsonSerializable()
class QueryQ2$t extends JsonSerializable implements FragmentF {
  QueryQ2$t({this.t});

  @override
  factory QueryQ2$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$tFromJson(json);

  final QueryQ2$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2$tToJson(this);
}

@JsonSerializable()
class QueryQ2$t$t extends JsonSerializable implements FragmentF$t, FragmentF {
  QueryQ2$t$t({this.t});

  @override
  factory QueryQ2$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$tFromJson(json);

  final QueryQ2$t$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2$t$tToJson(this);
}

@JsonSerializable()
class QueryQ2$t$t$t extends JsonSerializable
    implements FragmentF$t$t, FragmentF$t {
  QueryQ2$t$t$t({this.t});

  @override
  factory QueryQ2$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$t$tFromJson(json);

  final QueryQ2$t$t$t$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryQ2$t$t$tToJson(this);
}

@JsonSerializable()
class QueryQ2$t$t$t$t extends JsonSerializable implements FragmentF$t$t {
  QueryQ2$t$t$t$t();

  @override
  factory QueryQ2$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$t$t$tFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QueryQ2$t$t$t$tToJson(this);
}

const POSSIBLE_TYPES_MAP = const {};
