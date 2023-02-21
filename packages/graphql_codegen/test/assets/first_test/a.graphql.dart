import 'fragments.graphql.dart';
import 'package:gql/ast.dart';

class Query$FetchName {
  Query$FetchName({this.name});

  factory Query$FetchName.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$FetchName(
        name: l$name == null
            ? null
            : Fragment$F.fromJson((l$name as Map<String, dynamic>)));
  }

  final Fragment$F? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    if (!(other is Query$FetchName) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchName on Query$FetchName {
  CopyWith$Query$FetchName<Query$FetchName> get copyWith =>
      CopyWith$Query$FetchName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchName<TRes> {
  factory CopyWith$Query$FetchName(
    Query$FetchName instance,
    TRes Function(Query$FetchName) then,
  ) = _CopyWithImpl$Query$FetchName;

  factory CopyWith$Query$FetchName.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchName;

  TRes call({Fragment$F? name});
  CopyWith$Fragment$F<TRes> get name;
}

class _CopyWithImpl$Query$FetchName<TRes>
    implements CopyWith$Query$FetchName<TRes> {
  _CopyWithImpl$Query$FetchName(
    this._instance,
    this._then,
  );

  final Query$FetchName _instance;

  final TRes Function(Query$FetchName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Query$FetchName(
      name: name == _undefined ? _instance.name : (name as Fragment$F?)));
  CopyWith$Fragment$F<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$F.stub(_then(_instance))
        : CopyWith$Fragment$F(local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Query$FetchName<TRes>
    implements CopyWith$Query$FetchName<TRes> {
  _CopyWithStubImpl$Query$FetchName(this._res);

  TRes _res;

  call({Fragment$F? name}) => _res;
  CopyWith$Fragment$F<TRes> get name => CopyWith$Fragment$F.stub(_res);
}

const documentNodeQueryFetchName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchName'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'F'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionF,
]);
