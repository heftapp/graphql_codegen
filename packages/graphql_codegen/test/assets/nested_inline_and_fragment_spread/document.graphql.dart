import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.t});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final Fragment$F$t? t;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  Fragment$F copyWith({Fragment$F$t? Function()? t}) =>
      Fragment$F(t: t == null ? this.t : t());
}

const fragmentDefinitionF = FragmentDefinitionNode(
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
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F$t {
  Fragment$F$t({this.t});

  @override
  factory Fragment$F$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$tFromJson(json);

  final Fragment$F$t$t? t;

  Map<String, dynamic> toJson() => _$Fragment$F$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$t on Fragment$F$t {
  Fragment$F$t copyWith({Fragment$F$t$t? Function()? t}) =>
      Fragment$F$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$t$t {
  Fragment$F$t$t({required this.$__typename});

  @override
  factory Fragment$F$t$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$F$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$t$t on Fragment$F$t$t {
  Fragment$F$t$t copyWith({String? $__typename}) => Fragment$F$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.t});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$t? t;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  Query$Q copyWith({Query$Q$t? Function()? t}) =>
      Query$Q(t: t == null ? this.t : t());
}

const documentNodeQueryQ = DocumentNode(definitions: [
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
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$t implements Fragment$F {
  Query$Q$t({this.t});

  @override
  factory Query$Q$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$tFromJson(json);

  final Query$Q$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t on Query$Q$t {
  Query$Q$t copyWith({Query$Q$t$t? Function()? t}) =>
      Query$Q$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t implements Fragment$F, Fragment$F$t {
  Query$Q$t$t({this.t});

  @override
  factory Query$Q$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$tFromJson(json);

  final Query$Q$t$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t on Query$Q$t$t {
  Query$Q$t$t copyWith({Query$Q$t$t$t? Function()? t}) =>
      Query$Q$t$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t$t implements Fragment$F$t, Fragment$F$t$t {
  Query$Q$t$t$t({this.t, required this.$__typename});

  @override
  factory Query$Q$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$t$tFromJson(json);

  final Query$Q$t$t$t$t? t;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$t$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    final l$$__typename = $__typename;
    return Object.hashAll([l$t, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t$t on Query$Q$t$t$t {
  Query$Q$t$t$t copyWith(
          {Query$Q$t$t$t$t? Function()? t, String? $__typename}) =>
      Query$Q$t$t$t(
          t: t == null ? this.t : t(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t$t$t implements Fragment$F$t$t {
  Query$Q$t$t$t$t({required this.$__typename});

  @override
  factory Query$Q$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$t$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t$t$t on Query$Q$t$t$t$t {
  Query$Q$t$t$t$t copyWith({String? $__typename}) => Query$Q$t$t$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q2 {
  Query$Q2({this.t});

  @override
  factory Query$Q2.fromJson(Map<String, dynamic> json) =>
      _$Query$Q2FromJson(json);

  final Query$Q2$t? t;

  Map<String, dynamic> toJson() => _$Query$Q2ToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q2) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q2 on Query$Q2 {
  Query$Q2 copyWith({Query$Q2$t? Function()? t}) =>
      Query$Q2(t: t == null ? this.t : t());
}

const documentNodeQueryQ2 = DocumentNode(definitions: [
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
  fragmentDefinitionF,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q2$t implements Fragment$F {
  Query$Q2$t({this.t});

  @override
  factory Query$Q2$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q2$tFromJson(json);

  final Query$Q2$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q2$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q2$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q2$t on Query$Q2$t {
  Query$Q2$t copyWith({Query$Q2$t$t? Function()? t}) =>
      Query$Q2$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q2$t$t implements Fragment$F$t, Fragment$F {
  Query$Q2$t$t({this.t});

  @override
  factory Query$Q2$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q2$t$tFromJson(json);

  final Query$Q2$t$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q2$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q2$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q2$t$t on Query$Q2$t$t {
  Query$Q2$t$t copyWith({Query$Q2$t$t$t? Function()? t}) =>
      Query$Q2$t$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q2$t$t$t implements Fragment$F$t$t, Fragment$F$t {
  Query$Q2$t$t$t({required this.$__typename, this.t});

  @override
  factory Query$Q2$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q2$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$Q2$t$t$t$t? t;

  Map<String, dynamic> toJson() => _$Query$Q2$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q2$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q2$t$t$t on Query$Q2$t$t$t {
  Query$Q2$t$t$t copyWith(
          {String? $__typename, Query$Q2$t$t$t$t? Function()? t}) =>
      Query$Q2$t$t$t(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class Query$Q2$t$t$t$t implements Fragment$F$t$t {
  Query$Q2$t$t$t$t({required this.$__typename});

  @override
  factory Query$Q2$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q2$t$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q2$t$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q2$t$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q2$t$t$t$t on Query$Q2$t$t$t$t {
  Query$Q2$t$t$t$t copyWith({String? $__typename}) => Query$Q2$t$t$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

const possibleTypesMap = {};
