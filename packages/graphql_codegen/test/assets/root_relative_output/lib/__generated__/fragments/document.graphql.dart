import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F {
  Fragment$F({this.name, required this.$__typename});

  factory Fragment$F.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$FToJson(this);
  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$F on Fragment$F {
  CopyWith$Fragment$F<Fragment$F> get copyWith =>
      CopyWith$Fragment$F(this, (i) => i);
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
          Fragment$F instance, TRes Function(Fragment$F) then) =
      _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(this._instance, this._then);

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$F(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

const fragmentDefinitionF = FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Query'), isNonNull: false)),
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
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);
