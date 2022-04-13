import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentF {
  FragmentF({this.t});

  @override
  factory FragmentF.fromJson(Map<String, dynamic> json) =>
      _$FragmentFFromJson(json);

  final FragmentF$t? t;

  Map<String, dynamic> toJson() => _$FragmentFToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF on FragmentF {
  FragmentF copyWith({FragmentF$t? Function()? t}) =>
      FragmentF(t: t == null ? this.t : t());
}

const FRAGMENT_DEFINITION_FRAGMENT_F = const FragmentDefinitionNode(
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
const FRAGMENT_F = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF$t {
  FragmentF$t({this.t});

  @override
  factory FragmentF$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$tFromJson(json);

  final FragmentF$t$t? t;

  Map<String, dynamic> toJson() => _$FragmentF$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$t on FragmentF$t {
  FragmentF$t copyWith({FragmentF$t$t? Function()? t}) =>
      FragmentF$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$t$t {
  FragmentF$t$t({required this.$__typename});

  @override
  factory FragmentF$t$t.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$FragmentF$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$t$t on FragmentF$t$t {
  FragmentF$t$t copyWith({String? $__typename}) => FragmentF$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryQ {
  QueryQ({this.t});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$t? t;

  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ on QueryQ {
  QueryQ copyWith({QueryQ$t? Function()? t}) =>
      QueryQ(t: t == null ? this.t : t());
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
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ$t implements FragmentF {
  QueryQ$t({this.t});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final QueryQ$t$t? t;

  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ$t on QueryQ$t {
  QueryQ$t copyWith({QueryQ$t$t? Function()? t}) =>
      QueryQ$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ$t$t implements FragmentF, FragmentF$t {
  QueryQ$t$t({this.t});

  @override
  factory QueryQ$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$tFromJson(json);

  final QueryQ$t$t$t? t;

  Map<String, dynamic> toJson() => _$QueryQ$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ$t$t on QueryQ$t$t {
  QueryQ$t$t copyWith({QueryQ$t$t$t? Function()? t}) =>
      QueryQ$t$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ$t$t$t implements FragmentF$t, FragmentF$t$t {
  QueryQ$t$t$t({this.t, required this.$__typename});

  @override
  factory QueryQ$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$t$tFromJson(json);

  final QueryQ$t$t$t$t? t;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryQ$t$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    final l$$__typename = $__typename;
    return Object.hashAll([l$t, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t$t$t) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryQ$t$t$t on QueryQ$t$t$t {
  QueryQ$t$t$t copyWith({QueryQ$t$t$t$t? Function()? t, String? $__typename}) =>
      QueryQ$t$t$t(
          t: t == null ? this.t : t(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryQ$t$t$t$t implements FragmentF$t$t {
  QueryQ$t$t$t$t({required this.$__typename});

  @override
  factory QueryQ$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$t$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryQ$t$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ$t$t$t$t on QueryQ$t$t$t$t {
  QueryQ$t$t$t$t copyWith({String? $__typename}) => QueryQ$t$t$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryQ2 {
  QueryQ2({this.t});

  @override
  factory QueryQ2.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2FromJson(json);

  final QueryQ2$t? t;

  Map<String, dynamic> toJson() => _$QueryQ2ToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ2) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ2 on QueryQ2 {
  QueryQ2 copyWith({QueryQ2$t? Function()? t}) =>
      QueryQ2(t: t == null ? this.t : t());
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
  FRAGMENT_DEFINITION_FRAGMENT_F,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ2$t implements FragmentF {
  QueryQ2$t({this.t});

  @override
  factory QueryQ2$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$tFromJson(json);

  final QueryQ2$t$t? t;

  Map<String, dynamic> toJson() => _$QueryQ2$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ2$t) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ2$t on QueryQ2$t {
  QueryQ2$t copyWith({QueryQ2$t$t? Function()? t}) =>
      QueryQ2$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ2$t$t implements FragmentF$t, FragmentF {
  QueryQ2$t$t({this.t});

  @override
  factory QueryQ2$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$tFromJson(json);

  final QueryQ2$t$t$t? t;

  Map<String, dynamic> toJson() => _$QueryQ2$t$tToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ2$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ2$t$t on QueryQ2$t$t {
  QueryQ2$t$t copyWith({QueryQ2$t$t$t? Function()? t}) =>
      QueryQ2$t$t(t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ2$t$t$t implements FragmentF$t$t, FragmentF$t {
  QueryQ2$t$t$t({required this.$__typename, this.t});

  @override
  factory QueryQ2$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final QueryQ2$t$t$t$t? t;

  Map<String, dynamic> toJson() => _$QueryQ2$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$t = t;
    return Object.hashAll([l$$__typename, l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ2$t$t$t) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryQ2$t$t$t on QueryQ2$t$t$t {
  QueryQ2$t$t$t copyWith(
          {String? $__typename, QueryQ2$t$t$t$t? Function()? t}) =>
      QueryQ2$t$t$t(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          t: t == null ? this.t : t());
}

@JsonSerializable(explicitToJson: true)
class QueryQ2$t$t$t$t implements FragmentF$t$t {
  QueryQ2$t$t$t$t({required this.$__typename});

  @override
  factory QueryQ2$t$t$t$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ2$t$t$t$tFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryQ2$t$t$t$tToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ2$t$t$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ2$t$t$t$t on QueryQ2$t$t$t$t {
  QueryQ2$t$t$t$t copyWith({String? $__typename}) => QueryQ2$t$t$t$t(
      $__typename: $__typename == null ? this.$__typename : $__typename);
}

const POSSIBLE_TYPES_MAP = const {};
