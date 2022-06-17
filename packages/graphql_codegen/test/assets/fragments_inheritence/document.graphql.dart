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
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
  fragmentDefinitionF2,
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
class Fragment$F$other$other implements Fragment$F2$other {
  Fragment$F$other$other({this.name});

  @override
  factory Fragment$F$other$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F$other$other on Fragment$F$other$other {
  Fragment$F$other$other copyWith({String? Function()? name}) =>
      Fragment$F$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Fragment$F$other$$T1 implements Fragment$F$other {
  Fragment$F$other$$T1({this.other, this.b});

  @override
  factory Fragment$F$other$$T1.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F$other$$T1FromJson(json);

  final Fragment$F$other$other? other;

  final bool? b;

  Map<String, dynamic> toJson() => _$Fragment$F$other$$T1ToJson(this);
  int get hashCode {
    final l$other = other;
    final l$b = b;
    return Object.hashAll([l$other, l$b]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F$other$$T1) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$F$other$$T1 on Fragment$F$other$$T1 {
  Fragment$F$other$$T1 copyWith(
          {Fragment$F$other$other? Function()? other, bool? Function()? b}) =>
      Fragment$F$other$$T1(
          other: other == null ? this.other : other(),
          b: b == null ? this.b : b());
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
            FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$F2$other {
  Fragment$F2$other({this.name});

  @override
  factory Fragment$F2$other.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Fragment$F2$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2$other on Fragment$F2$other {
  Fragment$F2$other copyWith({String? Function()? name}) =>
      Fragment$F2$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class Query$Fetch {
  Query$Fetch({this.t});

  @override
  factory Query$Fetch.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchFromJson(json);

  final Fragment$F? t;

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
  Query$Fetch copyWith({Fragment$F? Function()? t}) =>
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
]);
const possibleTypesMap = {
  'Type': {'T1'}
};
