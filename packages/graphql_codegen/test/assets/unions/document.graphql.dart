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

class Query$Q {
  Query$Q({this.u});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$u = json['u'];
    return Query$Q(
        u: l$u == null
            ? null
            : Query$Q$u.fromJson((l$u as Map<String, dynamic>)));
  }

  final Query$Q$u? u;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$u = u;
    _resultData['u'] = l$u?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$u = u;
    return Object.hashAll([l$u]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q || runtimeType != other.runtimeType) {
      return false;
    }
    final l$u = u;
    final lOther$u = other.u;
    if (l$u != lOther$u) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({Query$Q$u? u});
  CopyWith$Query$Q$u<TRes> get u;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? u = _undefined}) =>
      _then(Query$Q(u: u == _undefined ? _instance.u : (u as Query$Q$u?)));

  CopyWith$Query$Q$u<TRes> get u {
    final local$u = _instance.u;
    return local$u == null
        ? CopyWith$Query$Q$u.stub(_then(_instance))
        : CopyWith$Query$Q$u(local$u, (e) => call(u: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Query$Q$u? u}) => _res;

  CopyWith$Query$Q$u<TRes> get u => CopyWith$Query$Q$u.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
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
            alias: null,
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
              )
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
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
]);

class Query$Q$u {
  Query$Q$u({required this.$__typename});

  factory Query$Q$u.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TA":
        return Query$Q$u$$TA.fromJson(json);

      case "TB":
        return Query$Q$u$$TB.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Q$u($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q$u || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$u on Query$Q$u {
  CopyWith$Query$Q$u<Query$Q$u> get copyWith => CopyWith$Query$Q$u(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Q$u$$TA) tA,
    required _T Function(Query$Q$u$$TB) tB,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TA":
        return tA(this as Query$Q$u$$TA);

      case "TB":
        return tB(this as Query$Q$u$$TB);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Q$u$$TA)? tA,
    _T Function(Query$Q$u$$TB)? tB,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TA":
        if (tA != null) {
          return tA(this as Query$Q$u$$TA);
        } else {
          return orElse();
        }

      case "TB":
        if (tB != null) {
          return tB(this as Query$Q$u$$TB);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Q$u<TRes> {
  factory CopyWith$Query$Q$u(
    Query$Q$u instance,
    TRes Function(Query$Q$u) then,
  ) = _CopyWithImpl$Query$Q$u;

  factory CopyWith$Query$Q$u.stub(TRes res) = _CopyWithStubImpl$Query$Q$u;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$u<TRes> implements CopyWith$Query$Q$u<TRes> {
  _CopyWithImpl$Query$Q$u(
    this._instance,
    this._then,
  );

  final Query$Q$u _instance;

  final TRes Function(Query$Q$u) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Q$u(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q$u<TRes> implements CopyWith$Query$Q$u<TRes> {
  _CopyWithStubImpl$Query$Q$u(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Q$u$$TA implements Query$Q$u {
  Query$Q$u$$TA({
    this.name,
    this.$__typename = 'TA',
  });

  factory Query$Q$u$$TA.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Q$u$$TA(
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
    if (other is! Query$Q$u$$TA || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$u$$TA on Query$Q$u$$TA {
  CopyWith$Query$Q$u$$TA<Query$Q$u$$TA> get copyWith => CopyWith$Query$Q$u$$TA(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$u$$TA<TRes> {
  factory CopyWith$Query$Q$u$$TA(
    Query$Q$u$$TA instance,
    TRes Function(Query$Q$u$$TA) then,
  ) = _CopyWithImpl$Query$Q$u$$TA;

  factory CopyWith$Query$Q$u$$TA.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$u$$TA;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$u$$TA<TRes>
    implements CopyWith$Query$Q$u$$TA<TRes> {
  _CopyWithImpl$Query$Q$u$$TA(
    this._instance,
    this._then,
  );

  final Query$Q$u$$TA _instance;

  final TRes Function(Query$Q$u$$TA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$u$$TA(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$u$$TA<TRes>
    implements CopyWith$Query$Q$u$$TA<TRes> {
  _CopyWithStubImpl$Query$Q$u$$TA(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Q$u$$TB implements Query$Q$u {
  Query$Q$u$$TB({
    this.velocity,
    this.$__typename = 'TB',
  });

  factory Query$Q$u$$TB.fromJson(Map<String, dynamic> json) {
    final l$velocity = json['velocity'];
    final l$$__typename = json['__typename'];
    return Query$Q$u$$TB(
      velocity: (l$velocity as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? velocity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$velocity = velocity;
    _resultData['velocity'] = l$velocity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$velocity = velocity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$velocity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q$u$$TB || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$Q$u$$TB on Query$Q$u$$TB {
  CopyWith$Query$Q$u$$TB<Query$Q$u$$TB> get copyWith => CopyWith$Query$Q$u$$TB(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$u$$TB<TRes> {
  factory CopyWith$Query$Q$u$$TB(
    Query$Q$u$$TB instance,
    TRes Function(Query$Q$u$$TB) then,
  ) = _CopyWithImpl$Query$Q$u$$TB;

  factory CopyWith$Query$Q$u$$TB.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$u$$TB;

  TRes call({
    int? velocity,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$u$$TB<TRes>
    implements CopyWith$Query$Q$u$$TB<TRes> {
  _CopyWithImpl$Query$Q$u$$TB(
    this._instance,
    this._then,
  );

  final Query$Q$u$$TB _instance;

  final TRes Function(Query$Q$u$$TB) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? velocity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$u$$TB(
        velocity:
            velocity == _undefined ? _instance.velocity : (velocity as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$u$$TB<TRes>
    implements CopyWith$Query$Q$u$$TB<TRes> {
  _CopyWithStubImpl$Query$Q$u$$TB(this._res);

  TRes _res;

  call({
    int? velocity,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'U': {
    'TA',
    'TB',
  }
};
