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
  $unknown
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
  $unknown
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

class Query$Query {
  Query$Query({
    this.u,
    this.$__typename = 'Query',
  });

  factory Query$Query.fromJson(Map<String, dynamic> json) {
    final l$u = json['u'];
    final l$$__typename = json['__typename'];
    return Query$Query(
      u: l$u == null
          ? null
          : Query$Query$u.fromJson((l$u as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Query$u? u;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$u = u;
    _resultData['u'] = l$u?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$u = u;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$u,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Query) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$u = u;
    final lOther$u = other.u;
    if (l$u != lOther$u) {
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

extension UtilityExtension$Query$Query on Query$Query {
  CopyWith$Query$Query<Query$Query> get copyWith => CopyWith$Query$Query(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Query<TRes> {
  factory CopyWith$Query$Query(
    Query$Query instance,
    TRes Function(Query$Query) then,
  ) = _CopyWithImpl$Query$Query;

  factory CopyWith$Query$Query.stub(TRes res) = _CopyWithStubImpl$Query$Query;

  TRes call({
    Query$Query$u? u,
    String? $__typename,
  });
  CopyWith$Query$Query$u<TRes> get u;
}

class _CopyWithImpl$Query$Query<TRes> implements CopyWith$Query$Query<TRes> {
  _CopyWithImpl$Query$Query(
    this._instance,
    this._then,
  );

  final Query$Query _instance;

  final TRes Function(Query$Query) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? u = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Query(
        u: u == _undefined ? _instance.u : (u as Query$Query$u?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Query$u<TRes> get u {
    final local$u = _instance.u;
    return local$u == null
        ? CopyWith$Query$Query$u.stub(_then(_instance))
        : CopyWith$Query$Query$u(local$u, (e) => call(u: e));
  }
}

class _CopyWithStubImpl$Query$Query<TRes>
    implements CopyWith$Query$Query<TRes> {
  _CopyWithStubImpl$Query$Query(this._res);

  TRes _res;

  call({
    Query$Query$u? u,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Query$u<TRes> get u => CopyWith$Query$Query$u.stub(_res);
}

const documentNodeQueryQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Query'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'u'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: NameNode(value: 'typename'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TA'),
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
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TB'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'velocity'),
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

class Query$Query$u {
  Query$Query$u({
    required this.typename,
    required this.$__typename,
  });

  factory Query$Query$u.fromJson(Map<String, dynamic> json) {
    switch (json["typename"] as String) {
      case "TA":
        return Query$Query$u$$TA.fromJson(json);

      case "TB":
        return Query$Query$u$$TB.fromJson(json);

      default:
        final l$typename = json['typename'];
        final l$$__typename = json['__typename'];
        return Query$Query$u(
          typename: (l$typename as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String typename;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typename = typename;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typename,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Query$u) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
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

extension UtilityExtension$Query$Query$u on Query$Query$u {
  CopyWith$Query$Query$u<Query$Query$u> get copyWith => CopyWith$Query$Query$u(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Query$u$$TA) tA,
    required _T Function(Query$Query$u$$TB) tB,
    required _T Function() orElse,
  }) {
    switch (typename) {
      case "TA":
        return tA(this as Query$Query$u$$TA);

      case "TB":
        return tB(this as Query$Query$u$$TB);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Query$u$$TA)? tA,
    _T Function(Query$Query$u$$TB)? tB,
    required _T Function() orElse,
  }) {
    switch (typename) {
      case "TA":
        if (tA != null) {
          return tA(this as Query$Query$u$$TA);
        } else {
          return orElse();
        }

      case "TB":
        if (tB != null) {
          return tB(this as Query$Query$u$$TB);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Query$u<TRes> {
  factory CopyWith$Query$Query$u(
    Query$Query$u instance,
    TRes Function(Query$Query$u) then,
  ) = _CopyWithImpl$Query$Query$u;

  factory CopyWith$Query$Query$u.stub(TRes res) =
      _CopyWithStubImpl$Query$Query$u;

  TRes call({
    String? typename,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Query$u<TRes>
    implements CopyWith$Query$Query$u<TRes> {
  _CopyWithImpl$Query$Query$u(
    this._instance,
    this._then,
  );

  final Query$Query$u _instance;

  final TRes Function(Query$Query$u) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typename = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Query$u(
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Query$u<TRes>
    implements CopyWith$Query$Query$u<TRes> {
  _CopyWithStubImpl$Query$Query$u(this._res);

  TRes _res;

  call({
    String? typename,
    String? $__typename,
  }) =>
      _res;
}

class Query$Query$u$$TA implements Query$Query$u {
  Query$Query$u$$TA({
    this.name,
    this.$__typename = 'TA',
    this.typename = 'TA',
  });

  factory Query$Query$u$$TA.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$typename = json['typename'];
    return Query$Query$u$$TA(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
      typename: (l$typename as String),
    );
  }

  final String? name;

  final String $__typename;

  final String typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$typename = typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Query$u$$TA) || runtimeType != other.runtimeType) {
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
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Query$u$$TA on Query$Query$u$$TA {
  CopyWith$Query$Query$u$$TA<Query$Query$u$$TA> get copyWith =>
      CopyWith$Query$Query$u$$TA(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Query$u$$TA<TRes> {
  factory CopyWith$Query$Query$u$$TA(
    Query$Query$u$$TA instance,
    TRes Function(Query$Query$u$$TA) then,
  ) = _CopyWithImpl$Query$Query$u$$TA;

  factory CopyWith$Query$Query$u$$TA.stub(TRes res) =
      _CopyWithStubImpl$Query$Query$u$$TA;

  TRes call({
    String? name,
    String? $__typename,
    String? typename,
  });
}

class _CopyWithImpl$Query$Query$u$$TA<TRes>
    implements CopyWith$Query$Query$u$$TA<TRes> {
  _CopyWithImpl$Query$Query$u$$TA(
    this._instance,
    this._then,
  );

  final Query$Query$u$$TA _instance;

  final TRes Function(Query$Query$u$$TA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? typename = _undefined,
  }) =>
      _then(Query$Query$u$$TA(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
      ));
}

class _CopyWithStubImpl$Query$Query$u$$TA<TRes>
    implements CopyWith$Query$Query$u$$TA<TRes> {
  _CopyWithStubImpl$Query$Query$u$$TA(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? typename,
  }) =>
      _res;
}

class Query$Query$u$$TB implements Query$Query$u {
  Query$Query$u$$TB({
    this.velocity,
    this.$__typename = 'TB',
    this.typename = 'TB',
  });

  factory Query$Query$u$$TB.fromJson(Map<String, dynamic> json) {
    final l$velocity = json['velocity'];
    final l$$__typename = json['__typename'];
    final l$typename = json['typename'];
    return Query$Query$u$$TB(
      velocity: (l$velocity as int?),
      $__typename: (l$$__typename as String),
      typename: (l$typename as String),
    );
  }

  final int? velocity;

  final String $__typename;

  final String typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$velocity = velocity;
    _resultData['velocity'] = l$velocity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$velocity = velocity;
    final l$$__typename = $__typename;
    final l$typename = typename;
    return Object.hashAll([
      l$velocity,
      l$$__typename,
      l$typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Query$u$$TB) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$velocity = velocity;
    final lOther$velocity = other.velocity;
    if (l$velocity != lOther$velocity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Query$u$$TB on Query$Query$u$$TB {
  CopyWith$Query$Query$u$$TB<Query$Query$u$$TB> get copyWith =>
      CopyWith$Query$Query$u$$TB(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Query$u$$TB<TRes> {
  factory CopyWith$Query$Query$u$$TB(
    Query$Query$u$$TB instance,
    TRes Function(Query$Query$u$$TB) then,
  ) = _CopyWithImpl$Query$Query$u$$TB;

  factory CopyWith$Query$Query$u$$TB.stub(TRes res) =
      _CopyWithStubImpl$Query$Query$u$$TB;

  TRes call({
    int? velocity,
    String? $__typename,
    String? typename,
  });
}

class _CopyWithImpl$Query$Query$u$$TB<TRes>
    implements CopyWith$Query$Query$u$$TB<TRes> {
  _CopyWithImpl$Query$Query$u$$TB(
    this._instance,
    this._then,
  );

  final Query$Query$u$$TB _instance;

  final TRes Function(Query$Query$u$$TB) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? velocity = _undefined,
    Object? $__typename = _undefined,
    Object? typename = _undefined,
  }) =>
      _then(Query$Query$u$$TB(
        velocity:
            velocity == _undefined ? _instance.velocity : (velocity as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
      ));
}

class _CopyWithStubImpl$Query$Query$u$$TB<TRes>
    implements CopyWith$Query$Query$u$$TB<TRes> {
  _CopyWithStubImpl$Query$Query$u$$TB(this._res);

  TRes _res;

  call({
    int? velocity,
    String? $__typename,
    String? typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'U': {
    'TA',
    'TB',
  }
};
