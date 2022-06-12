import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.other});

  @override
  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final Fragment$F$other? other;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  Fragment$F copyWith({Fragment$F$other? Function()? other}) =>
      Fragment$F(other: other == null ? this.other : other());
}

const fragmentDefinitionF = FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
          ]))
    ]));
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F$other implements Fragment$F2 {
  Fragment$F$other({this.other});

  @override
  factory Fragment$F$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$otherFromJson(json);

  final Fragment$F$other$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other on Fragment$F$other {
  Fragment$F$other copyWith({Fragment$F$other$other? Function()? other}) =>
      Fragment$F$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$other$other implements Fragment$F2$other, Fragment$F3 {
  Fragment$F$other$other({this.other});

  @override
  factory Fragment$F$other$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$otherFromJson(json);

  final Fragment$F$other$other$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F$other$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$other on Fragment$F$other$other {
  Fragment$F$other$other copyWith(
          {Fragment$F$other$other$other? Function()? other}) =>
      Fragment$F$other$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$other$other$other
    implements Fragment$F2$other$other, Fragment$F3$other, Fragment$F4 {
  Fragment$F$other$other$other({this.name});

  @override
  factory Fragment$F$other$other$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F$other$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$other$other
    on Fragment$F$other$other$other {
  Fragment$F$other$other$other copyWith({String? Function()? name}) =>
      Fragment$F$other$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.other});

  @override
  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final Fragment$F2$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  Fragment$F2 copyWith({Fragment$F2$other? Function()? other}) =>
      Fragment$F2(other: other == null ? this.other : other());
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
          ]))
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2$other implements Fragment$F3 {
  Fragment$F2$other({this.other});

  @override
  factory Fragment$F2$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$otherFromJson(json);

  final Fragment$F2$other$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F2$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2$other on Fragment$F2$other {
  Fragment$F2$other copyWith({Fragment$F2$other$other? Function()? other}) =>
      Fragment$F2$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F2$other$other implements Fragment$F3$other, Fragment$F4 {
  Fragment$F2$other$other({this.name});

  @override
  factory Fragment$F2$other$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F2$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2$other$other on Fragment$F2$other$other {
  Fragment$F2$other$other copyWith({String? Function()? name}) =>
      Fragment$F2$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F3 {
  Fragment$F3({this.other});

  @override
  factory Fragment$F3.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3FromJson(json);

  final Fragment$F3$other? other;

  Map<String, dynamic> toJson() => _$Fragment$F3ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  Fragment$F3 copyWith({Fragment$F3$other? Function()? other}) =>
      Fragment$F3(other: other == null ? this.other : other());
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F4'), directives: [])
          ]))
    ]));
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F3$other implements Fragment$F4 {
  Fragment$F3$other({this.name});

  @override
  factory Fragment$F3$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F3$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F3$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F3$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F3$other on Fragment$F3$other {
  Fragment$F3$other copyWith({String? Function()? name}) =>
      Fragment$F3$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F4 {
  Fragment$F4({this.name});

  @override
  factory Fragment$F4.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F4FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F4ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F4 on Fragment$F4 {
  Fragment$F4 copyWith({String? Function()? name}) =>
      Fragment$F4(name: name == null ? this.name : name());
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Query$Fetch {
  Query$Fetch({this.t});

  @override
  factory Query$Fetch.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchFromJson(json);

  final Query$Fetch$t? t;

  Map<String, dynamic> toJson() => _$Query$FetchToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch on Query$Fetch {
  Query$Fetch copyWith({Query$Fetch$t? Function()? t}) =>
      Query$Fetch(t: t == null ? this.t : t());
}

const documentNodeQueryFetch = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Fetch'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  fragmentDefinitionF,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
  fragmentDefinitionF4,
]);

@JsonSerializable(explicitToJson: true)
class Query$Fetch$t implements Fragment$F {
  Query$Fetch$t({this.other});

  @override
  factory Query$Fetch$t.fromJson(Map<String, dynamic> json) =>
      _$Query$Fetch$tFromJson(json);

  final Query$Fetch$t$other? other;

  Map<String, dynamic> toJson() => _$Query$Fetch$tToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch$t) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch$t on Query$Fetch$t {
  Query$Fetch$t copyWith({Query$Fetch$t$other? Function()? other}) =>
      Query$Fetch$t(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Query$Fetch$t$other implements Fragment$F$other, Fragment$F2 {
  Query$Fetch$t$other({this.other});

  @override
  factory Query$Fetch$t$other.fromJson(Map<String, dynamic> json) =>
      _$Query$Fetch$t$otherFromJson(json);

  final Query$Fetch$t$other$other? other;

  Map<String, dynamic> toJson() => _$Query$Fetch$t$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch$t$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch$t$other on Query$Fetch$t$other {
  Query$Fetch$t$other copyWith(
          {Query$Fetch$t$other$other? Function()? other}) =>
      Query$Fetch$t$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Query$Fetch$t$other$other
    implements Fragment$F$other$other, Fragment$F2$other, Fragment$F3 {
  Query$Fetch$t$other$other({this.other});

  @override
  factory Query$Fetch$t$other$other.fromJson(Map<String, dynamic> json) =>
      _$Query$Fetch$t$other$otherFromJson(json);

  final Query$Fetch$t$other$other$other? other;

  Map<String, dynamic> toJson() => _$Query$Fetch$t$other$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch$t$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch$t$other$other
    on Query$Fetch$t$other$other {
  Query$Fetch$t$other$other copyWith(
          {Query$Fetch$t$other$other$other? Function()? other}) =>
      Query$Fetch$t$other$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class Query$Fetch$t$other$other$other
    implements
        Fragment$F$other$other$other,
        Fragment$F2$other$other,
        Fragment$F3$other,
        Fragment$F4 {
  Query$Fetch$t$other$other$other({this.name});

  @override
  factory Query$Fetch$t$other$other$other.fromJson(Map<String, dynamic> json) =>
      _$Query$Fetch$t$other$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() =>
      _$Query$Fetch$t$other$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Fetch$t$other$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Query$Fetch$t$other$other$other
    on Query$Fetch$t$other$other$other {
  Query$Fetch$t$other$other$other copyWith({String? Function()? name}) =>
      Query$Fetch$t$other$other$other(name: name == null ? this.name : name());
}

const possibleTypesMap = {};
