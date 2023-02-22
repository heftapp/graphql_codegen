import 'document2.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$F1 {
  Fragment$F1({
    this.name,
    this.field,
    this.$__typename = 'T1',
  });

  factory Fragment$F1.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Fragment$F1(
      name: (l$name as String?),
      field: l$field == null
          ? null
          : Fragment$F2.fromJson((l$field as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Fragment$F2? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$field,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  CopyWith$Fragment$F1<Fragment$F1> get copyWith => CopyWith$Fragment$F1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1<TRes> {
  factory CopyWith$Fragment$F1(
    Fragment$F1 instance,
    TRes Function(Fragment$F1) then,
  ) = _CopyWithImpl$Fragment$F1;

  factory CopyWith$Fragment$F1.stub(TRes res) = _CopyWithStubImpl$Fragment$F1;

  TRes call({
    String? name,
    Fragment$F2? field,
    String? $__typename,
  });
  CopyWith$Fragment$F2<TRes> get field;
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(
    this._instance,
    this._then,
  );

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F1(
        name: name == _undefined ? _instance.name : (name as String?),
        field: field == _undefined ? _instance.field : (field as Fragment$F2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F2<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Fragment$F2.stub(_then(_instance))
        : CopyWith$Fragment$F2(local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$F2? field,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F2<TRes> get field => CopyWith$Fragment$F2.stub(_res);
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
  name: NameNode(value: 'F1'),
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
      name: NameNode(value: 'field'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'F2'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
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
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

extension ClientExtension$Fragment$F1 on graphql.GraphQLClient {
  void writeFragment$F1({
    required Fragment$F1 data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'F1',
            document: documentNodeFragmentF1,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$F1? readFragment$F1({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'F1',
          document: documentNodeFragmentF1,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$F1.fromJson(result);
  }
}

const possibleTypesMap = <String, Set<String>>{};
