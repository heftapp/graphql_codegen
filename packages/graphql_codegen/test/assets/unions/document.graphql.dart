import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ({this.u});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$u? u;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$u = u;
    return Object.hashAll([l$u]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$u = u;
    final lOther$u = other.u;
    if (l$u != lOther$u) return false;
    return true;
  }
}

const QUERY_Q = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'u'),
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
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'TA'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'TB'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'velocity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ])),
]);

@JsonSerializable()
class QueryQ$u extends JsonSerializable {
  QueryQ$u({required this.$__typename});

  @override
  factory QueryQ$u.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TA":
        return QueryQ$u$Ta.fromJson(json);
      case "TB":
        return QueryQ$u$Tb.fromJson(json);
      default:
        return _$QueryQ$uFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$uToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$u) || runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryQ$u$Ta extends JsonSerializable implements QueryQ$u {
  QueryQ$u$Ta({required this.$__typename, this.name});

  @override
  factory QueryQ$u$Ta.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$u$TaFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$u$TaToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$u$Ta) || runtimeType != other.runtimeType)
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

@JsonSerializable()
class QueryQ$u$Tb extends JsonSerializable implements QueryQ$u {
  QueryQ$u$Tb({required this.$__typename, this.velocity});

  @override
  factory QueryQ$u$Tb.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$u$TbFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? velocity;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$u$TbToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$velocity = velocity;
    return Object.hashAll([l$$__typename, l$velocity]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$u$Tb) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$velocity = velocity;
    final lOther$velocity = other.velocity;
    if (l$velocity != lOther$velocity) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {
  'U': {'TA', 'TB'}
};
