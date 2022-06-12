import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchI {
  Query$FetchI({this.i1, required this.$__typename});

  @override
  factory Query$FetchI.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchIFromJson(json);

  final Query$FetchI$i1? i1;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchIToJson(this);
  int get hashCode {
    final l$i1 = i1;
    final l$$__typename = $__typename;
    return Object.hashAll([l$i1, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI on Query$FetchI {
  Query$FetchI copyWith(
          {Query$FetchI$i1? Function()? i1, String? $__typename}) =>
      Query$FetchI(
          i1: i1 == null ? this.i1 : i1(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQueryFetchI = DocumentNode(definitions: [
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

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1 {
  Query$FetchI$i1({this.i2, required this.$__typename});

  @override
  factory Query$FetchI$i1.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return Query$FetchI$i1$$T1.fromJson(json);
      default:
        return _$Query$FetchI$i1FromJson(json);
    }
  }

  final Query$FetchI$i1$i2? i2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1ToJson(this);
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$i2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI$i1 on Query$FetchI$i1 {
  Query$FetchI$i1 copyWith(
          {Query$FetchI$i1$i2? Function()? i2, String? $__typename}) =>
      Query$FetchI$i1(
          i2: i2 == null ? this.i2 : i2(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$i2 {
  Query$FetchI$i1$i2({this.field, required this.$__typename});

  @override
  factory Query$FetchI$i1$i2.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$i2FromJson(json);

  final Query$FetchI$i1$i2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$i2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$i2) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI$i1$i2 on Query$FetchI$i1$i2 {
  Query$FetchI$i1$i2 copyWith(
          {Query$FetchI$i1$i2$field? Function()? field, String? $__typename}) =>
      Query$FetchI$i1$i2(
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$i2$field {
  Query$FetchI$i1$i2$field({this.name, required this.$__typename});

  @override
  factory Query$FetchI$i1$i2$field.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$i2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$i2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$i2$field) ||
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

extension UtilityExtension$Query$FetchI$i1$i2$field
    on Query$FetchI$i1$i2$field {
  Query$FetchI$i1$i2$field copyWith(
          {String? Function()? name, String? $__typename}) =>
      Query$FetchI$i1$i2$field(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1 implements Query$FetchI$i1 {
  Query$FetchI$i1$$T1({this.i2, required this.$__typename, this.i2c});

  @override
  factory Query$FetchI$i1$$T1.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1FromJson(json);

  final Query$FetchI$i1$$T1$i2? i2;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$FetchI$i1$$T1$i2c? i2c;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1ToJson(this);
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    final l$i2c = i2c;
    return Object.hashAll([l$i2, l$$__typename, l$i2c]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI$i1$$T1 on Query$FetchI$i1$$T1 {
  Query$FetchI$i1$$T1 copyWith(
          {Query$FetchI$i1$$T1$i2? Function()? i2,
          String? $__typename,
          Query$FetchI$i1$$T1$i2c? Function()? i2c}) =>
      Query$FetchI$i1$$T1(
          i2: i2 == null ? this.i2 : i2(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          i2c: i2c == null ? this.i2c : i2c());
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2c {
  Query$FetchI$i1$$T1$i2c({this.field, required this.$__typename});

  @override
  factory Query$FetchI$i1$$T1$i2c.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1$i2cFromJson(json);

  final Query$FetchI$i1$$T1$i2c$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1$i2cToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2c) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2c on Query$FetchI$i1$$T1$i2c {
  Query$FetchI$i1$$T1$i2c copyWith(
          {Query$FetchI$i1$$T1$i2c$field? Function()? field,
          String? $__typename}) =>
      Query$FetchI$i1$$T1$i2c(
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2c$field {
  Query$FetchI$i1$$T1$i2c$field({this.age, required this.$__typename});

  @override
  factory Query$FetchI$i1$$T1$i2c$field.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1$i2c$fieldFromJson(json);

  final int? age;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1$i2c$fieldToJson(this);
  int get hashCode {
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll([l$age, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2c$field) ||
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2c$field
    on Query$FetchI$i1$$T1$i2c$field {
  Query$FetchI$i1$$T1$i2c$field copyWith(
          {int? Function()? age, String? $__typename}) =>
      Query$FetchI$i1$$T1$i2c$field(
          age: age == null ? this.age : age(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2 implements Query$FetchI$i1$i2 {
  Query$FetchI$i1$$T1$i2({this.field, required this.$__typename});

  @override
  factory Query$FetchI$i1$$T1$i2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T2":
        return Query$FetchI$i1$$T1$i2$$T2.fromJson(json);
      default:
        return _$Query$FetchI$i1$$T1$i2FromJson(json);
    }
  }

  final Query$FetchI$i1$$T1$i2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1$i2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2 on Query$FetchI$i1$$T1$i2 {
  Query$FetchI$i1$$T1$i2 copyWith(
          {Query$FetchI$i1$$T1$i2$field? Function()? field,
          String? $__typename}) =>
      Query$FetchI$i1$$T1$i2(
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2$field implements Query$FetchI$i1$i2$field {
  Query$FetchI$i1$$T1$i2$field({this.name, required this.$__typename});

  @override
  factory Query$FetchI$i1$$T1$i2$field.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1$i2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1$i2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2$field) ||
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2$field
    on Query$FetchI$i1$$T1$i2$field {
  Query$FetchI$i1$$T1$i2$field copyWith(
          {String? Function()? name, String? $__typename}) =>
      Query$FetchI$i1$$T1$i2$field(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2$$T2 implements Query$FetchI$i1$$T1$i2 {
  Query$FetchI$i1$$T1$i2$$T2({this.field, required this.$__typename});

  @override
  factory Query$FetchI$i1$$T1$i2$$T2.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1$i2$$T2FromJson(json);

  final Query$FetchI$i1$$T1$i2$$T2$field? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchI$i1$$T1$i2$$T2ToJson(this);
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2$$T2) ||
        runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchI$i1$$T1$i2$$T2
    on Query$FetchI$i1$$T1$i2$$T2 {
  Query$FetchI$i1$$T1$i2$$T2 copyWith(
          {Query$FetchI$i1$$T1$i2$$T2$field? Function()? field,
          String? $__typename}) =>
      Query$FetchI$i1$$T1$i2$$T2(
          field: field == null ? this.field : field(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchI$i1$$T1$i2$$T2$field implements Query$FetchI$i1$$T1$i2$field {
  Query$FetchI$i1$$T1$i2$$T2$field(
      {this.name, required this.$__typename, this.age});

  @override
  factory Query$FetchI$i1$$T1$i2$$T2$field.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchI$i1$$T1$i2$$T2$fieldFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? age;

  Map<String, dynamic> toJson() =>
      _$Query$FetchI$i1$$T1$i2$$T2$fieldToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$age = age;
    return Object.hashAll([l$name, l$$__typename, l$age]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchI$i1$$T1$i2$$T2$field) ||
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2$$T2$field
    on Query$FetchI$i1$$T1$i2$$T2$field {
  Query$FetchI$i1$$T1$i2$$T2$field copyWith(
          {String? Function()? name,
          String? $__typename,
          int? Function()? age}) =>
      Query$FetchI$i1$$T1$i2$$T2$field(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          age: age == null ? this.age : age());
}

const possibleTypesMap = {
  'IField': {'TField'},
  'I1': {'T1'},
  'I2': {'T2'}
};
