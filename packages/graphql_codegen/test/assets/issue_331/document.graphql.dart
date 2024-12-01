import 'package:gql/ast.dart';

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

class Query$FooQuery {
  Query$FooQuery({
    required this.foo,
    this.$__typename = 'Query',
  });

  factory Query$FooQuery.fromJson(Map<String, dynamic> json) {
    final l$foo = json['foo'];
    final l$$__typename = json['__typename'];
    return Query$FooQuery(
      foo: Query$FooQuery$foo.fromJson((l$foo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FooQuery$foo foo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$foo = foo;
    _resultData['foo'] = l$foo.toJson();
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
    if (other is! Query$FooQuery || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FooQuery on Query$FooQuery {
  CopyWith$Query$FooQuery<Query$FooQuery> get copyWith =>
      CopyWith$Query$FooQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FooQuery<TRes> {
  factory CopyWith$Query$FooQuery(
    Query$FooQuery instance,
    TRes Function(Query$FooQuery) then,
  ) = _CopyWithImpl$Query$FooQuery;

  factory CopyWith$Query$FooQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$FooQuery;

  TRes call({
    Query$FooQuery$foo? foo,
    String? $__typename,
  });
  CopyWith$Query$FooQuery$foo<TRes> get foo;
}

class _CopyWithImpl$Query$FooQuery<TRes>
    implements CopyWith$Query$FooQuery<TRes> {
  _CopyWithImpl$Query$FooQuery(
    this._instance,
    this._then,
  );

  final Query$FooQuery _instance;

  final TRes Function(Query$FooQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? foo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FooQuery(
        foo: foo == _undefined || foo == null
            ? _instance.foo
            : (foo as Query$FooQuery$foo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FooQuery$foo<TRes> get foo {
    final local$foo = _instance.foo;
    return CopyWith$Query$FooQuery$foo(local$foo, (e) => call(foo: e));
  }
}

class _CopyWithStubImpl$Query$FooQuery<TRes>
    implements CopyWith$Query$FooQuery<TRes> {
  _CopyWithStubImpl$Query$FooQuery(this._res);

  TRes _res;

  call({
    Query$FooQuery$foo? foo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FooQuery$foo<TRes> get foo =>
      CopyWith$Query$FooQuery$foo.stub(_res);
}

const documentNodeQueryFooQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FooQuery'),
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
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'bar'),
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

class Query$FooQuery$foo {
  Query$FooQuery$foo({
    required this.foo,
    this.$__typename = 'FooResponse',
  });

  factory Query$FooQuery$foo.fromJson(Map<String, dynamic> json) {
    final l$foo = json['foo'];
    final l$$__typename = json['__typename'];
    return Query$FooQuery$foo(
      foo: Query$FooQuery$foo$foo.fromJson((l$foo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FooQuery$foo$foo foo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$foo = foo;
    _resultData['foo'] = l$foo.toJson();
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
    if (other is! Query$FooQuery$foo || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FooQuery$foo on Query$FooQuery$foo {
  CopyWith$Query$FooQuery$foo<Query$FooQuery$foo> get copyWith =>
      CopyWith$Query$FooQuery$foo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FooQuery$foo<TRes> {
  factory CopyWith$Query$FooQuery$foo(
    Query$FooQuery$foo instance,
    TRes Function(Query$FooQuery$foo) then,
  ) = _CopyWithImpl$Query$FooQuery$foo;

  factory CopyWith$Query$FooQuery$foo.stub(TRes res) =
      _CopyWithStubImpl$Query$FooQuery$foo;

  TRes call({
    Query$FooQuery$foo$foo? foo,
    String? $__typename,
  });
  CopyWith$Query$FooQuery$foo$foo<TRes> get foo;
}

class _CopyWithImpl$Query$FooQuery$foo<TRes>
    implements CopyWith$Query$FooQuery$foo<TRes> {
  _CopyWithImpl$Query$FooQuery$foo(
    this._instance,
    this._then,
  );

  final Query$FooQuery$foo _instance;

  final TRes Function(Query$FooQuery$foo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? foo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FooQuery$foo(
        foo: foo == _undefined || foo == null
            ? _instance.foo
            : (foo as Query$FooQuery$foo$foo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FooQuery$foo$foo<TRes> get foo {
    final local$foo = _instance.foo;
    return CopyWith$Query$FooQuery$foo$foo(local$foo, (e) => call(foo: e));
  }
}

class _CopyWithStubImpl$Query$FooQuery$foo<TRes>
    implements CopyWith$Query$FooQuery$foo<TRes> {
  _CopyWithStubImpl$Query$FooQuery$foo(this._res);

  TRes _res;

  call({
    Query$FooQuery$foo$foo? foo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FooQuery$foo$foo<TRes> get foo =>
      CopyWith$Query$FooQuery$foo$foo.stub(_res);
}

class Query$FooQuery$foo$foo {
  Query$FooQuery$foo$foo({
    required this.bar,
    this.$__typename = 'FooCore',
  });

  factory Query$FooQuery$foo$foo.fromJson(Map<String, dynamic> json) {
    final l$bar = json['bar'];
    final l$$__typename = json['__typename'];
    return Query$FooQuery$foo$foo(
      bar: (l$bar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String bar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bar = bar;
    _resultData['bar'] = l$bar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bar = bar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FooQuery$foo$foo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bar = bar;
    final lOther$bar = other.bar;
    if (l$bar != lOther$bar) {
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

extension UtilityExtension$Query$FooQuery$foo$foo on Query$FooQuery$foo$foo {
  CopyWith$Query$FooQuery$foo$foo<Query$FooQuery$foo$foo> get copyWith =>
      CopyWith$Query$FooQuery$foo$foo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FooQuery$foo$foo<TRes> {
  factory CopyWith$Query$FooQuery$foo$foo(
    Query$FooQuery$foo$foo instance,
    TRes Function(Query$FooQuery$foo$foo) then,
  ) = _CopyWithImpl$Query$FooQuery$foo$foo;

  factory CopyWith$Query$FooQuery$foo$foo.stub(TRes res) =
      _CopyWithStubImpl$Query$FooQuery$foo$foo;

  TRes call({
    String? bar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FooQuery$foo$foo<TRes>
    implements CopyWith$Query$FooQuery$foo$foo<TRes> {
  _CopyWithImpl$Query$FooQuery$foo$foo(
    this._instance,
    this._then,
  );

  final Query$FooQuery$foo$foo _instance;

  final TRes Function(Query$FooQuery$foo$foo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FooQuery$foo$foo(
        bar: bar == _undefined || bar == null ? _instance.bar : (bar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FooQuery$foo$foo<TRes>
    implements CopyWith$Query$FooQuery$foo$foo<TRes> {
  _CopyWithStubImpl$Query$FooQuery$foo$foo(this._res);

  TRes _res;

  call({
    String? bar,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
