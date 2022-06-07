import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'fragments.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$Condition {
  Fragment$Condition({required this.name, required this.$__typename});

  @override
  factory Fragment$Condition.fromJson(Map<String, dynamic> json) =>
      _$Fragment$ConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$ConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Condition) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$Condition on Fragment$Condition {
  Fragment$Condition copyWith({String? name, String? $__typename}) =>
      Fragment$Condition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionCondition = FragmentDefinitionNode(
    name: NameNode(value: 'Condition'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'Condition'), isNonNull: false)),
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
    ]));
const queryDocumentCondition = DocumentNode(definitions: [
  fragmentDefinitionCondition,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$AndCondition implements Fragment$Condition {
  Fragment$AndCondition(
      {required this.left,
      required this.right,
      required this.name,
      required this.$__typename});

  @override
  factory Fragment$AndCondition.fromJson(Map<String, dynamic> json) =>
      _$Fragment$AndConditionFromJson(json);

  final Fragment$AndCondition$left left;

  final Fragment$AndCondition$right right;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$AndConditionToJson(this);
  int get hashCode {
    final l$left = left;
    final l$right = right;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$left, l$right, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$AndCondition) || runtimeType != other.runtimeType)
      return false;
    final l$left = left;
    final lOther$left = other.left;
    if (l$left != lOther$left) return false;
    final l$right = right;
    final lOther$right = other.right;
    if (l$right != lOther$right) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$AndCondition on Fragment$AndCondition {
  Fragment$AndCondition copyWith(
          {Fragment$AndCondition$left? left,
          Fragment$AndCondition$right? right,
          String? name,
          String? $__typename}) =>
      Fragment$AndCondition(
          left: left == null ? this.left : left,
          right: right == null ? this.right : right,
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionAndCondition = FragmentDefinitionNode(
    name: NameNode(value: 'AndCondition'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'AndCondition'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'left'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'NonCompositeCondition'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: 'right'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'NonCompositeCondition'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FragmentSpreadNode(name: NameNode(value: 'Condition'), directives: []),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentAndCondition = DocumentNode(definitions: [
  fragmentDefinitionAndCondition,
  fragmentDefinitionNonCompositeCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionTimeCondition,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$AndCondition$left
    implements Fragment$NonCompositeCondition, Fragment$Condition {
  Fragment$AndCondition$left({required this.name, required this.$__typename});

  @override
  factory Fragment$AndCondition$left.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$AndCondition$left$$TimeCondition.fromJson(json);
      default:
        return _$Fragment$AndCondition$leftFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$AndCondition$leftToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$AndCondition$left) ||
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

extension UtilityExtension$Fragment$AndCondition$left
    on Fragment$AndCondition$left {
  Fragment$AndCondition$left copyWith({String? name, String? $__typename}) =>
      Fragment$AndCondition$left(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$AndCondition$left$$TimeCondition
    implements
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$AndCondition$left {
  Fragment$AndCondition$left$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$AndCondition$left$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$AndCondition$left$$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$AndCondition$left$$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$AndCondition$left$$TimeCondition) ||
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

extension UtilityExtension$Fragment$AndCondition$left$$TimeCondition
    on Fragment$AndCondition$left$$TimeCondition {
  Fragment$AndCondition$left$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$AndCondition$left$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$AndCondition$right
    implements Fragment$NonCompositeCondition, Fragment$Condition {
  Fragment$AndCondition$right({required this.name, required this.$__typename});

  @override
  factory Fragment$AndCondition$right.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$AndCondition$right$$TimeCondition.fromJson(json);
      default:
        return _$Fragment$AndCondition$rightFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$AndCondition$rightToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$AndCondition$right) ||
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

extension UtilityExtension$Fragment$AndCondition$right
    on Fragment$AndCondition$right {
  Fragment$AndCondition$right copyWith({String? name, String? $__typename}) =>
      Fragment$AndCondition$right(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$AndCondition$right$$TimeCondition
    implements
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$AndCondition$right {
  Fragment$AndCondition$right$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$AndCondition$right$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$AndCondition$right$$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$AndCondition$right$$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$AndCondition$right$$TimeCondition) ||
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

extension UtilityExtension$Fragment$AndCondition$right$$TimeCondition
    on Fragment$AndCondition$right$$TimeCondition {
  Fragment$AndCondition$right$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$AndCondition$right$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition implements Fragment$Condition {
  Fragment$CompositeCondition({required this.name, required this.$__typename});

  @override
  factory Fragment$CompositeCondition.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$CompositeCondition$$TimeCondition.fromJson(json);
      case "AndCondition":
        return Fragment$CompositeCondition$$AndCondition.fromJson(json);
      default:
        return _$Fragment$CompositeConditionFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$CompositeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$CompositeCondition) ||
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

extension UtilityExtension$Fragment$CompositeCondition
    on Fragment$CompositeCondition {
  Fragment$CompositeCondition copyWith({String? name, String? $__typename}) =>
      Fragment$CompositeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionCompositeCondition = FragmentDefinitionNode(
    name: NameNode(value: 'CompositeCondition'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'Condition'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(
          name: NameNode(value: 'TimeCondition'), directives: []),
      FragmentSpreadNode(name: NameNode(value: 'AndCondition'), directives: []),
      FragmentSpreadNode(name: NameNode(value: 'Condition'), directives: []),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentCompositeCondition = DocumentNode(definitions: [
  fragmentDefinitionCompositeCondition,
  fragmentDefinitionTimeCondition,
  fragmentDefinitionAndCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionNonCompositeCondition,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$TimeCondition
    implements
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$CompositeCondition {
  Fragment$CompositeCondition$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$CompositeCondition$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$CompositeCondition$$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$CompositeCondition$$TimeCondition) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$TimeCondition
    on Fragment$CompositeCondition$$TimeCondition {
  Fragment$CompositeCondition$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$CompositeCondition$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$AndCondition
    implements
        Fragment$AndCondition,
        Fragment$Condition,
        Fragment$CompositeCondition {
  Fragment$CompositeCondition$$AndCondition(
      {required this.name,
      required this.$__typename,
      required this.left,
      required this.right});

  @override
  factory Fragment$CompositeCondition$$AndCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$CompositeCondition$$AndConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Fragment$CompositeCondition$$AndCondition$left left;

  final Fragment$CompositeCondition$$AndCondition$right right;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$AndConditionToJson(this);
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
    if (!(other is Fragment$CompositeCondition$$AndCondition) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition
    on Fragment$CompositeCondition$$AndCondition {
  Fragment$CompositeCondition$$AndCondition copyWith(
          {String? name,
          String? $__typename,
          Fragment$CompositeCondition$$AndCondition$left? left,
          Fragment$CompositeCondition$$AndCondition$right? right}) =>
      Fragment$CompositeCondition$$AndCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          left: left == null ? this.left : left,
          right: right == null ? this.right : right);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$AndCondition$left
    implements
        Fragment$AndCondition$left,
        Fragment$NonCompositeCondition,
        Fragment$Condition {
  Fragment$CompositeCondition$$AndCondition$left(
      {required this.name, required this.$__typename});

  @override
  factory Fragment$CompositeCondition$$AndCondition$left.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$CompositeCondition$$AndCondition$left$$TimeCondition
            .fromJson(json);
      default:
        return _$Fragment$CompositeCondition$$AndCondition$leftFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$AndCondition$leftToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$CompositeCondition$$AndCondition$left) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition$left
    on Fragment$CompositeCondition$$AndCondition$left {
  Fragment$CompositeCondition$$AndCondition$left copyWith(
          {String? name, String? $__typename}) =>
      Fragment$CompositeCondition$$AndCondition$left(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$AndCondition$left$$TimeCondition
    implements
        Fragment$AndCondition$left$$TimeCondition,
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$CompositeCondition$$AndCondition$left {
  Fragment$CompositeCondition$$AndCondition$left$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$CompositeCondition$$AndCondition$left$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$CompositeCondition$$AndCondition$left$$TimeConditionFromJson(
          json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$AndCondition$left$$TimeConditionToJson(
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
            is Fragment$CompositeCondition$$AndCondition$left$$TimeCondition) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition$left$$TimeCondition
    on Fragment$CompositeCondition$$AndCondition$left$$TimeCondition {
  Fragment$CompositeCondition$$AndCondition$left$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$CompositeCondition$$AndCondition$left$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$AndCondition$right
    implements
        Fragment$AndCondition$right,
        Fragment$NonCompositeCondition,
        Fragment$Condition {
  Fragment$CompositeCondition$$AndCondition$right(
      {required this.name, required this.$__typename});

  @override
  factory Fragment$CompositeCondition$$AndCondition$right.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$CompositeCondition$$AndCondition$right$$TimeCondition
            .fromJson(json);
      default:
        return _$Fragment$CompositeCondition$$AndCondition$rightFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$AndCondition$rightToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$CompositeCondition$$AndCondition$right) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition$right
    on Fragment$CompositeCondition$$AndCondition$right {
  Fragment$CompositeCondition$$AndCondition$right copyWith(
          {String? name, String? $__typename}) =>
      Fragment$CompositeCondition$$AndCondition$right(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$CompositeCondition$$AndCondition$right$$TimeCondition
    implements
        Fragment$AndCondition$right$$TimeCondition,
        Fragment$NonCompositeCondition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$CompositeCondition$$AndCondition$right {
  Fragment$CompositeCondition$$AndCondition$right$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$CompositeCondition$$AndCondition$right$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$CompositeCondition$$AndCondition$right$$TimeConditionFromJson(
          json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$CompositeCondition$$AndCondition$right$$TimeConditionToJson(
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
            is Fragment$CompositeCondition$$AndCondition$right$$TimeCondition) ||
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

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition$right$$TimeCondition
    on Fragment$CompositeCondition$$AndCondition$right$$TimeCondition {
  Fragment$CompositeCondition$$AndCondition$right$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$CompositeCondition$$AndCondition$right$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$NonCompositeCondition implements Fragment$Condition {
  Fragment$NonCompositeCondition(
      {required this.name, required this.$__typename});

  @override
  factory Fragment$NonCompositeCondition.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TimeCondition":
        return Fragment$NonCompositeCondition$$TimeCondition.fromJson(json);
      default:
        return _$Fragment$NonCompositeConditionFromJson(json);
    }
  }

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$NonCompositeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$NonCompositeCondition) ||
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

extension UtilityExtension$Fragment$NonCompositeCondition
    on Fragment$NonCompositeCondition {
  Fragment$NonCompositeCondition copyWith(
          {String? name, String? $__typename}) =>
      Fragment$NonCompositeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionNonCompositeCondition = FragmentDefinitionNode(
    name: NameNode(value: 'NonCompositeCondition'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'Condition'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'Condition'), directives: []),
      FragmentSpreadNode(
          name: NameNode(value: 'TimeCondition'), directives: []),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentNonCompositeCondition = DocumentNode(definitions: [
  fragmentDefinitionNonCompositeCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionTimeCondition,
]);

@JsonSerializable(explicitToJson: true)
class Fragment$NonCompositeCondition$$TimeCondition
    implements
        Fragment$TimeCondition,
        Fragment$Condition,
        Fragment$NonCompositeCondition {
  Fragment$NonCompositeCondition$$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$NonCompositeCondition$$TimeCondition.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$NonCompositeCondition$$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() =>
      _$Fragment$NonCompositeCondition$$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$NonCompositeCondition$$TimeCondition) ||
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

extension UtilityExtension$Fragment$NonCompositeCondition$$TimeCondition
    on Fragment$NonCompositeCondition$$TimeCondition {
  Fragment$NonCompositeCondition$$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$NonCompositeCondition$$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

@JsonSerializable(explicitToJson: true)
class Fragment$TimeCondition implements Fragment$Condition {
  Fragment$TimeCondition(
      {required this.name, required this.$__typename, required this.before});

  @override
  factory Fragment$TimeCondition.fromJson(Map<String, dynamic> json) =>
      _$Fragment$TimeConditionFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() => _$Fragment$TimeConditionToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([l$name, l$$__typename, l$before]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$TimeCondition) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Fragment$TimeCondition on Fragment$TimeCondition {
  Fragment$TimeCondition copyWith(
          {String? name, String? $__typename, String? before}) =>
      Fragment$TimeCondition(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          before: before == null ? this.before : before);
}

const fragmentDefinitionTimeCondition = FragmentDefinitionNode(
    name: NameNode(value: 'TimeCondition'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'TimeCondition'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'Condition'), directives: []),
      FieldNode(
          name: NameNode(value: 'before'),
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
    ]));
const queryDocumentTimeCondition = DocumentNode(definitions: [
  fragmentDefinitionTimeCondition,
  fragmentDefinitionCondition,
]);
