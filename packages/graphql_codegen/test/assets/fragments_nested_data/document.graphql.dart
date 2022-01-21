import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF {
  FragmentF$other? get other;
}

const FRAGMENT_F = const FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
          ]))
    ]));

abstract class FragmentF$other implements FragmentF2 {
  FragmentF$other$other? get other;
}

abstract class FragmentF$other$other implements FragmentF2$other, FragmentF3 {
  FragmentF$other$other$other? get other;
}

abstract class FragmentF$other$other$other
    implements FragmentF2$other$other, FragmentF3$other, FragmentF4 {
  String? get name;
}

abstract class FragmentF2 {
  FragmentF2$other? get other;
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
          ]))
    ]));

abstract class FragmentF2$other implements FragmentF3 {
  FragmentF2$other$other? get other;
}

abstract class FragmentF2$other$other implements FragmentF3$other, FragmentF4 {
  String? get name;
}

abstract class FragmentF3 {
  FragmentF3$other? get other;
}

const FRAGMENT_F3 = const FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F4'), directives: [])
          ]))
    ]));

abstract class FragmentF3$other implements FragmentF4 {
  String? get name;
}

abstract class FragmentF4 {
  String? get name;
}

const FRAGMENT_F4 = const FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryFetch extends JsonSerializable {
  QueryFetch({this.t});

  @override
  factory QueryFetch.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchFromJson(json);

  final QueryFetch$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchToJson(this);
}

const QUERY_FETCH = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Fetch'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_F,
  FRAGMENT_F2,
  FRAGMENT_F3,
  FRAGMENT_F4,
]);

@JsonSerializable()
class QueryFetch$t extends JsonSerializable implements FragmentF {
  QueryFetch$t({this.other});

  @override
  factory QueryFetch$t.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$tFromJson(json);

  final QueryFetch$t$other? other;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$tToJson(this);
}

@JsonSerializable()
class QueryFetch$t$other extends JsonSerializable
    implements FragmentF$other, FragmentF2 {
  QueryFetch$t$other({this.other});

  @override
  factory QueryFetch$t$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$otherFromJson(json);

  final QueryFetch$t$other$other? other;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$otherToJson(this);
}

@JsonSerializable()
class QueryFetch$t$other$other extends JsonSerializable
    implements FragmentF$other$other, FragmentF2$other, FragmentF3 {
  QueryFetch$t$other$other({this.other});

  @override
  factory QueryFetch$t$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$otherFromJson(json);

  final QueryFetch$t$other$other$other? other;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$otherToJson(this);
}

@JsonSerializable()
class QueryFetch$t$other$other$other extends JsonSerializable
    implements
        FragmentF$other$other$other,
        FragmentF2$other$other,
        FragmentF3$other,
        FragmentF4 {
  QueryFetch$t$other$other$other({this.name});

  @override
  factory QueryFetch$t$other$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$other$otherFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$other$otherToJson(this);
}

const POSSIBLE_TYPES_MAP = const {};
