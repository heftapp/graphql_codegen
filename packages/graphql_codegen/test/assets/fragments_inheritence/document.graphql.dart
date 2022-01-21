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
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
            InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                        name: NameNode(value: 'T1'), isNonNull: false)),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'b'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));

abstract class FragmentF$other implements FragmentF2 {
  FragmentF$other$other? get other;
}

abstract class FragmentF$other$other implements FragmentF2$other {
  String? get name;
}

abstract class FragmentF$other$T1 extends FragmentF$other {
  bool? get b;
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
            FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));

abstract class FragmentF2$other {
  String? get name;
}

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
    implements FragmentF$other$other, FragmentF2$other {
  QueryFetch$t$other$other({this.name});

  @override
  factory QueryFetch$t$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$otherFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$otherToJson(this);
}

@JsonSerializable()
class QueryFetch$t$other$T1 extends QueryFetch$t$other
    implements FragmentF$other$T1 {
  QueryFetch$t$other$T1({this.b, QueryFetch$t$other$other? other})
      : super(other: other);

  @override
  factory QueryFetch$t$other$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$T1FromJson(json);

  final bool? b;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$T1ToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'Type': {'T1'}
};
