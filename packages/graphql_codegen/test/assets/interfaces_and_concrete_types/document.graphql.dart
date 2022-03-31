import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class QueryFetchI extends JsonSerializable {
  QueryFetchI({this.i1, required this.$__typename});

  @override
  factory QueryFetchI.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchIFromJson(json);

  final QueryFetchI$i1? i1;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchIToJson(this);
  int get hashCode {
    final l$i1 = i1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$i1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI) || runtimeType != other.runtimeType)
      return false;
    final l$i1 = i1;
    final lOther$i1 = other.i1;
    if (l$i1 != lOther$i1) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_FETCH_I = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchI'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'i1'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'i2'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'field'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'T1'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'i2c'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'field'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'age'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'i2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'field'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'T2'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'field'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'age'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);

@JsonSerializable()
class QueryFetchI$i1 extends JsonSerializable {
  QueryFetchI$i1({this.i2, required this.$__typename});

  @override
  factory QueryFetchI$i1.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return QueryFetchI$i1$T1.fromJson(json);
      default:
        return _$QueryFetchI$i1FromJson(json);
    }
  }

  final QueryFetchI$i1$i2? i2;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1ToJson(this);
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$i2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1) || runtimeType != other.runtimeType)
      return false;
    final l$i2 = i2;
    final lOther$i2 = other.i2;
    if (l$i2 != lOther$i2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$i2 extends JsonSerializable {
  QueryFetchI$i1$i2({this.field, required this.$__typename});

  @override
  factory QueryFetchI$i1$i2.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$i2FromJson(json);

  final QueryFetchI$i1$i2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$i2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$i2) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$i2$field extends JsonSerializable {
  QueryFetchI$i1$i2$field({this.name, required this.$__typename});

  @override
  factory QueryFetchI$i1$i2$field.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$i2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$i2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$i2$field) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1 extends JsonSerializable implements QueryFetchI$i1 {
  QueryFetchI$i1$T1({this.i2, required this.$__typename, this.i2c});

  @override
  factory QueryFetchI$i1$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1FromJson(json);

  final QueryFetchI$i1$T1$i2? i2;

  @JsonKey(name: '__typename')
  final String $__typename;

  final QueryFetchI$i1$T1$i2c? i2c;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1ToJson(this);
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    final l$i2c = i2c;
    return Object.hashAll([l$i2, l$$__typename, l$i2c]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1) || runtimeType != other.runtimeType)
      return false;
    final l$i2 = i2;
    final lOther$i2 = other.i2;
    if (l$i2 != lOther$i2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$i2c = i2c;
    final lOther$i2c = other.i2c;
    if (l$i2c != lOther$i2c) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2c extends JsonSerializable {
  QueryFetchI$i1$T1$i2c({this.field, required this.$__typename});

  @override
  factory QueryFetchI$i1$T1$i2c.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1$i2cFromJson(json);

  final QueryFetchI$i1$T1$i2c$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2cToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2c) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2c$field extends JsonSerializable {
  QueryFetchI$i1$T1$i2c$field({this.age, required this.$__typename});

  @override
  factory QueryFetchI$i1$T1$i2c$field.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1$i2c$fieldFromJson(json);

  final int? age;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2c$fieldToJson(this);
  int get hashCode {
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll([l$age, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2c$field) ||
        runtimeType != other.runtimeType) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2 extends JsonSerializable
    implements QueryFetchI$i1$i2 {
  QueryFetchI$i1$T1$i2({this.field, required this.$__typename});

  @override
  factory QueryFetchI$i1$T1$i2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T2":
        return QueryFetchI$i1$T1$i2$T2.fromJson(json);
      default:
        return _$QueryFetchI$i1$T1$i2FromJson(json);
    }
  }

  final QueryFetchI$i1$T1$i2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2$field extends JsonSerializable
    implements QueryFetchI$i1$i2$field {
  QueryFetchI$i1$T1$i2$field({this.name, required this.$__typename});

  @override
  factory QueryFetchI$i1$T1$i2$field.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1$i2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2$field) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2$T2 extends JsonSerializable
    implements QueryFetchI$i1$T1$i2 {
  QueryFetchI$i1$T1$i2$T2({this.field, required this.$__typename});

  @override
  factory QueryFetchI$i1$T1$i2$T2.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1$i2$T2FromJson(json);

  final QueryFetchI$i1$T1$i2$T2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2$T2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2$T2) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchI$i1$T1$i2$T2$field extends JsonSerializable
    implements QueryFetchI$i1$T1$i2$field {
  QueryFetchI$i1$T1$i2$T2$field(
      {this.name, required this.$__typename, this.age});

  @override
  factory QueryFetchI$i1$T1$i2$T2$field.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchI$i1$T1$i2$T2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? age;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchI$i1$T1$i2$T2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$age = age;
    return Object.hashAll([l$name, l$$__typename, l$age]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchI$i1$T1$i2$T2$field) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {
  'IField': {'TField'},
  'I1': {'T1'},
  'I2': {'T2'}
};
