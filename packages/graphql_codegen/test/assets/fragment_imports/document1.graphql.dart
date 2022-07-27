import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document1.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$F2 {
  Fragment$F2({this.value});

  factory Fragment$F2.fromJson(Map<String, dynamic> json) =>
      _$Fragment$F2FromJson(json);

  final int? value;

  Map<String, dynamic> toJson() => _$Fragment$F2ToJson(this);
  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  CopyWith$Fragment$F2<Fragment$F2> get copyWith =>
      CopyWith$Fragment$F2(this, (i) => i);
}

abstract class CopyWith$Fragment$F2<TRes> {
  factory CopyWith$Fragment$F2(
          Fragment$F2 instance, TRes Function(Fragment$F2) then) =
      _CopyWithImpl$Fragment$F2;

  factory CopyWith$Fragment$F2.stub(TRes res) = _CopyWithStubImpl$Fragment$F2;

  TRes call({int? value});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(this._instance, this._then);

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = {};

  TRes call({Object? value = _undefined}) => _then(Fragment$F2(
      value: value == _undefined ? _instance.value : (value as int?)));
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({int? value}) => _res;
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T2'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);
