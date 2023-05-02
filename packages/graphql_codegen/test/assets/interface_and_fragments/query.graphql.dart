import 'package:gql/ast.dart';

class Fragment$FragmentA {
  Fragment$FragmentA({
    this.s,
    this.$_s,
  });

  factory Fragment$FragmentA.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    final l$$_s = json['_s'];
    return Fragment$FragmentA(
      s: (l$s as String?),
      $_s: (l$$_s as String?),
    );
  }

  final String? s;

  final String? $_s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    final l$$_s = $_s;
    _resultData['_s'] = l$$_s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([
      l$s,
      l$$_s,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FragmentA) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FragmentA on Fragment$FragmentA {
  CopyWith$Fragment$FragmentA<Fragment$FragmentA> get copyWith =>
      CopyWith$Fragment$FragmentA(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FragmentA<TRes> {
  factory CopyWith$Fragment$FragmentA(
    Fragment$FragmentA instance,
    TRes Function(Fragment$FragmentA) then,
  ) = _CopyWithImpl$Fragment$FragmentA;

  factory CopyWith$Fragment$FragmentA.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FragmentA;

  TRes call({
    String? s,
    String? $_s,
  });
}

class _CopyWithImpl$Fragment$FragmentA<TRes>
    implements CopyWith$Fragment$FragmentA<TRes> {
  _CopyWithImpl$Fragment$FragmentA(
    this._instance,
    this._then,
  );

  final Fragment$FragmentA _instance;

  final TRes Function(Fragment$FragmentA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? s = _undefined,
    Object? $_s = _undefined,
  }) =>
      _then(Fragment$FragmentA(
        s: s == _undefined ? _instance.s : (s as String?),
        $_s: $_s == _undefined ? _instance.$_s : ($_s as String?),
      ));
}

class _CopyWithStubImpl$Fragment$FragmentA<TRes>
    implements CopyWith$Fragment$FragmentA<TRes> {
  _CopyWithStubImpl$Fragment$FragmentA(this._res);

  TRes _res;

  call({
    String? s,
    String? $_s,
  }) =>
      _res;
}

const fragmentDefinitionFragmentA = FragmentDefinitionNode(
  name: NameNode(value: 'FragmentA'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ImplementationA'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 's'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 's'),
      alias: NameNode(value: '_s'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentFragmentA = DocumentNode(definitions: [
  fragmentDefinitionFragmentA,
]);

class Fragment$FragmentB {
  Fragment$FragmentB({this.i});

  factory Fragment$FragmentB.fromJson(Map<String, dynamic> json) {
    final l$i = json['i'];
    return Fragment$FragmentB(i: (l$i as int?));
  }

  final int? i;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i = i;
    _resultData['i'] = l$i;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FragmentB) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FragmentB on Fragment$FragmentB {
  CopyWith$Fragment$FragmentB<Fragment$FragmentB> get copyWith =>
      CopyWith$Fragment$FragmentB(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FragmentB<TRes> {
  factory CopyWith$Fragment$FragmentB(
    Fragment$FragmentB instance,
    TRes Function(Fragment$FragmentB) then,
  ) = _CopyWithImpl$Fragment$FragmentB;

  factory CopyWith$Fragment$FragmentB.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FragmentB;

  TRes call({int? i});
}

class _CopyWithImpl$Fragment$FragmentB<TRes>
    implements CopyWith$Fragment$FragmentB<TRes> {
  _CopyWithImpl$Fragment$FragmentB(
    this._instance,
    this._then,
  );

  final Fragment$FragmentB _instance;

  final TRes Function(Fragment$FragmentB) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? i = _undefined}) =>
      _then(Fragment$FragmentB(i: i == _undefined ? _instance.i : (i as int?)));
}

class _CopyWithStubImpl$Fragment$FragmentB<TRes>
    implements CopyWith$Fragment$FragmentB<TRes> {
  _CopyWithStubImpl$Fragment$FragmentB(this._res);

  TRes _res;

  call({int? i}) => _res;
}

const fragmentDefinitionFragmentB = FragmentDefinitionNode(
  name: NameNode(value: 'FragmentB'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ImplementationB'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'i'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentFragmentB = DocumentNode(definitions: [
  fragmentDefinitionFragmentB,
]);

class Query$FetchImplementations {
  Query$FetchImplementations({this.$interface});

  factory Query$FetchImplementations.fromJson(Map<String, dynamic> json) {
    final l$$interface = json['interface'];
    return Query$FetchImplementations(
        $interface: l$$interface == null
            ? null
            : Query$FetchImplementations$interface.fromJson(
                (l$$interface as Map<String, dynamic>)));
  }

  final Query$FetchImplementations$interface? $interface;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$interface = $interface;
    _resultData['interface'] = l$$interface?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$interface = $interface;
    return Object.hashAll([l$$interface]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchImplementations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$interface = $interface;
    final lOther$$interface = other.$interface;
    if (l$$interface != lOther$$interface) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations
    on Query$FetchImplementations {
  CopyWith$Query$FetchImplementations<Query$FetchImplementations>
      get copyWith => CopyWith$Query$FetchImplementations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations<TRes> {
  factory CopyWith$Query$FetchImplementations(
    Query$FetchImplementations instance,
    TRes Function(Query$FetchImplementations) then,
  ) = _CopyWithImpl$Query$FetchImplementations;

  factory CopyWith$Query$FetchImplementations.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations;

  TRes call({Query$FetchImplementations$interface? $interface});
  CopyWith$Query$FetchImplementations$interface<TRes> get $interface;
}

class _CopyWithImpl$Query$FetchImplementations<TRes>
    implements CopyWith$Query$FetchImplementations<TRes> {
  _CopyWithImpl$Query$FetchImplementations(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations _instance;

  final TRes Function(Query$FetchImplementations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $interface = _undefined}) =>
      _then(Query$FetchImplementations(
          $interface: $interface == _undefined
              ? _instance.$interface
              : ($interface as Query$FetchImplementations$interface?)));
  CopyWith$Query$FetchImplementations$interface<TRes> get $interface {
    final local$$interface = _instance.$interface;
    return local$$interface == null
        ? CopyWith$Query$FetchImplementations$interface.stub(_then(_instance))
        : CopyWith$Query$FetchImplementations$interface(
            local$$interface, (e) => call($interface: e));
  }
}

class _CopyWithStubImpl$Query$FetchImplementations<TRes>
    implements CopyWith$Query$FetchImplementations<TRes> {
  _CopyWithStubImpl$Query$FetchImplementations(this._res);

  TRes _res;

  call({Query$FetchImplementations$interface? $interface}) => _res;
  CopyWith$Query$FetchImplementations$interface<TRes> get $interface =>
      CopyWith$Query$FetchImplementations$interface.stub(_res);
}

const documentNodeQueryFetchImplementations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchImplementations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'interface'),
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
          FieldNode(
            name: NameNode(value: 'b'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'self'),
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
                name: NameNode(value: 'FragmentA'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'FragmentB'),
                directives: [],
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ImplementationA'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'b'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'FragmentA'),
                directives: [],
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ImplementationB'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FragmentB'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentB,
]);

class Query$FetchImplementations$interface {
  Query$FetchImplementations$interface({
    required this.typename,
    this.b,
    required this.self,
  });

  factory Query$FetchImplementations$interface.fromJson(
      Map<String, dynamic> json) {
    switch (json["typename"] as String) {
      case "ImplementationA":
        return Query$FetchImplementations$interface$$ImplementationA.fromJson(
            json);

      case "ImplementationB":
        return Query$FetchImplementations$interface$$ImplementationB.fromJson(
            json);

      default:
        final l$typename = json['typename'];
        final l$b = json['b'];
        final l$self = json['self'];
        return Query$FetchImplementations$interface(
          typename: (l$typename as String),
          b: (l$b as bool?),
          self: Query$FetchImplementations$interface$self.fromJson(
              (l$self as Map<String, dynamic>)),
        );
    }
  }

  final String typename;

  final bool? b;

  final Query$FetchImplementations$interface$self self;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    final l$b = b;
    _resultData['b'] = l$b;
    final l$self = self;
    _resultData['self'] = l$self.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    return Object.hashAll([
      l$typename,
      l$b,
      l$self,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchImplementations$interface) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
      return false;
    }
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) {
      return false;
    }
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface
    on Query$FetchImplementations$interface {
  CopyWith$Query$FetchImplementations$interface<
          Query$FetchImplementations$interface>
      get copyWith => CopyWith$Query$FetchImplementations$interface(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$FetchImplementations$interface$$ImplementationA)
        implementationA,
    required _T Function(Query$FetchImplementations$interface$$ImplementationB)
        implementationB,
    required _T Function() orElse,
  }) {
    switch (typename) {
      case "ImplementationA":
        return implementationA(
            this as Query$FetchImplementations$interface$$ImplementationA);

      case "ImplementationB":
        return implementationB(
            this as Query$FetchImplementations$interface$$ImplementationB);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchImplementations$interface$$ImplementationA)?
        implementationA,
    _T Function(Query$FetchImplementations$interface$$ImplementationB)?
        implementationB,
    required _T Function() orElse,
  }) {
    switch (typename) {
      case "ImplementationA":
        if (implementationA != null) {
          return implementationA(
              this as Query$FetchImplementations$interface$$ImplementationA);
        } else {
          return orElse();
        }

      case "ImplementationB":
        if (implementationB != null) {
          return implementationB(
              this as Query$FetchImplementations$interface$$ImplementationB);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchImplementations$interface<TRes> {
  factory CopyWith$Query$FetchImplementations$interface(
    Query$FetchImplementations$interface instance,
    TRes Function(Query$FetchImplementations$interface) then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface;

  factory CopyWith$Query$FetchImplementations$interface.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface;

  TRes call({
    String? typename,
    bool? b,
    Query$FetchImplementations$interface$self? self,
  });
  CopyWith$Query$FetchImplementations$interface$self<TRes> get self;
}

class _CopyWithImpl$Query$FetchImplementations$interface<TRes>
    implements CopyWith$Query$FetchImplementations$interface<TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface _instance;

  final TRes Function(Query$FetchImplementations$interface) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typename = _undefined,
    Object? b = _undefined,
    Object? self = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface(
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
        b: b == _undefined ? _instance.b : (b as bool?),
        self: self == _undefined || self == null
            ? _instance.self
            : (self as Query$FetchImplementations$interface$self),
      ));
  CopyWith$Query$FetchImplementations$interface$self<TRes> get self {
    final local$self = _instance.self;
    return CopyWith$Query$FetchImplementations$interface$self(
        local$self, (e) => call(self: e));
  }
}

class _CopyWithStubImpl$Query$FetchImplementations$interface<TRes>
    implements CopyWith$Query$FetchImplementations$interface<TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface(this._res);

  TRes _res;

  call({
    String? typename,
    bool? b,
    Query$FetchImplementations$interface$self? self,
  }) =>
      _res;
  CopyWith$Query$FetchImplementations$interface$self<TRes> get self =>
      CopyWith$Query$FetchImplementations$interface$self.stub(_res);
}

class Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self({required this.$__typename});

  factory Query$FetchImplementations$interface$self.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ImplementationA":
        return Query$FetchImplementations$interface$self$$ImplementationA
            .fromJson(json);

      case "ImplementationB":
        return Query$FetchImplementations$interface$self$$ImplementationB
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$FetchImplementations$interface$self(
            $__typename: (l$$__typename as String));
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
    if (!(other is Query$FetchImplementations$interface$self) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchImplementations$interface$self
    on Query$FetchImplementations$interface$self {
  CopyWith$Query$FetchImplementations$interface$self<
          Query$FetchImplementations$interface$self>
      get copyWith => CopyWith$Query$FetchImplementations$interface$self(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FetchImplementations$interface$self$$ImplementationA)
        implementationA,
    required _T Function(
            Query$FetchImplementations$interface$self$$ImplementationB)
        implementationB,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ImplementationA":
        return implementationA(
            this as Query$FetchImplementations$interface$self$$ImplementationA);

      case "ImplementationB":
        return implementationB(
            this as Query$FetchImplementations$interface$self$$ImplementationB);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchImplementations$interface$self$$ImplementationA)?
        implementationA,
    _T Function(Query$FetchImplementations$interface$self$$ImplementationB)?
        implementationB,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ImplementationA":
        if (implementationA != null) {
          return implementationA(this
              as Query$FetchImplementations$interface$self$$ImplementationA);
        } else {
          return orElse();
        }

      case "ImplementationB":
        if (implementationB != null) {
          return implementationB(this
              as Query$FetchImplementations$interface$self$$ImplementationB);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchImplementations$interface$self<TRes> {
  factory CopyWith$Query$FetchImplementations$interface$self(
    Query$FetchImplementations$interface$self instance,
    TRes Function(Query$FetchImplementations$interface$self) then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$self;

  factory CopyWith$Query$FetchImplementations$interface$self.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$self;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$FetchImplementations$interface$self<TRes>
    implements CopyWith$Query$FetchImplementations$interface$self<TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$self(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$self _instance;

  final TRes Function(Query$FetchImplementations$interface$self) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$FetchImplementations$interface$self(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$self<TRes>
    implements CopyWith$Query$FetchImplementations$interface$self<TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$self(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$FetchImplementations$interface$self$$ImplementationA
    implements Fragment$FragmentA, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self$$ImplementationA({
    this.$__typename = 'ImplementationA',
    this.s,
    this.$_s,
  });

  factory Query$FetchImplementations$interface$self$$ImplementationA.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$s = json['s'];
    final l$$_s = json['_s'];
    return Query$FetchImplementations$interface$self$$ImplementationA(
      $__typename: (l$$__typename as String),
      s: (l$s as String?),
      $_s: (l$$_s as String?),
    );
  }

  final String $__typename;

  final String? s;

  final String? $_s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$s = s;
    _resultData['s'] = l$s;
    final l$$_s = $_s;
    _resultData['_s'] = l$$_s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([
      l$$__typename,
      l$s,
      l$$_s,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FetchImplementations$interface$self$$ImplementationA) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$self$$ImplementationA
    on Query$FetchImplementations$interface$self$$ImplementationA {
  CopyWith$Query$FetchImplementations$interface$self$$ImplementationA<
          Query$FetchImplementations$interface$self$$ImplementationA>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$self$$ImplementationA(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$self$$ImplementationA<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$self$$ImplementationA(
    Query$FetchImplementations$interface$self$$ImplementationA instance,
    TRes Function(Query$FetchImplementations$interface$self$$ImplementationA)
        then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationA;

  factory CopyWith$Query$FetchImplementations$interface$self$$ImplementationA.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationA;

  TRes call({
    String? $__typename,
    String? s,
    String? $_s,
  });
}

class _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationA<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$self$$ImplementationA<
            TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationA(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$self$$ImplementationA _instance;

  final TRes Function(
      Query$FetchImplementations$interface$self$$ImplementationA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? s = _undefined,
    Object? $_s = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$self$$ImplementationA(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        s: s == _undefined ? _instance.s : (s as String?),
        $_s: $_s == _undefined ? _instance.$_s : ($_s as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationA<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$self$$ImplementationA<
            TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationA(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? s,
    String? $_s,
  }) =>
      _res;
}

class Query$FetchImplementations$interface$self$$ImplementationB
    implements Fragment$FragmentB, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$self$$ImplementationB({
    this.$__typename = 'ImplementationB',
    this.i,
  });

  factory Query$FetchImplementations$interface$self$$ImplementationB.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$i = json['i'];
    return Query$FetchImplementations$interface$self$$ImplementationB(
      $__typename: (l$$__typename as String),
      i: (l$i as int?),
    );
  }

  final String $__typename;

  final int? i;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$i = i;
    _resultData['i'] = l$i;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$i = i;
    return Object.hashAll([
      l$$__typename,
      l$i,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FetchImplementations$interface$self$$ImplementationB) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$self$$ImplementationB
    on Query$FetchImplementations$interface$self$$ImplementationB {
  CopyWith$Query$FetchImplementations$interface$self$$ImplementationB<
          Query$FetchImplementations$interface$self$$ImplementationB>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$self$$ImplementationB(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$self$$ImplementationB<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$self$$ImplementationB(
    Query$FetchImplementations$interface$self$$ImplementationB instance,
    TRes Function(Query$FetchImplementations$interface$self$$ImplementationB)
        then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationB;

  factory CopyWith$Query$FetchImplementations$interface$self$$ImplementationB.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationB;

  TRes call({
    String? $__typename,
    int? i,
  });
}

class _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationB<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$self$$ImplementationB<
            TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$self$$ImplementationB(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$self$$ImplementationB _instance;

  final TRes Function(
      Query$FetchImplementations$interface$self$$ImplementationB) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? i = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$self$$ImplementationB(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        i: i == _undefined ? _instance.i : (i as int?),
      ));
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationB<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$self$$ImplementationB<
            TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$self$$ImplementationB(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? i,
  }) =>
      _res;
}

class Query$FetchImplementations$interface$$ImplementationA
    implements Fragment$FragmentA, Query$FetchImplementations$interface {
  Query$FetchImplementations$interface$$ImplementationA({
    this.b,
    this.s,
    this.$_s,
    this.typename = 'ImplementationA',
    required this.self,
  });

  factory Query$FetchImplementations$interface$$ImplementationA.fromJson(
      Map<String, dynamic> json) {
    final l$b = json['b'];
    final l$s = json['s'];
    final l$$_s = json['_s'];
    final l$typename = json['typename'];
    final l$self = json['self'];
    return Query$FetchImplementations$interface$$ImplementationA(
      b: (l$b as bool?),
      s: (l$s as String?),
      $_s: (l$$_s as String?),
      typename: (l$typename as String),
      self: Query$FetchImplementations$interface$$ImplementationA$self.fromJson(
          (l$self as Map<String, dynamic>)),
    );
  }

  final bool? b;

  final String? s;

  final String? $_s;

  final String typename;

  final Query$FetchImplementations$interface$$ImplementationA$self self;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$b = b;
    _resultData['b'] = l$b;
    final l$s = s;
    _resultData['s'] = l$s;
    final l$$_s = $_s;
    _resultData['_s'] = l$$_s;
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    final l$self = self;
    _resultData['self'] = l$self.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$b = b;
    final l$s = s;
    final l$$_s = $_s;
    final l$typename = typename;
    final l$self = self;
    return Object.hashAll([
      l$b,
      l$s,
      l$$_s,
      l$typename,
      l$self,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchImplementations$interface$$ImplementationA) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) {
      return false;
    }
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
      return false;
    }
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationA
    on Query$FetchImplementations$interface$$ImplementationA {
  CopyWith$Query$FetchImplementations$interface$$ImplementationA<
          Query$FetchImplementations$interface$$ImplementationA>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationA(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$$ImplementationA<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$$ImplementationA(
    Query$FetchImplementations$interface$$ImplementationA instance,
    TRes Function(Query$FetchImplementations$interface$$ImplementationA) then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA;

  factory CopyWith$Query$FetchImplementations$interface$$ImplementationA.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA;

  TRes call({
    bool? b,
    String? s,
    String? $_s,
    String? typename,
    Query$FetchImplementations$interface$$ImplementationA$self? self,
  });
  CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<TRes>
      get self;
}

class _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA<TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationA<TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$$ImplementationA _instance;

  final TRes Function(Query$FetchImplementations$interface$$ImplementationA)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? b = _undefined,
    Object? s = _undefined,
    Object? $_s = _undefined,
    Object? typename = _undefined,
    Object? self = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$$ImplementationA(
        b: b == _undefined ? _instance.b : (b as bool?),
        s: s == _undefined ? _instance.s : (s as String?),
        $_s: $_s == _undefined ? _instance.$_s : ($_s as String?),
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
        self: self == _undefined || self == null
            ? _instance.self
            : (self
                as Query$FetchImplementations$interface$$ImplementationA$self),
      ));
  CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<TRes>
      get self {
    final local$self = _instance.self;
    return CopyWith$Query$FetchImplementations$interface$$ImplementationA$self(
        local$self, (e) => call(self: e));
  }
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationA<TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA(
      this._res);

  TRes _res;

  call({
    bool? b,
    String? s,
    String? $_s,
    String? typename,
    Query$FetchImplementations$interface$$ImplementationA$self? self,
  }) =>
      _res;
  CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<TRes>
      get self =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationA$self
              .stub(_res);
}

class Query$FetchImplementations$interface$$ImplementationB
    implements Fragment$FragmentB, Query$FetchImplementations$interface {
  Query$FetchImplementations$interface$$ImplementationB({
    this.i,
    this.typename = 'ImplementationB',
    this.b,
    required this.self,
  });

  factory Query$FetchImplementations$interface$$ImplementationB.fromJson(
      Map<String, dynamic> json) {
    final l$i = json['i'];
    final l$typename = json['typename'];
    final l$b = json['b'];
    final l$self = json['self'];
    return Query$FetchImplementations$interface$$ImplementationB(
      i: (l$i as int?),
      typename: (l$typename as String),
      b: (l$b as bool?),
      self: Query$FetchImplementations$interface$$ImplementationB$self.fromJson(
          (l$self as Map<String, dynamic>)),
    );
  }

  final int? i;

  final String typename;

  final bool? b;

  final Query$FetchImplementations$interface$$ImplementationB$self self;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i = i;
    _resultData['i'] = l$i;
    final l$typename = typename;
    _resultData['typename'] = l$typename;
    final l$b = b;
    _resultData['b'] = l$b;
    final l$self = self;
    _resultData['self'] = l$self.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i = i;
    final l$typename = typename;
    final l$b = b;
    final l$self = self;
    return Object.hashAll([
      l$i,
      l$typename,
      l$b,
      l$self,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchImplementations$interface$$ImplementationB) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    final l$typename = typename;
    final lOther$typename = other.typename;
    if (l$typename != lOther$typename) {
      return false;
    }
    final l$b = b;
    final lOther$b = other.b;
    if (l$b != lOther$b) {
      return false;
    }
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationB
    on Query$FetchImplementations$interface$$ImplementationB {
  CopyWith$Query$FetchImplementations$interface$$ImplementationB<
          Query$FetchImplementations$interface$$ImplementationB>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationB(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$$ImplementationB<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$$ImplementationB(
    Query$FetchImplementations$interface$$ImplementationB instance,
    TRes Function(Query$FetchImplementations$interface$$ImplementationB) then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB;

  factory CopyWith$Query$FetchImplementations$interface$$ImplementationB.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB;

  TRes call({
    int? i,
    String? typename,
    bool? b,
    Query$FetchImplementations$interface$$ImplementationB$self? self,
  });
  CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<TRes>
      get self;
}

class _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB<TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationB<TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$$ImplementationB _instance;

  final TRes Function(Query$FetchImplementations$interface$$ImplementationB)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? i = _undefined,
    Object? typename = _undefined,
    Object? b = _undefined,
    Object? self = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$$ImplementationB(
        i: i == _undefined ? _instance.i : (i as int?),
        typename: typename == _undefined || typename == null
            ? _instance.typename
            : (typename as String),
        b: b == _undefined ? _instance.b : (b as bool?),
        self: self == _undefined || self == null
            ? _instance.self
            : (self
                as Query$FetchImplementations$interface$$ImplementationB$self),
      ));
  CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<TRes>
      get self {
    final local$self = _instance.self;
    return CopyWith$Query$FetchImplementations$interface$$ImplementationB$self(
        local$self, (e) => call(self: e));
  }
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationB<TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB(
      this._res);

  TRes _res;

  call({
    int? i,
    String? typename,
    bool? b,
    Query$FetchImplementations$interface$$ImplementationB$self? self,
  }) =>
      _res;
  CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<TRes>
      get self =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationB$self
              .stub(_res);
}

class Query$FetchImplementations$interface$$ImplementationA$self
    implements Fragment$FragmentA, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$$ImplementationA$self({
    this.$__typename = 'ImplementationA',
    this.s,
    this.$_s,
  });

  factory Query$FetchImplementations$interface$$ImplementationA$self.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$s = json['s'];
    final l$$_s = json['_s'];
    return Query$FetchImplementations$interface$$ImplementationA$self(
      $__typename: (l$$__typename as String),
      s: (l$s as String?),
      $_s: (l$$_s as String?),
    );
  }

  final String $__typename;

  final String? s;

  final String? $_s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$s = s;
    _resultData['s'] = l$s;
    final l$$_s = $_s;
    _resultData['_s'] = l$$_s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$s = s;
    final l$$_s = $_s;
    return Object.hashAll([
      l$$__typename,
      l$s,
      l$$_s,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FetchImplementations$interface$$ImplementationA$self) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$$_s = $_s;
    final lOther$$_s = other.$_s;
    if (l$$_s != lOther$$_s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationA$self
    on Query$FetchImplementations$interface$$ImplementationA$self {
  CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<
          Query$FetchImplementations$interface$$ImplementationA$self>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationA$self(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$$ImplementationA$self(
    Query$FetchImplementations$interface$$ImplementationA$self instance,
    TRes Function(Query$FetchImplementations$interface$$ImplementationA$self)
        then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA$self;

  factory CopyWith$Query$FetchImplementations$interface$$ImplementationA$self.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA$self;

  TRes call({
    String? $__typename,
    String? s,
    String? $_s,
  });
}

class _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA$self<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<
            TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationA$self(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$$ImplementationA$self _instance;

  final TRes Function(
      Query$FetchImplementations$interface$$ImplementationA$self) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? s = _undefined,
    Object? $_s = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$$ImplementationA$self(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        s: s == _undefined ? _instance.s : (s as String?),
        $_s: $_s == _undefined ? _instance.$_s : ($_s as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA$self<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationA$self<
            TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationA$self(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? s,
    String? $_s,
  }) =>
      _res;
}

class Query$FetchImplementations$interface$$ImplementationB$self
    implements Fragment$FragmentB, Query$FetchImplementations$interface$self {
  Query$FetchImplementations$interface$$ImplementationB$self({
    this.$__typename = 'ImplementationB',
    this.i,
  });

  factory Query$FetchImplementations$interface$$ImplementationB$self.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$i = json['i'];
    return Query$FetchImplementations$interface$$ImplementationB$self(
      $__typename: (l$$__typename as String),
      i: (l$i as int?),
    );
  }

  final String $__typename;

  final int? i;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$i = i;
    _resultData['i'] = l$i;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$i = i;
    return Object.hashAll([
      l$$__typename,
      l$i,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FetchImplementations$interface$$ImplementationB$self) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchImplementations$interface$$ImplementationB$self
    on Query$FetchImplementations$interface$$ImplementationB$self {
  CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<
          Query$FetchImplementations$interface$$ImplementationB$self>
      get copyWith =>
          CopyWith$Query$FetchImplementations$interface$$ImplementationB$self(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<
    TRes> {
  factory CopyWith$Query$FetchImplementations$interface$$ImplementationB$self(
    Query$FetchImplementations$interface$$ImplementationB$self instance,
    TRes Function(Query$FetchImplementations$interface$$ImplementationB$self)
        then,
  ) = _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB$self;

  factory CopyWith$Query$FetchImplementations$interface$$ImplementationB$self.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB$self;

  TRes call({
    String? $__typename,
    int? i,
  });
}

class _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB$self<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<
            TRes> {
  _CopyWithImpl$Query$FetchImplementations$interface$$ImplementationB$self(
    this._instance,
    this._then,
  );

  final Query$FetchImplementations$interface$$ImplementationB$self _instance;

  final TRes Function(
      Query$FetchImplementations$interface$$ImplementationB$self) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? i = _undefined,
  }) =>
      _then(Query$FetchImplementations$interface$$ImplementationB$self(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        i: i == _undefined ? _instance.i : (i as int?),
      ));
}

class _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB$self<
        TRes>
    implements
        CopyWith$Query$FetchImplementations$interface$$ImplementationB$self<
            TRes> {
  _CopyWithStubImpl$Query$FetchImplementations$interface$$ImplementationB$self(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? i,
  }) =>
      _res;
}
