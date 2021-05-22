import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

abstract class FragmentFragmentA {
  String? get s;
}

const FRAGMENT_FRAGMENT_A = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentA'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'ImplementationA'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 's'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 's'),
          alias: NameNode(value: '_s'),
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

abstract class FragmentFragmentB {
  int? get i;
}

const FRAGMENT_FRAGMENT_B = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentB'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'ImplementationB'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'i'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryFetchImplementations extends JsonSerializable {
  QueryFetchImplementations({this.$interface});

  @override
  factory QueryFetchImplementations.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchImplementationsFromJson(json);

  @JsonKey(name: 'interface')
  final QueryFetchImplementations$interface? $interface;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchImplementationsToJson(this);
}

const QUERY_FETCH_IMPLEMENTATIONS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchImplementations'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'interface'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: NameNode(value: 'typename'),
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'b'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'self'),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'FragmentA'), directives: []),
                    FragmentSpreadNode(
                        name: NameNode(value: 'FragmentB'), directives: [])
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ImplementationA'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'b'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FragmentSpreadNode(
                        name: NameNode(value: 'FragmentA'), directives: [])
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ImplementationB'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'FragmentB'), directives: [])
                  ]))
            ]))
      ])),
  FRAGMENT_FRAGMENT_A,
  FRAGMENT_FRAGMENT_B,
]);

@JsonSerializable()
class QueryFetchImplementations$interface extends JsonSerializable {
  QueryFetchImplementations$interface(
      {required this.typename, this.b, required this.self});

  @override
  factory QueryFetchImplementations$interface.fromJson(
      Map<String, dynamic> json) {
    switch (json["typename"] as String) {
      case "ImplementationA":
        return QueryFetchImplementations$interface$ImplementationA.fromJson(
            json);
      case "ImplementationB":
        return QueryFetchImplementations$interface$ImplementationB.fromJson(
            json);
      default:
        return _$QueryFetchImplementations$interfaceFromJson(json);
    }
  }

  final String typename;

  final bool? b;

  final QueryFetchImplementations$interface$self self;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interfaceToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$interface$self extends JsonSerializable {
  QueryFetchImplementations$interface$self();

  @override
  factory QueryFetchImplementations$interface$self.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ImplementationA":
        return QueryFetchImplementations$interface$self$ImplementationA
            .fromJson(json);
      case "ImplementationB":
        return QueryFetchImplementations$interface$self$ImplementationB
            .fromJson(json);
      default:
        return _$QueryFetchImplementations$interface$selfFromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$selfToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$interface$self$ImplementationA
    extends QueryFetchImplementations$interface$self
    implements FragmentFragmentA {
  QueryFetchImplementations$interface$self$ImplementationA({this.s}) : super();

  @override
  factory QueryFetchImplementations$interface$self$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$self$ImplementationAFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$self$ImplementationAToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$interface$self$ImplementationB
    extends QueryFetchImplementations$interface$self
    implements FragmentFragmentB {
  QueryFetchImplementations$interface$self$ImplementationB({this.i}) : super();

  @override
  factory QueryFetchImplementations$interface$self$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$self$ImplementationBFromJson(json);

  final int? i;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$self$ImplementationBToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$interface$ImplementationA
    extends QueryFetchImplementations$interface implements FragmentFragmentA {
  QueryFetchImplementations$interface$ImplementationA(
      {this.s,
      required String typename,
      bool? b,
      required QueryFetchImplementations$interface$self self})
      : super(typename: typename, b: b, self: self);

  @override
  factory QueryFetchImplementations$interface$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$ImplementationAFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$ImplementationAToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$interface$ImplementationB
    extends QueryFetchImplementations$interface implements FragmentFragmentB {
  QueryFetchImplementations$interface$ImplementationB(
      {this.i,
      required String typename,
      bool? b,
      required QueryFetchImplementations$interface$self self})
      : super(typename: typename, b: b, self: self);

  @override
  factory QueryFetchImplementations$interface$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$ImplementationBFromJson(json);

  final int? i;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$ImplementationBToJson(this);
}
