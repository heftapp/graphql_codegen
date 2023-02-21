import 'package:gql/ast.dart';

class Fragment$F {
  Fragment$F({required this.name});

  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F(name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  CopyWith$Fragment$F<Fragment$F> get copyWith => CopyWith$Fragment$F(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
    Fragment$F instance,
    TRes Function(Fragment$F) then,
  ) = _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(
    this._instance,
    this._then,
  );

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$F(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String)));
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const fragmentDefinitionF = FragmentDefinitionNode(
  name: NameNode(value: 'F'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);
