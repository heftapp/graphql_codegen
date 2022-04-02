import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentF extends JsonSerializable {
  FragmentF({this.other});

  @override
  factory FragmentF.fromJson(Map<String, dynamic> json) =>
      _$FragmentFFromJson(json);

  final FragmentF$other? other;

  @override
  Map<String, dynamic> toJson() => _$FragmentFToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF) || runtimeType != other.runtimeType) return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF on FragmentF {
  FragmentF copyWith({FragmentF$other? Function()? other}) =>
      FragmentF(other: other == null ? this.other : other());
}

const FRAGMENT_DEFINITION_FRAGMENT_F = const FragmentDefinitionNode(
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
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: []),
            InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                        name: NameNode(value: 'T1'), isNonNull: false)),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'b'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const FRAGMENT_F = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F,
  FRAGMENT_DEFINITION_FRAGMENT_F2,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF$other extends JsonSerializable implements FragmentF2 {
  FragmentF$other({this.other});

  @override
  factory FragmentF$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$otherFromJson(json);

  final FragmentF$other$other? other;

  @override
  Map<String, dynamic> toJson() => _$FragmentF$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other on FragmentF$other {
  FragmentF$other copyWith({FragmentF$other$other? Function()? other}) =>
      FragmentF$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$other$other extends JsonSerializable
    implements FragmentF2$other {
  FragmentF$other$other({this.name});

  @override
  factory FragmentF$other$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$other$otherFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentF$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other$other on FragmentF$other$other {
  FragmentF$other$other copyWith({String? Function()? name}) =>
      FragmentF$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$other$T1 extends JsonSerializable implements FragmentF$other {
  FragmentF$other$T1({this.other, this.b});

  @override
  factory FragmentF$other$T1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$other$T1FromJson(json);

  final FragmentF$other$other? other;

  final bool? b;

  @override
  Map<String, dynamic> toJson() => _$FragmentF$other$T1ToJson(this);
  int get hashCode {
    final l$other = other;
    final l$b = b;
    return Object.hashAll([l$other, l$b]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other$T1) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other$T1 on FragmentF$other$T1 {
  FragmentF$other$T1 copyWith(
          {FragmentF$other$other? Function()? other, bool? Function()? b}) =>
      FragmentF$other$T1(
          other: other == null ? this.other : other(),
          b: b == null ? this.b : b());
}

@JsonSerializable(explicitToJson: true)
class FragmentF2 extends JsonSerializable {
  FragmentF2({this.other});

  @override
  factory FragmentF2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2FromJson(json);

  final FragmentF2$other? other;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF2 on FragmentF2 {
  FragmentF2 copyWith({FragmentF2$other? Function()? other}) =>
      FragmentF2(other: other == null ? this.other : other());
}

const FRAGMENT_DEFINITION_FRAGMENT_F2 = const FragmentDefinitionNode(
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
            FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const FRAGMENT_F2 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F2,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF2$other extends JsonSerializable {
  FragmentF2$other({this.name});

  @override
  factory FragmentF2$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$otherFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$FragmentF2$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF2$other on FragmentF2$other {
  FragmentF2$other copyWith({String? Function()? name}) =>
      FragmentF2$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch extends JsonSerializable {
  QueryFetch({this.t});

  @override
  factory QueryFetch.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchFromJson(json);

  final QueryFetch$t? t;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch on QueryFetch {
  QueryFetch copyWith({QueryFetch$t? Function()? t}) =>
      QueryFetch(t: t == null ? this.t : t());
}

const QUERY_FETCH = const DocumentNode(definitions: [
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
  FRAGMENT_DEFINITION_FRAGMENT_F,
  FRAGMENT_DEFINITION_FRAGMENT_F2,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetch$t extends JsonSerializable implements FragmentF {
  QueryFetch$t({this.other});

  @override
  factory QueryFetch$t.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$tFromJson(json);

  final QueryFetch$t$other? other;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$tToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t on QueryFetch$t {
  QueryFetch$t copyWith({QueryFetch$t$other? Function()? other}) =>
      QueryFetch$t(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other extends JsonSerializable
    implements FragmentF$other, FragmentF2 {
  QueryFetch$t$other({this.other});

  @override
  factory QueryFetch$t$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$otherFromJson(json);

  final QueryFetch$t$other$other? other;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other on QueryFetch$t$other {
  QueryFetch$t$other copyWith({QueryFetch$t$other$other? Function()? other}) =>
      QueryFetch$t$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other$other extends JsonSerializable
    implements FragmentF$other$other, FragmentF2$other {
  QueryFetch$t$other$other({this.name});

  @override
  factory QueryFetch$t$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$otherFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other$other on QueryFetch$t$other$other {
  QueryFetch$t$other$other copyWith({String? Function()? name}) =>
      QueryFetch$t$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other$T1 extends JsonSerializable
    implements FragmentF$other$T1, QueryFetch$t$other {
  QueryFetch$t$other$T1({this.other, this.b});

  @override
  factory QueryFetch$t$other$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$T1FromJson(json);

  final QueryFetch$t$other$other? other;

  final bool? b;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$T1ToJson(this);
  int get hashCode {
    final l$other = other;
    final l$b = b;
    return Object.hashAll([l$other, l$b]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other$T1) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other$T1 on QueryFetch$t$other$T1 {
  QueryFetch$t$other$T1 copyWith(
          {QueryFetch$t$other$other? Function()? other, bool? Function()? b}) =>
      QueryFetch$t$other$T1(
          other: other == null ? this.other : other(),
          b: b == null ? this.b : b());
}

const POSSIBLE_TYPES_MAP = const {
  'Type': {'T1'}
};
