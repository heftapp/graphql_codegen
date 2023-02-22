import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$F2 {
  Fragment$F2({
    this.name,
    this.$__typename = 'T1',
  });

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$F2(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  CopyWith$Fragment$F2<Fragment$F2> get copyWith => CopyWith$Fragment$F2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F2<TRes> {
  factory CopyWith$Fragment$F2(
    Fragment$F2 instance,
    TRes Function(Fragment$F2) then,
  ) = _CopyWithImpl$Fragment$F2;

  factory CopyWith$Fragment$F2.stub(TRes res) = _CopyWithStubImpl$Fragment$F2;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(
    this._instance,
    this._then,
  );

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F2(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
  name: NameNode(value: 'F2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T1'),
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
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

extension ClientExtension$Fragment$F2 on graphql.GraphQLClient {
  void writeFragment$F2({
    required Fragment$F2 data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'F2',
            document: documentNodeFragmentF2,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$F2? readFragment$F2({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'F2',
          document: documentNodeFragmentF2,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$F2.fromJson(result);
  }
}
