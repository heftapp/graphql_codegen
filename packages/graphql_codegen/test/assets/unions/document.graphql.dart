import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.u});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$u? u;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$u = u;
    return Object.hashAll([l$u]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$u = u;
    final lOther$u = other.u;
    if (l$u != lOther$u) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(this, (i) => i);
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(Query$Q instance, TRes Function(Query$Q) then) =
      _CopyWithImpl$Query$Q;

  TRes call({Query$Q$u? u});
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(this._instance, this._then);

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = {};

  TRes call({Object? u = _undefined}) =>
      _then(Query$Q(u: u == _undefined ? _instance.u : (u as Query$Q$u?)));
}

const documentNodeQueryQ = DocumentNode(definitions: [
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

@JsonSerializable(explicitToJson: true)
class Query$Q$u {
  Query$Q$u({required this.$__typename});

  @override
  factory Query$Q$u.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TA":
        return Query$Q$u$$TA.fromJson(json);
      case "TB":
        return Query$Q$u$$TB.fromJson(json);
      default:
        return _$Query$Q$uFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$uToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$u) || runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$u on Query$Q$u {
  CopyWith$Query$Q$u<Query$Q$u> get copyWith =>
      CopyWith$Query$Q$u(this, (i) => i);
}

abstract class CopyWith$Query$Q$u<TRes> {
  factory CopyWith$Query$Q$u(
          Query$Q$u instance, TRes Function(Query$Q$u) then) =
      _CopyWithImpl$Query$Q$u;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$u<TRes> implements CopyWith$Query$Q$u<TRes> {
  _CopyWithImpl$Query$Q$u(this._instance, this._then);

  final Query$Q$u _instance;

  final TRes Function(Query$Q$u) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Q$u(
      $__typename: $__typename == _undefined
          ? _instance.$__typename
          : ($__typename as String)));
}

@JsonSerializable(explicitToJson: true)
class Query$Q$u$$TA implements Query$Q$u {
  Query$Q$u$$TA({required this.$__typename, this.name});

  @override
  factory Query$Q$u$$TA.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$u$$TAFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() => _$Query$Q$u$$TAToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$u$$TA) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$Q$u$$TA on Query$Q$u$$TA {
  CopyWith$Query$Q$u$$TA<Query$Q$u$$TA> get copyWith =>
      CopyWith$Query$Q$u$$TA(this, (i) => i);
}

abstract class CopyWith$Query$Q$u$$TA<TRes> {
  factory CopyWith$Query$Q$u$$TA(
          Query$Q$u$$TA instance, TRes Function(Query$Q$u$$TA) then) =
      _CopyWithImpl$Query$Q$u$$TA;

  TRes call({String? $__typename, String? name});
}

class _CopyWithImpl$Query$Q$u$$TA<TRes>
    implements CopyWith$Query$Q$u$$TA<TRes> {
  _CopyWithImpl$Query$Q$u$$TA(this._instance, this._then);

  final Query$Q$u$$TA _instance;

  final TRes Function(Query$Q$u$$TA) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? name = _undefined}) =>
      _then(Query$Q$u$$TA(
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String),
          name: name == _undefined ? _instance.name : (name as String?)));
}

@JsonSerializable(explicitToJson: true)
class Query$Q$u$$TB implements Query$Q$u {
  Query$Q$u$$TB({required this.$__typename, this.velocity});

  @override
  factory Query$Q$u$$TB.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$u$$TBFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int? velocity;

  Map<String, dynamic> toJson() => _$Query$Q$u$$TBToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$velocity = velocity;
    return Object.hashAll([l$$__typename, l$velocity]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$u$$TB) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$Q$u$$TB on Query$Q$u$$TB {
  CopyWith$Query$Q$u$$TB<Query$Q$u$$TB> get copyWith =>
      CopyWith$Query$Q$u$$TB(this, (i) => i);
}

abstract class CopyWith$Query$Q$u$$TB<TRes> {
  factory CopyWith$Query$Q$u$$TB(
          Query$Q$u$$TB instance, TRes Function(Query$Q$u$$TB) then) =
      _CopyWithImpl$Query$Q$u$$TB;

  TRes call({String? $__typename, int? velocity});
}

class _CopyWithImpl$Query$Q$u$$TB<TRes>
    implements CopyWith$Query$Q$u$$TB<TRes> {
  _CopyWithImpl$Query$Q$u$$TB(this._instance, this._then);

  final Query$Q$u$$TB _instance;

  final TRes Function(Query$Q$u$$TB) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined, Object? velocity = _undefined}) =>
      _then(Query$Q$u$$TB(
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String),
          velocity: velocity == _undefined
              ? _instance.velocity
              : (velocity as int?)));
}

const possibleTypesMap = {
  'U': {'TA', 'TB'}
};
