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

class Fragment$F {
  Fragment$F({
    required this.$__typename,
    this.name,
  });

  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T":
        return Fragment$F$$T.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$name = json['name'];
        return Fragment$F(
          $__typename: (l$$__typename as String),
          name: (l$name as String?),
        );
    }
  }

  final String $__typename;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
  _T when<_T>({
    required _T Function(Fragment$F$$T) t,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "T":
        return t(this as Fragment$F$$T);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$F$$T)? t,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "T":
        if (t != null) {
          return t(this as Fragment$F$$T);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
    Fragment$F instance,
    TRes Function(Fragment$F) then,
  ) = _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({
    String? $__typename,
    String? name,
  });
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(
    this._instance,
    this._then,
  );

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$F(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
  }) =>
      _res;
}

const fragmentDefinitionF = FragmentDefinitionNode(
  name: NameNode(value: 'F'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'I'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'T'),
        isNonNull: false,
      )),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 't'),
          alias: null,
          arguments: [],
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
      ]),
    ),
  ]),
);
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);

class Fragment$F$$T implements Fragment$F {
  Fragment$F$$T({
    this.$__typename = 'T',
    this.t,
    this.name,
  });

  factory Fragment$F$$T.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$t = json['t'];
    final l$name = json['name'];
    return Fragment$F$$T(
      $__typename: (l$$__typename as String),
      t: l$t == null
          ? null
          : Fragment$F$$T$t.fromJson((l$t as Map<String, dynamic>)),
      name: (l$name as String?),
    );
  }

  final String $__typename;

  final Fragment$F$$T$t? t;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$t = t;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$t,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F$$T) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
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

