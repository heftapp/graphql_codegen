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
    if (other is! Query$Q1 || runtimeType != other.runtimeType) {
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
    if (other is! Query$Q1$foo || runtimeType != other.runtimeType) {
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
