import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$FragmentA implements Fragment$FragmentI {
  Fragment$FragmentA({required this.$__typename, this.value, this.name});

  @override
  factory Fragment$FragmentA.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FragmentAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? value;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$FragmentAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$value = value;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$value, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$FragmentA) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$FragmentA on Fragment$FragmentA {
  Fragment$FragmentA copyWith(
          {String? $__typename,
          String? Function()? value,
          String? Function()? name}) =>
      Fragment$FragmentA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          value: value == null ? this.value : value(),
          name: name == null ? this.name : name());
}

const fragmentDefinitionFragmentA = FragmentDefinitionNode(
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
const documentNodeFragmentFragmentA = DocumentNode(definitions: [
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentI,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$FragmentI {
  Fragment$FragmentI({required this.$__typename, this.name});

  @override
  factory Fragment$FragmentI.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FragmentIFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$FragmentIToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$FragmentI) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$FragmentI on Fragment$FragmentI {
  Fragment$FragmentI copyWith(
          {String? $__typename, String? Function()? name}) =>
      Fragment$FragmentI(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

const fragmentDefinitionFragmentI = FragmentDefinitionNode(
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
const documentNodeFragmentFragmentI = DocumentNode(definitions: [
  fragmentDefinitionFragmentI,
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchStuff {
  Query$FetchStuff({required this.$__typename, this.field});

  @override
  factory Query$FetchStuff.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchStuffFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$FetchStuff$field? field;

  Map<String, dynamic> toJson() => _$Query$FetchStuffToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$field = field;
    return Object.hashAll([l$$__typename, l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchStuff) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchStuff on Query$FetchStuff {
  Query$FetchStuff copyWith(
          {String? $__typename, Query$FetchStuff$field? Function()? field}) =>
      Query$FetchStuff(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          field: field == null ? this.field : field());
}

const documentNodeQueryFetchStuff = DocumentNode(definitions: [
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
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentI,
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchStuff$field {
  Query$FetchStuff$field({required this.$__typename, this.name});

  @override
  factory Query$FetchStuff$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return Query$FetchStuff$field$$FieldA.fromJson(json);
      default:
        return _$Query$FetchStuff$fieldFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() => _$Query$FetchStuff$fieldToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchStuff$field) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchStuff$field on Query$FetchStuff$field {
  Query$FetchStuff$field copyWith(
          {String? $__typename, String? Function()? name}) =>
      Query$FetchStuff$field(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchStuff$field$$FieldA
    implements Fragment$FragmentA, Fragment$FragmentI, Query$FetchStuff$field {
  Query$FetchStuff$field$$FieldA(
      {required this.$__typename, this.name, this.value});

  @override
  factory Query$FetchStuff$field$$FieldA.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchStuff$field$$FieldAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  final String? value;

  Map<String, dynamic> toJson() => _$Query$FetchStuff$field$$FieldAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$value = value;
    return Object.hashAll([l$$__typename, l$name, l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchStuff$field$$FieldA) ||
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

extension UtilityExtension$Query$FetchStuff$field$$FieldA
    on Query$FetchStuff$field$$FieldA {
  Query$FetchStuff$field$$FieldA copyWith(
          {String? $__typename,
          String? Function()? name,
          String? Function()? value}) =>
      Query$FetchStuff$field$$FieldA(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          name: name == null ? this.name : name(),
          value: value == null ? this.value : value());
}

const possibleTypesMap = {
  'IField': {'FieldA'}
};
