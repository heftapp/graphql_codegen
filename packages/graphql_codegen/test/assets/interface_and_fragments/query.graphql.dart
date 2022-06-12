import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$FragmentA {
  Fragment$FragmentA({this.s, this.$_s});

  @override
  factory Fragment$FragmentA.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FragmentAFromJson(json);

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() => _$Fragment$FragmentAToJson(this);
  int get hashCode {
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([l$s, l$$_s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$FragmentA) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$FragmentA on Fragment$FragmentA {
  Fragment$FragmentA copyWith(
          {String? Function()? s, String? Function()? $_s}) =>
      Fragment$FragmentA(
          s: s == null ? this.s : s(), $_s: $_s == null ? this.$_s : $_s());
}

const fragmentDefinitionFragmentA = FragmentDefinitionNode(
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
const documentNodeFragmentFragmentA = DocumentNode(definitions: [
  fragmentDefinitionFragmentA,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$FragmentB {
  Fragment$FragmentB({this.i});

  @override
  factory Fragment$FragmentB.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FragmentBFromJson(json);

  final int? i;

  Map<String, dynamic> toJson() => _$Fragment$FragmentBToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$FragmentB) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$FragmentB on Fragment$FragmentB {
  Fragment$FragmentB copyWith({int? Function()? i}) =>
      Fragment$FragmentB(i: i == null ? this.i : i());
}

const fragmentDefinitionFragmentB = FragmentDefinitionNode(
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
const documentNodeFragmentFragmentB = DocumentNode(definitions: [
  fragmentDefinitionFragmentB,
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations {
  Query$FetchImplementations({this.$interface});

  @override
  factory Query$FetchImplementations.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchImplementationsFromJson(json);

  @JsonKey(name: 'interface')
  final Query$FetchImplementations$interface? $interface;

  Map<String, dynamic> toJson() => _$Query$FetchImplementationsToJson(this);
  int get hashCode {
    final l$$interface = $interface;
    return Object.hashAll([l$$interface]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchImplementations) ||
        runtimeType != other.runtimeType) return false;
    final l$$interface = $interface;
    final lOther$$interface = other.$interface;
    if (l$$interface != lOther$$interface) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations
    on Query$FetchImplementations {
  Query$FetchImplementations copyWith(
          {Query$FetchImplementations$interface? Function()? $interface}) =>
      Query$FetchImplementations(
          $interface: $interface == null ? this.$interface : $interface());
}

const documentNodeQueryFetchImplementations = DocumentNode(definitions: [
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
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentB,
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface {
  Query$FetchImplementations$interface(
      {required this.typename, this.b, required this.self});

  @override
  factory Query$FetchImplementations$interface.fromJson(
      Map<String, dynamic> json) {
    switch (json["typename"] as String) {
      case "ImplementationA":
        return Query$FetchImplementations$interface$$ImplementationA.fromJson(
            json);
      case "ImplementationB":
        return Query$FetchImplementations$interface$$ImplementationB.fromJson(
            json);
      default:
        return _$Query$FetchImplementations$interfaceFromJson(json);
    }
  }

  final String typename;

  final bool? b;

  final Query$FetchImplementations$interface$self self;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interfaceToJson(this);
  int get hashCode {
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    return Object.hashAll([l$typename, l$b, l$self]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchImplementations$interface) ||
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

extension UtilityExtension$Query$FetchImplementations$interface
    on Query$FetchImplementations$interface {
  Query$FetchImplementations$interface copyWith(
          {String? typename,
          bool? Function()? b,
          Query$FetchImplementations$interface$self? self}) =>
      Query$FetchImplementations$interface(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self({required this.$__typename});

  @override
  factory Query$FetchImplementations$interface$self.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ImplementationA":
        return Query$FetchImplementations$interface$self$$ImplementationA
            .fromJson(json);
      case "ImplementationB":
        return Query$FetchImplementations$interface$self$$ImplementationB
            .fromJson(json);
      default:
        return _$Query$FetchImplementations$interface$selfFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interface$selfToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchImplementations$interface$self) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$self
    on Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self copyWith({String? $__typename}) =>
      Query$FetchImplementations$interface$self(
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface$self$$ImplementationA
    implements Fragment$FragmentA, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self$$ImplementationA(
      {required this.$__typename, this.s, this.$_s});

  @override
  factory Query$FetchImplementations$interface$self$$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchImplementations$interface$self$$ImplementationAFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interface$self$$ImplementationAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([l$$__typename, l$s, l$$_s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$FetchImplementations$interface$self$$ImplementationA) ||
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

extension UtilityExtension$Query$FetchImplementations$interface$self$$ImplementationA
    on Query$FetchImplementations$interface$self$$ImplementationA {
  Query$FetchImplementations$interface$self$$ImplementationA copyWith(
          {String? $__typename,
          String? Function()? s,
          String? Function()? $_s}) =>
      Query$FetchImplementations$interface$self$$ImplementationA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          s: s == null ? this.s : s(),
          $_s: $_s == null ? this.$_s : $_s());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface$self$$ImplementationB
    implements Fragment$FragmentB, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self$$ImplementationB(
      {required this.$__typename, this.i});

  @override
  factory Query$FetchImplementations$interface$self$$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchImplementations$interface$self$$ImplementationBFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? i;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interface$self$$ImplementationBToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$i = i;
    return Object.hashAll([l$$__typename, l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$FetchImplementations$interface$self$$ImplementationB) ||
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

extension UtilityExtension$Query$FetchImplementations$interface$self$$ImplementationB
    on Query$FetchImplementations$interface$self$$ImplementationB {
  Query$FetchImplementations$interface$self$$ImplementationB copyWith(
          {String? $__typename, int? Function()? i}) =>
      Query$FetchImplementations$interface$self$$ImplementationB(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          i: i == null ? this.i : i());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface$$ImplementationA
    implements Fragment$FragmentA, Query$FetchImplementations$interface {
  Query$FetchImplementations$interface$$ImplementationA(
      {required this.typename, this.b, required this.self, this.s, this.$_s});

  @override
  factory Query$FetchImplementations$interface$$ImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchImplementations$interface$$ImplementationAFromJson(json);

  final String typename;

  final bool? b;

  final Query$FetchImplementations$interface$self self;

  final String? s;

  @JsonKey(name: '_s')
  final String? $_s;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interface$$ImplementationAToJson(this);
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
    if (!(other is Query$FetchImplementations$interface$$ImplementationA) ||
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

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationA
    on Query$FetchImplementations$interface$$ImplementationA {
  Query$FetchImplementations$interface$$ImplementationA copyWith(
          {String? typename,
          bool? Function()? b,
          Query$FetchImplementations$interface$self? self,
          String? Function()? s,
          String? Function()? $_s}) =>
      Query$FetchImplementations$interface$$ImplementationA(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self,
          s: s == null ? this.s : s(),
          $_s: $_s == null ? this.$_s : $_s());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchImplementations$interface$$ImplementationB
    implements Fragment$FragmentB, Query$FetchImplementations$interface {
  Query$FetchImplementations$interface$$ImplementationB(
      {required this.typename, this.b, required this.self, this.i});

  @override
  factory Query$FetchImplementations$interface$$ImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchImplementations$interface$$ImplementationBFromJson(json);

  final String typename;

  final bool? b;

  final Query$FetchImplementations$interface$self self;

  final int? i;

  Map<String, dynamic> toJson() =>
      _$Query$FetchImplementations$interface$$ImplementationBToJson(this);
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
    if (!(other is Query$FetchImplementations$interface$$ImplementationB) ||
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

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationB
    on Query$FetchImplementations$interface$$ImplementationB {
  Query$FetchImplementations$interface$$ImplementationB copyWith(
          {String? typename,
          bool? Function()? b,
          Query$FetchImplementations$interface$self? self,
          int? Function()? i}) =>
      Query$FetchImplementations$interface$$ImplementationB(
          typename: typename == null ? this.typename : typename,
          b: b == null ? this.b : b(),
          self: self == null ? this.self : self,
          i: i == null ? this.i : i());
}
