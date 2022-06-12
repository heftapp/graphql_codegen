import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$T1 {
  Fragment$T1({this.t});

  @override
  factory Fragment$T1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$T1FromJson(json);

  final Fragment$T1$t? t;

  Map<String, dynamic> toJson() => _$Fragment$T1ToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$T1) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$T1 on Fragment$T1 {
  Fragment$T1 copyWith({Fragment$T1$t? Function()? t}) =>
      Fragment$T1(t: t == null ? this.t : t());
}

const fragmentDefinitionT1 = FragmentDefinitionNode(
    name: NameNode(value: 'T1'),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const documentNodeFragmentT1 = DocumentNode(definitions: [
  fragmentDefinitionT1,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$T1$t {
  Fragment$T1$t({this.name});

  @override
  factory Fragment$T1$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$T1$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$T1$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$T1$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$T1$t on Fragment$T1$t {
  Fragment$T1$t copyWith({String? Function()? name}) =>
      Fragment$T1$t(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$T2 {
  Fragment$T2({this.t, this.name});

  @override
  factory Fragment$T2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$T2FromJson(json);

  final Fragment$T2$t? t;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$T2ToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$T2) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$T2 on Fragment$T2 {
  Fragment$T2 copyWith(
          {Fragment$T2$t? Function()? t, String? Function()? name}) =>
      Fragment$T2(
          t: t == null ? this.t : t(), name: name == null ? this.name : name());
}

const fragmentDefinitionT2 = FragmentDefinitionNode(
    name: NameNode(value: 'T2'),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentT2 = DocumentNode(definitions: [
  fragmentDefinitionT2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$T2$t {
  Fragment$T2$t({this.name});

  @override
  factory Fragment$T2$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$T2$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$T2$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$T2$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$T2$t on Fragment$T2$t {
  Fragment$T2$t copyWith({String? Function()? name}) =>
      Fragment$T2$t(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$TC implements Fragment$T1, Fragment$T2 {
  Fragment$TC({this.t, this.name});

  @override
  factory Fragment$TC.fromJson(Map<String, dynamic> json) =>
      _$Fragment$TCFromJson(json);

  final Fragment$TC$t? t;

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$TCToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$TC) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$TC on Fragment$TC {
  Fragment$TC copyWith(
          {Fragment$TC$t? Function()? t, String? Function()? name}) =>
      Fragment$TC(
          t: t == null ? this.t : t(), name: name == null ? this.name : name());
}

const fragmentDefinitionTC = FragmentDefinitionNode(
    name: NameNode(value: 'TC'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'T1'), directives: []),
      FragmentSpreadNode(name: NameNode(value: 'T2'), directives: [])
    ]));
const documentNodeFragmentTC = DocumentNode(definitions: [
  fragmentDefinitionTC,
  fragmentDefinitionT1,
  fragmentDefinitionT2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$TC$t implements Fragment$T1$t, Fragment$T2$t {
  Fragment$TC$t({this.name});

  @override
  factory Fragment$TC$t.fromJson(Map<String, dynamic> json) =>
      _$Fragment$TC$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$TC$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$TC$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$TC$t on Fragment$TC$t {
  Fragment$TC$t copyWith({String? Function()? name}) =>
      Fragment$TC$t(name: name == null ? this.name : name());
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
              FragmentSpreadNode(name: NameNode(value: 'TC'), directives: [])
            ]))
      ])),
  fragmentDefinitionTC,
  fragmentDefinitionT1,
  fragmentDefinitionT2,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$t implements Fragment$TC, Fragment$T1, Fragment$T2 {
  Query$Q$t({this.t, this.name});

  @override
  factory Query$Q$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$tFromJson(json);

  final Query$Q$t$t? t;

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$tToJson(this);
  int get hashCode {
    final l$t = t;
    final l$name = name;
    return Object.hashAll([l$t, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t on Query$Q$t {
  Query$Q$t copyWith({Query$Q$t$t? Function()? t, String? Function()? name}) =>
      Query$Q$t(
          t: t == null ? this.t : t(), name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$t$t implements Fragment$TC$t, Fragment$T1$t, Fragment$T2$t {
  Query$Q$t$t({this.name});

  @override
  factory Query$Q$t$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$t$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$t$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$t$t) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$t$t on Query$Q$t$t {
  Query$Q$t$t copyWith({String? Function()? name}) =>
      Query$Q$t$t(name: name == null ? this.name : name());
}

const possibleTypesMap = {};
