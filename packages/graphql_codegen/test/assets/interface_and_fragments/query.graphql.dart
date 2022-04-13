import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentFragmentA {
  FragmentFragmentA({this.s, this.$_s});

  @override
  factory FragmentFragmentA.fromJson(Map<String, dynamic> json) =>
      _$FragmentFragmentAFromJson(json);

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() => _$FragmentFragmentAToJson(this);
  int get hashCode {
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([l$s, l$$_s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentFragmentA) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) return false;
    return true;
  }
}

extension UtilityExtensionFragmentFragmentA on FragmentFragmentA {
  FragmentFragmentA copyWith(
          {String? Function()? s, String? Function()? $_s}) =>
      FragmentFragmentA(
          s: s == null ? this.s : s(), $_s: $_s == null ? this.$_s : $_s());
}

const FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A = const FragmentDefinitionNode(
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
const FRAGMENT_FRAGMENT_A = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A,
]);

@JsonSerializable(explicitToJson: true)
class FragmentFragmentB {
  FragmentFragmentB({this.i});

  @override
  factory FragmentFragmentB.fromJson(Map<String, dynamic> json) =>
      _$FragmentFragmentBFromJson(json);

  final int? i;

  Map<String, dynamic> toJson() => _$FragmentFragmentBToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentFragmentB) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

extension UtilityExtensionFragmentFragmentB on FragmentFragmentB {
  FragmentFragmentB copyWith({int? Function()? i}) =>
      FragmentFragmentB(i: i == null ? this.i : i());
}

const FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_B = const FragmentDefinitionNode(
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
const FRAGMENT_FRAGMENT_B = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_B,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations {
  QueryFetchImplementations({this.$interface});

  @override
  factory QueryFetchImplementations.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchImplementationsFromJson(json);

  @JsonKey(name: 'interface')
  final QueryFetchImplementations$interface? $interface;

  Map<String, dynamic> toJson() => _$QueryFetchImplementationsToJson(this);
  int get hashCode {
    final l$$interface = $interface;
    return Object.hashAll([l$$interface]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations) ||
        runtimeType != other.runtimeType) return false;
    final l$$interface = $interface;
    final lOther$$interface = other.$interface;
    if (l$$interface != lOther$$interface) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations
    on QueryFetchImplementations {
  QueryFetchImplementations copyWith(
          {QueryFetchImplementations$interface? Function()? $interface}) =>
      QueryFetchImplementations(
          $interface: $interface == null ? this.$interface : $interface());
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
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A,
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_B,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface {
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

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interfaceToJson(this);
  int get hashCode {
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    return Object.hashAll([l$typename, l$b, l$self]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface) ||
        runtimeType != other.runtimeType) return false;
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface
    on QueryFetchImplementations$interface {
  QueryFetchImplementations$interface copyWith(
          {String? typename,
          bool? Function()? b,
          QueryFetchImplementations$interface$self? self}) =>
      QueryFetchImplementations$interface(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self);
}

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface$self {
  QueryFetchImplementations$interface$self({required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$selfToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface$self) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface$self
    on QueryFetchImplementations$interface$self {
  QueryFetchImplementations$interface$self copyWith({String? $__typename}) =>
      QueryFetchImplementations$interface$self(
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface$self$ImplementationA
    implements FragmentFragmentA, QueryFetchImplementations$interface$self {
  QueryFetchImplementations$interface$self$ImplementationA(
      {required this.$__typename, this.s, this.$_s});

  @override
  factory QueryFetchImplementations$interface$self$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$self$ImplementationAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$self$ImplementationAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([l$$__typename, l$s, l$$_s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface$self$ImplementationA) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface$self$ImplementationA
    on QueryFetchImplementations$interface$self$ImplementationA {
  QueryFetchImplementations$interface$self$ImplementationA copyWith(
          {String? $__typename,
          String? Function()? s,
          String? Function()? $_s}) =>
      QueryFetchImplementations$interface$self$ImplementationA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          s: s == null ? this.s : s(),
          $_s: $_s == null ? this.$_s : $_s());
}

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface$self$ImplementationB
    implements FragmentFragmentB, QueryFetchImplementations$interface$self {
  QueryFetchImplementations$interface$self$ImplementationB(
      {required this.$__typename, this.i});

  @override
  factory QueryFetchImplementations$interface$self$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$self$ImplementationBFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? i;

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$self$ImplementationBToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$i = i;
    return Object.hashAll([l$$__typename, l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface$self$ImplementationB) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface$self$ImplementationB
    on QueryFetchImplementations$interface$self$ImplementationB {
  QueryFetchImplementations$interface$self$ImplementationB copyWith(
          {String? $__typename, int? Function()? i}) =>
      QueryFetchImplementations$interface$self$ImplementationB(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          i: i == null ? this.i : i());
}

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface$ImplementationA
    implements FragmentFragmentA, QueryFetchImplementations$interface {
  QueryFetchImplementations$interface$ImplementationA(
      {required this.typename, this.b, required this.self, this.s, this.$_s});

  @override
  factory QueryFetchImplementations$interface$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$ImplementationAFromJson(json);

  final String typename;

  final bool? b;

  final QueryFetchImplementations$interface$self self;

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$ImplementationAToJson(this);
  int get hashCode {
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([l$typename, l$b, l$self, l$s, l$$_s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface$ImplementationA) ||
        runtimeType != other.runtimeType) return false;
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface$ImplementationA
    on QueryFetchImplementations$interface$ImplementationA {
  QueryFetchImplementations$interface$ImplementationA copyWith(
          {String? typename,
          bool? Function()? b,
          QueryFetchImplementations$interface$self? self,
          String? Function()? s,
          String? Function()? $_s}) =>
      QueryFetchImplementations$interface$ImplementationA(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self,
          s: s == null ? this.s : s(),
          $_s: $_s == null ? this.$_s : $_s());
}

@JsonSerializable(explicitToJson: true)
class QueryFetchImplementations$interface$ImplementationB
    implements FragmentFragmentB, QueryFetchImplementations$interface {
  QueryFetchImplementations$interface$ImplementationB(
      {required this.typename, this.b, required this.self, this.i});

  @override
  factory QueryFetchImplementations$interface$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$interface$ImplementationBFromJson(json);

  final String typename;

  final bool? b;

  final QueryFetchImplementations$interface$self self;

  final int? i;

  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$interface$ImplementationBToJson(this);
  int get hashCode {
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    final l$i = i;
    return Object.hashAll([l$typename, l$b, l$self, l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchImplementations$interface$ImplementationB) ||
        runtimeType != other.runtimeType) return false;
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchImplementations$interface$ImplementationB
    on QueryFetchImplementations$interface$ImplementationB {
  QueryFetchImplementations$interface$ImplementationB copyWith(
          {String? typename,
          bool? Function()? b,
          QueryFetchImplementations$interface$self? self,
          int? Function()? i}) =>
      QueryFetchImplementations$interface$ImplementationB(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self,
          i: i == null ? this.i : i());
}
