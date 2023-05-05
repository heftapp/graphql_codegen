import 'package:gql/ast.dart';

class Query$Q1 {
  Query$Q1({
    this.foo,
    this.$__typename = 'Query',
  });

  factory Query$Q1.fromJson(Map<String, dynamic> json) {
    final l$foo = json['foo'];
    final l$$__typename = json['__typename'];
    return Query$Q1(
      foo: l$foo == null
          ? null
          : Query$Q1$foo.fromJson((l$foo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Q1$foo? foo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$foo = foo;
    _resultData['foo'] = l$foo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$foo = foo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$foo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$foo = foo;
    final lOther$foo = other.foo;
    if (l$foo != lOther$foo) {
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

extension UtilityExtension$Query$Q1 on Query$Q1 {
  CopyWith$Query$Q1<Query$Q1> get copyWith => CopyWith$Query$Q1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q1<TRes> {
  factory CopyWith$Query$Q1(
    Query$Q1 instance,
    TRes Function(Query$Q1) then,
  ) = _CopyWithImpl$Query$Q1;

  factory CopyWith$Query$Q1.stub(TRes res) = _CopyWithStubImpl$Query$Q1;

  TRes call({
    Query$Q1$foo? foo,
    String? $__typename,
  });
  CopyWith$Query$Q1$foo<TRes> get foo;
}

class _CopyWithImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithImpl$Query$Q1(
    this._instance,
    this._then,
  );

  final Query$Q1 _instance;

  final TRes Function(Query$Q1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? foo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q1(
        foo: foo == _undefined ? _instance.foo : (foo as Query$Q1$foo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Q1$foo<TRes> get foo {
    final local$foo = _instance.foo;
    return local$foo == null
        ? CopyWith$Query$Q1$foo.stub(_then(_instance))
        : CopyWith$Query$Q1$foo(local$foo, (e) => call(foo: e));
  }
}

class _CopyWithStubImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithStubImpl$Query$Q1(this._res);

  TRes _res;

  call({
    Query$Q1$foo? foo,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Q1$foo<TRes> get foo => CopyWith$Query$Q1$foo.stub(_res);
}

const documentNodeQueryQ1 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q1'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'foo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'foo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bar'),
            alias: null,
            arguments: [],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: BooleanValueNode(value: false),
                  )
                ],
              )
            ],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list'),
            alias: null,
            arguments: [],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'skip'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: BooleanValueNode(value: true),
                  )
                ],
              )
            ],
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

class Query$Q1$foo {
  Query$Q1$foo({
    required this.foo,
    this.bar,
    this.list,
    this.$__typename = 'Foo',
  });

  factory Query$Q1$foo.fromJson(Map<String, dynamic> json) {
    final l$foo = json['foo'];
    final l$bar = json['bar'];
    final l$list = json['list'];
    final l$$__typename = json['__typename'];
    return Query$Q1$foo(
      foo: (l$foo as String),
      bar: (l$bar as String?),
      list: (l$list as List<dynamic>?)?.map((e) => (e as int)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String foo;

  final String? bar;

  final List<int>? list;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$foo = foo;
    _resultData['foo'] = l$foo;
    final l$bar = bar;
    _resultData['bar'] = l$bar;
    final l$list = list;
    _resultData['list'] = l$list?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$foo = foo;
    final l$bar = bar;
    final l$list = list;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$foo,
      l$bar,
      l$list == null ? null : Object.hashAll(l$list.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q1$foo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$foo = foo;
    final lOther$foo = other.foo;
    if (l$foo != lOther$foo) {
      return false;
    }
    final l$bar = bar;
    final lOther$bar = other.bar;
    if (l$bar != lOther$bar) {
      return false;
    }
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != null && lOther$list != null) {
      if (l$list.length != lOther$list.length) {
        return false;
      }
      for (int i = 0; i < l$list.length; i++) {
        final l$list$entry = l$list[i];
        final lOther$list$entry = lOther$list[i];
        if (l$list$entry != lOther$list$entry) {
          return false;
        }
      }
    } else if (l$list != lOther$list) {
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

extension UtilityExtension$Query$Q1$foo on Query$Q1$foo {
  CopyWith$Query$Q1$foo<Query$Q1$foo> get copyWith => CopyWith$Query$Q1$foo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q1$foo<TRes> {
  factory CopyWith$Query$Q1$foo(
    Query$Q1$foo instance,
    TRes Function(Query$Q1$foo) then,
  ) = _CopyWithImpl$Query$Q1$foo;

  factory CopyWith$Query$Q1$foo.stub(TRes res) = _CopyWithStubImpl$Query$Q1$foo;

  TRes call({
    String? foo,
    String? bar,
    List<int>? list,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q1$foo<TRes> implements CopyWith$Query$Q1$foo<TRes> {
  _CopyWithImpl$Query$Q1$foo(
    this._instance,
    this._then,
  );

  final Query$Q1$foo _instance;

  final TRes Function(Query$Q1$foo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? foo = _undefined,
    Object? bar = _undefined,
    Object? list = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q1$foo(
        foo: foo == _undefined || foo == null ? _instance.foo : (foo as String),
        bar: bar == _undefined ? _instance.bar : (bar as String?),
        list: list == _undefined ? _instance.list : (list as List<int>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q1$foo<TRes>
    implements CopyWith$Query$Q1$foo<TRes> {
  _CopyWithStubImpl$Query$Q1$foo(this._res);

  TRes _res;

  call({
    String? foo,
    String? bar,
    List<int>? list,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
