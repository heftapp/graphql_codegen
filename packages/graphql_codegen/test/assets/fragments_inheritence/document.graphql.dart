import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentF {
  FragmentF$other? get other;
}

const FRAGMENT_F = const FragmentDefinitionNode(
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

abstract class FragmentF$other implements FragmentF2 {
  FragmentF$other$other? get other;
}

abstract class FragmentF$other$other implements FragmentF2$other {
  String? get name;
}

abstract class FragmentF$other$T1 extends FragmentF$other {
  bool? get b;
}

abstract class FragmentF2 {
  FragmentF2$other? get other;
}

const FRAGMENT_F2 = const FragmentDefinitionNode(
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

abstract class FragmentF2$other {
  String? get name;
}

@JsonSerializable()
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
  FRAGMENT_F,
  FRAGMENT_F2,
]);

@JsonSerializable()
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

@JsonSerializable()
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

@JsonSerializable()
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

@JsonSerializable()
class QueryFetch$t$other$T1 extends QueryFetch$t$other
    implements FragmentF$other$T1 {
  QueryFetch$t$other$T1({this.b, QueryFetch$t$other$other? other})
      : super(other: other);

  @override
  factory QueryFetch$t$other$T1.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$T1FromJson(json);

  final bool? b;

  @override
  Map<String, dynamic> toJson() => _$QueryFetch$t$other$T1ToJson(this);
  int get hashCode {
    final l$b = b;
    return Object.hashAll([l$b]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other$T1) || runtimeType != other.runtimeType)
      return false;
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {
  'Type': {'T1'}
};