extension UtilityExtension$Fragment$F$$T on Fragment$F$$T {
  CopyWith$Fragment$F$$T<Fragment$F$$T> get copyWith => CopyWith$Fragment$F$$T(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F$$T<TRes> {
  factory CopyWith$Fragment$F$$T(
    Fragment$F$$T instance,
    TRes Function(Fragment$F$$T) then,
  ) = _CopyWithImpl$Fragment$F$$T;

  factory CopyWith$Fragment$F$$T.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$$T;

  TRes call({
    String? $__typename,
    Fragment$F$$T$t? t,
    String? name,
  });
  CopyWith$Fragment$F$$T$t<TRes> get t;
}

class _CopyWithImpl$Fragment$F$$T<TRes>
    implements CopyWith$Fragment$F$$T<TRes> {
  _CopyWithImpl$Fragment$F$$T(
    this._instance,
    this._then,
  );

  final Fragment$F$$T _instance;

  final TRes Function(Fragment$F$$T) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? t = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$F$$T(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        t: t == _undefined ? _instance.t : (t as Fragment$F$$T$t?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
  CopyWith$Fragment$F$$T$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Fragment$F$$T$t.stub(_then(_instance))
        : CopyWith$Fragment$F$$T$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Fragment$F$$T<TRes>
    implements CopyWith$Fragment$F$$T<TRes> {
  _CopyWithStubImpl$Fragment$F$$T(this._res);

  TRes _res;

  call({
    String? $__typename,
    Fragment$F$$T$t? t,
    String? name,
  }) =>
      _res;
  CopyWith$Fragment$F$$T$t<TRes> get t => CopyWith$Fragment$F$$T$t.stub(_res);
}

class Fragment$F$$T$t {
  Fragment$F$$T$t({this.name});

  factory Fragment$F$$T$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$F$$T$t(name: (l$name as String?));
  }

  final String? name;

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
    if (!(other is Fragment$F$$T$t) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$F$$T$t on Fragment$F$$T$t {
  CopyWith$Fragment$F$$T$t<Fragment$F$$T$t> get copyWith =>
      CopyWith$Fragment$F$$T$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F$$T$t<TRes> {
  factory CopyWith$Fragment$F$$T$t(
    Fragment$F$$T$t instance,
    TRes Function(Fragment$F$$T$t) then,
  ) = _CopyWithImpl$Fragment$F$$T$t;

  factory CopyWith$Fragment$F$$T$t.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F$$T$t;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$F$$T$t<TRes>
    implements CopyWith$Fragment$F$$T$t<TRes> {
  _CopyWithImpl$Fragment$F$$T$t(
    this._instance,
    this._then,
  );

  final Fragment$F$$T$t _instance;

  final TRes Function(Fragment$F$$T$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$F$$T$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Fragment$F$$T$t<TRes>
    implements CopyWith$Fragment$F$$T$t<TRes> {
  _CopyWithStubImpl$Fragment$F$$T$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$Q {
  Query$Q({this.t});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$t = json['t'];
    return Query$Q(
        t: l$t == null
            ? null
            : Query$Q$t.fromJson((l$t as Map<String, dynamic>)));
  }

  final Query$Q$t? t;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
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

  TRes call({Query$Q$t? t});
  CopyWith$Query$Q$t<TRes> get t;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? t = _undefined}) =>
      _then(Query$Q(t: t == _undefined ? _instance.t : (t as Query$Q$t?)));
  CopyWith$Query$Q$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Query$Q$t.stub(_then(_instance))
        : CopyWith$Query$Q$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Query$Q$t? t}) => _res;
  CopyWith$Query$Q$t<TRes> get t => CopyWith$Query$Q$t.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 't'),
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
          FragmentSpreadNode(
            name: NameNode(value: 'F'),
            directives: [],
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionF,
]);

class Query$Q$t implements Fragment$F$$T {
  Query$Q$t({
    this.$__typename = 'T',
    this.name,
    this.t,
  });

  factory Query$Q$t.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$name = json['name'];
    final l$t = json['t'];
    return Query$Q$t(
      $__typename: (l$$__typename as String),
      name: (l$name as String?),
      t: l$t == null
          ? null
          : Query$Q$t$t.fromJson((l$t as Map<String, dynamic>)),
    );
  }

  final String $__typename;

  final String? name;

  final Query$Q$t$t? t;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$t = t;
    _resultData['t'] = l$t?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$t = t;
    return Object.hashAll([
      l$$__typename,
      l$name,
      l$t,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$t) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$t on Query$Q$t {
  CopyWith$Query$Q$t<Query$Q$t> get copyWith => CopyWith$Query$Q$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$t<TRes> {
  factory CopyWith$Query$Q$t(
    Query$Q$t instance,
    TRes Function(Query$Q$t) then,
  ) = _CopyWithImpl$Query$Q$t;

  factory CopyWith$Query$Q$t.stub(TRes res) = _CopyWithStubImpl$Query$Q$t;

  TRes call({
    String? $__typename,
    String? name,
    Query$Q$t$t? t,
  });
  CopyWith$Query$Q$t$t<TRes> get t;
}

class _CopyWithImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithImpl$Query$Q$t(
    this._instance,
    this._then,
  );

  final Query$Q$t _instance;

  final TRes Function(Query$Q$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
    Object? t = _undefined,
  }) =>
      _then(Query$Q$t(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined ? _instance.name : (name as String?),
        t: t == _undefined ? _instance.t : (t as Query$Q$t$t?),
      ));
  CopyWith$Query$Q$t$t<TRes> get t {
    final local$t = _instance.t;
    return local$t == null
        ? CopyWith$Query$Q$t$t.stub(_then(_instance))
        : CopyWith$Query$Q$t$t(local$t, (e) => call(t: e));
  }
}

class _CopyWithStubImpl$Query$Q$t<TRes> implements CopyWith$Query$Q$t<TRes> {
  _CopyWithStubImpl$Query$Q$t(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
    Query$Q$t$t? t,
  }) =>
      _res;
  CopyWith$Query$Q$t$t<TRes> get t => CopyWith$Query$Q$t$t.stub(_res);
}

class Query$Q$t$t implements Fragment$F$$T$t {
  Query$Q$t$t({this.name});

  factory Query$Q$t$t.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$Q$t$t(name: (l$name as String?));
  }

  final String? name;

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
    if (!(other is Query$Q$t$t) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$t$t on Query$Q$t$t {
  CopyWith$Query$Q$t$t<Query$Q$t$t> get copyWith => CopyWith$Query$Q$t$t(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$t$t<TRes> {
  factory CopyWith$Query$Q$t$t(
    Query$Q$t$t instance,
    TRes Function(Query$Q$t$t) then,
  ) = _CopyWithImpl$Query$Q$t$t;

  factory CopyWith$Query$Q$t$t.stub(TRes res) = _CopyWithStubImpl$Query$Q$t$t;

  TRes call({String? name});
}

class _CopyWithImpl$Query$Q$t$t<TRes> implements CopyWith$Query$Q$t$t<TRes> {
  _CopyWithImpl$Query$Q$t$t(
    this._instance,
    this._then,
  );

  final Query$Q$t$t _instance;

  final TRes Function(Query$Q$t$t) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Query$Q$t$t(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Query$Q$t$t<TRes>
    implements CopyWith$Query$Q$t$t<TRes> {
  _CopyWithStubImpl$Query$Q$t$t(this._res);

  TRes _res;

  call({String? name}) => _res;
}

const possibleTypesMap = <String, Set<String>>{
  'I': {'T'}
};
