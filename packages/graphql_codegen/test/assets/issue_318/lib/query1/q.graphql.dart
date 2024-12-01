import 'package:gql/ast.dart';

class Query$FetchHello {
  Query$FetchHello({
    this.hello,
    this.$__typename = 'Query',
  });

  factory Query$FetchHello.fromJson(Map<String, dynamic> json) {
    final l$hello = json['hello'];
    final l$$__typename = json['__typename'];
    return Query$FetchHello(
      hello: (l$hello as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? hello;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hello = hello;
    _resultData['hello'] = l$hello;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hello = hello;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hello,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchHello || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hello = hello;
    final lOther$hello = other.hello;
    if (l$hello != lOther$hello) {
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

extension UtilityExtension$Query$FetchHello on Query$FetchHello {
  CopyWith$Query$FetchHello<Query$FetchHello> get copyWith =>
      CopyWith$Query$FetchHello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchHello<TRes> {
  factory CopyWith$Query$FetchHello(
    Query$FetchHello instance,
    TRes Function(Query$FetchHello) then,
  ) = _CopyWithImpl$Query$FetchHello;

  factory CopyWith$Query$FetchHello.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchHello;

  TRes call({
    String? hello,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchHello<TRes>
    implements CopyWith$Query$FetchHello<TRes> {
  _CopyWithImpl$Query$FetchHello(
    this._instance,
    this._then,
  );

  final Query$FetchHello _instance;

  final TRes Function(Query$FetchHello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hello = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchHello(
        hello: hello == _undefined ? _instance.hello : (hello as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchHello<TRes>
    implements CopyWith$Query$FetchHello<TRes> {
  _CopyWithStubImpl$Query$FetchHello(this._res);

  TRes _res;

  call({
    String? hello,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryFetchHello = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchHello'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'hello'),
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
  ),
]);
