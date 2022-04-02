import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentFragmentA extends JsonSerializable implements FragmentFragmentI {
  FragmentFragmentA({required this.$__typename, this.value, this.name});

  @override
  factory FragmentFragmentA.fromJson(Map<String, dynamic> json) =>
      _$FragmentFragmentAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? value;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentFragmentAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$value = value;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$value, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentFragmentA) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentFragmentA on FragmentFragmentA {
  FragmentFragmentA copyWith(
          {String? $__typename,
          String? Function()? value,
          String? Function()? name}) =>
      FragmentFragmentA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          value: value == null ? this.value : value(),
          name: name == null ? this.name : name());
}

const FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A = const FragmentDefinitionNode(
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
const FRAGMENT_FRAGMENT_A = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A,
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_I,
]);

@JsonSerializable(explicitToJson: true)
class FragmentFragmentI extends JsonSerializable {
  FragmentFragmentI({required this.$__typename, this.name});

  @override
  factory FragmentFragmentI.fromJson(Map<String, dynamic> json) =>
      _$FragmentFragmentIFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentFragmentIToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentFragmentI) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentFragmentI on FragmentFragmentI {
  FragmentFragmentI copyWith({String? $__typename, String? Function()? name}) =>
      FragmentFragmentI(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

const FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_I = const FragmentDefinitionNode(
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
const FRAGMENT_FRAGMENT_I = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_I,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetchStuff extends JsonSerializable {
  QueryFetchStuff({required this.$__typename, this.field});

  @override
  factory QueryFetchStuff.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuffFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final QueryFetchStuff$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuffToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$field = field;
    return Object.hashAll([l$$__typename, l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchStuff on QueryFetchStuff {
  QueryFetchStuff copyWith(
          {String? $__typename, QueryFetchStuff$field? Function()? field}) =>
      QueryFetchStuff(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          field: field == null ? this.field : field());
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
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_A,
  FRAGMENT_DEFINITION_FRAGMENT_FRAGMENT_I,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetchStuff$field extends JsonSerializable {
  QueryFetchStuff$field({required this.$__typename, this.name});

  @override
  factory QueryFetchStuff$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return QueryFetchStuff$field$FieldA.fromJson(json);
      default:
        return _$QueryFetchStuff$fieldFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$fieldToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff$field) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchStuff$field on QueryFetchStuff$field {
  QueryFetchStuff$field copyWith(
          {String? $__typename, String? Function()? name}) =>
      QueryFetchStuff$field(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class QueryFetchStuff$field$FieldA extends JsonSerializable
    implements FragmentFragmentA, FragmentFragmentI, QueryFetchStuff$field {
  QueryFetchStuff$field$FieldA(
      {required this.$__typename, this.name, this.value});

  @override
  factory QueryFetchStuff$field$FieldA.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuff$field$FieldAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final String? value;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$field$FieldAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$value = value;
    return Object.hashAll([l$$__typename, l$name, l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff$field$FieldA) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchStuff$field$FieldA
    on QueryFetchStuff$field$FieldA {
  QueryFetchStuff$field$FieldA copyWith(
          {String? $__typename,
          String? Function()? name,
          String? Function()? value}) =>
      QueryFetchStuff$field$FieldA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          value: value == null ? this.value : value());
}

const POSSIBLE_TYPES_MAP = const {
  'IField': {'FieldA'}
};
