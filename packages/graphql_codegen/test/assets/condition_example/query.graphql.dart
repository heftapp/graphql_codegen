import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender {
  Query$FetchShouldRender(
      {required this.shouldRender, required this.$__typename});

  @override
  factory Query$FetchShouldRender.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchShouldRenderFromJson(json);

  final Query$FetchShouldRender$shouldRender shouldRender;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchShouldRenderToJson(this);
  int get hashCode {
    final l$shouldRender = shouldRender;
    final l$$__typename = $__typename;
    return Object.hashAll([l$shouldRender, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender) || runtimeType != other.runtimeType)
      return false;
    final l$shouldRender = shouldRender;
    final lOther$shouldRender = other.shouldRender;
    if (l$shouldRender != lOther$shouldRender) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender on Query$FetchShouldRender {
  Query$FetchShouldRender copyWith(
          {Query$FetchShouldRender$shouldRender? shouldRender,
          String? $__typename}) =>
      Query$FetchShouldRender(
          shouldRender: shouldRender == null ? this.shouldRender : shouldRender,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentFetchShouldRender = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchShouldRender'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'shouldRender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'CompositeCondition'), directives: []),
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
  fragmentDefinitionCompositeCondition,
  fragmentDefinitionTimeCondition,
  fragmentDefinitionAndCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionNonCompositeCondition,
]);

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender
    implements Fragment$CompositeCondition, Fragment$Condition {
  Query$FetchShouldRender$shouldRender(
      {required this.name, required this.$__typename});

  @override
  factory Query$FetchShouldRender$shouldRender.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Query$FetchShouldRender$shouldRender$$TimeCondition.fromJson(
            json);
      case "AndCondition":
        return Query$FetchShouldRender$shouldRender$$AndCondition.fromJson(
            json);
      default:
        return _$Query$FetchShouldRender$shouldRenderFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRenderToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender$shouldRender) ||
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

extension UtilityExtension$Query$FetchShouldRender$shouldRender
    on Query$FetchShouldRender$shouldRender {
  Query$FetchShouldRender$shouldRender copyWith(
          {String? name, String? $__typename}) =>
      Query$FetchShouldRender$shouldRender(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$TimeCondition
    implements
        Fragment$CompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Query$FetchShouldRender$shouldRender {
  Query$FetchShouldRender$shouldRender$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Query$FetchShouldRender$shouldRender$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchShouldRender$shouldRender$$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender$shouldRender$$TimeCondition) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$TimeCondition
    on Query$FetchShouldRender$shouldRender$$TimeCondition {
  Query$FetchShouldRender$shouldRender$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Query$FetchShouldRender$shouldRender$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$AndCondition
    implements
        Fragment$CompositeCondition$$AndCondition,
        Fragment$AndCondition,
        Fragment$Condition,
        Query$FetchShouldRender$shouldRender {
  Query$FetchShouldRender$shouldRender$$AndCondition(
      {required this.name,
      required this.$__typename,
      required this.left,
      required this.right});

  @override
  factory Query$FetchShouldRender$shouldRender$$AndCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchShouldRender$shouldRender$$AndConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$FetchShouldRender$shouldRender$$AndCondition$left left;

  final Query$FetchShouldRender$shouldRender$$AndCondition$right right;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$AndConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$left = left;
    final l$right = right;
    return Object.hashAll([l$name, l$$__typename, l$left, l$right]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender$shouldRender$$AndCondition) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$left = left;
    final lOther$left = other.left;
    if (l$left != lOther$left) return false;
    final l$right = right;
    final lOther$right = other.right;
    if (l$right != lOther$right) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$AndCondition
    on Query$FetchShouldRender$shouldRender$$AndCondition {
  Query$FetchShouldRender$shouldRender$$AndCondition copyWith(
          {String? name,
          String? $__typename,
          Query$FetchShouldRender$shouldRender$$AndCondition$left? left,
          Query$FetchShouldRender$shouldRender$$AndCondition$right? right}) =>
      Query$FetchShouldRender$shouldRender$$AndCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          left: left == null ? this.left : left,
          right: right == null ? this.right : right);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$AndCondition$left
    implements
        Fragment$CompositeCondition$$AndCondition$left,
        Fragment$AndCondition$left,
        Fragment$NonCompositeCondition,
        Fragment$Condition {
  Query$FetchShouldRender$shouldRender$$AndCondition$left(
      {required this.name, required this.$__typename});

  @override
  factory Query$FetchShouldRender$shouldRender$$AndCondition$left.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
            .fromJson(json);
      default:
        return _$Query$FetchShouldRender$shouldRender$$AndCondition$leftFromJson(
            json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$leftToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender$shouldRender$$AndCondition$left) ||
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

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$AndCondition$left
    on Query$FetchShouldRender$shouldRender$$AndCondition$left {
  Query$FetchShouldRender$shouldRender$$AndCondition$left copyWith(
          {String? name, String? $__typename}) =>
      Query$FetchShouldRender$shouldRender$$AndCondition$left(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
    implements
        Fragment$CompositeCondition$$AndCondition$left$$TimeCondition,
        Fragment$AndCondition$left$$TimeCondition,
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Query$FetchShouldRender$shouldRender$$AndCondition$left {
  Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeConditionFromJson(
          json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeConditionToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
    on Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition {
  Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition
      copyWith({String? name, String? $__typename, String? before}) =>
          Query$FetchShouldRender$shouldRender$$AndCondition$left$$TimeCondition(
              name: name == null ? this.name : name,
              $__typename: $__typename == null ? this.$__typename : $__typename,
              before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$AndCondition$right
    implements
        Fragment$CompositeCondition$$AndCondition$right,
        Fragment$AndCondition$right,
        Fragment$NonCompositeCondition,
        Fragment$Condition {
  Query$FetchShouldRender$shouldRender$$AndCondition$right(
      {required this.name, required this.$__typename});

  @override
  factory Query$FetchShouldRender$shouldRender$$AndCondition$right.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
            .fromJson(json);
      default:
        return _$Query$FetchShouldRender$shouldRender$$AndCondition$rightFromJson(
            json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$rightToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchShouldRender$shouldRender$$AndCondition$right) ||
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

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$AndCondition$right
    on Query$FetchShouldRender$shouldRender$$AndCondition$right {
  Query$FetchShouldRender$shouldRender$$AndCondition$right copyWith(
          {String? name, String? $__typename}) =>
      Query$FetchShouldRender$shouldRender$$AndCondition$right(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
    implements
        Fragment$CompositeCondition$$AndCondition$right$$TimeCondition,
        Fragment$AndCondition$right$$TimeCondition,
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Query$FetchShouldRender$shouldRender$$AndCondition$right {
  Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeConditionFromJson(
          json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeConditionToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
    on Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition {
  Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition
      copyWith({String? name, String? $__typename, String? before}) =>
          Query$FetchShouldRender$shouldRender$$AndCondition$right$$TimeCondition(
              name: name == null ? this.name : name,
              $__typename: $__typename == null ? this.$__typename : $__typename,
              before: before == null ? this.before : before);
}
