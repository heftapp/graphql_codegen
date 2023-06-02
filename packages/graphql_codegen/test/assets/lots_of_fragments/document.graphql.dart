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

class Fragment$FragmentA implements Fragment$FragmentI$$FieldA {
  Fragment$FragmentA({
    this.$__typename = 'FieldA',
    this.value,
    this.name,
  });

  factory Fragment$FragmentA.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$value = json['value'];
    final l$name = json['name'];
    return Fragment$FragmentA(
      $__typename: (l$$__typename as String),
      value: (l$value as String?),
      name: (l$name as String?),
    );
  }

  final String $__typename;

  final String? value;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$value = value;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$value,
      l$name,
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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
    String? $__typename,
    String? value,
    String? name,
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
    Object? $__typename = _undefined,
    Object? value = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$FragmentA(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        value: value == _undefined ? _instance.value : (value as String?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Fragment$FragmentA<TRes>
    implements CopyWith$Fragment$FragmentA<TRes> {
  _CopyWithStubImpl$Fragment$FragmentA(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? value,
    String? name,
  }) =>
      _res;
}

const fragmentDefinitionFragmentA = FragmentDefinitionNode(
  name: NameNode(value: 'FragmentA'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FieldA'),
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
      name: NameNode(value: 'value'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'FragmentI'),
      directives: [],
    ),
  ]),
);
const documentNodeFragmentFragmentA = DocumentNode(definitions: [
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentI,
]);

class Fragment$FragmentI {
  Fragment$FragmentI({
    required this.$__typename,
    this.name,
  });

  factory Fragment$FragmentI.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return Fragment$FragmentI$$FieldA.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$name = json['name'];
        return Fragment$FragmentI(
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
    if (!(other is Fragment$FragmentI) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$FragmentI on Fragment$FragmentI {
  CopyWith$Fragment$FragmentI<Fragment$FragmentI> get copyWith =>
      CopyWith$Fragment$FragmentI(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$FragmentI$$FieldA) fieldA,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FieldA":
        return fieldA(this as Fragment$FragmentI$$FieldA);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$FragmentI$$FieldA)? fieldA,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FieldA":
        if (fieldA != null) {
          return fieldA(this as Fragment$FragmentI$$FieldA);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$FragmentI<TRes> {
  factory CopyWith$Fragment$FragmentI(
    Fragment$FragmentI instance,
    TRes Function(Fragment$FragmentI) then,
  ) = _CopyWithImpl$Fragment$FragmentI;

  factory CopyWith$Fragment$FragmentI.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FragmentI;

  TRes call({
    String? $__typename,
    String? name,
  });
}

class _CopyWithImpl$Fragment$FragmentI<TRes>
    implements CopyWith$Fragment$FragmentI<TRes> {
  _CopyWithImpl$Fragment$FragmentI(
    this._instance,
    this._then,
  );

  final Fragment$FragmentI _instance;

  final TRes Function(Fragment$FragmentI) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$FragmentI(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Fragment$FragmentI<TRes>
    implements CopyWith$Fragment$FragmentI<TRes> {
  _CopyWithStubImpl$Fragment$FragmentI(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
  }) =>
      _res;
}

const fragmentDefinitionFragmentI = FragmentDefinitionNode(
  name: NameNode(value: 'FragmentI'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'IField'),
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
  ]),
);
const documentNodeFragmentFragmentI = DocumentNode(definitions: [
  fragmentDefinitionFragmentI,
]);

class Fragment$FragmentI$$FieldA implements Fragment$FragmentI {
  Fragment$FragmentI$$FieldA({
    this.$__typename = 'FieldA',
    this.name,
  });

  factory Fragment$FragmentI$$FieldA.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$name = json['name'];
    return Fragment$FragmentI$$FieldA(
      $__typename: (l$$__typename as String),
      name: (l$name as String?),
    );
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
    if (!(other is Fragment$FragmentI$$FieldA) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$FragmentI$$FieldA
    on Fragment$FragmentI$$FieldA {
  CopyWith$Fragment$FragmentI$$FieldA<Fragment$FragmentI$$FieldA>
      get copyWith => CopyWith$Fragment$FragmentI$$FieldA(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FragmentI$$FieldA<TRes> {
  factory CopyWith$Fragment$FragmentI$$FieldA(
    Fragment$FragmentI$$FieldA instance,
    TRes Function(Fragment$FragmentI$$FieldA) then,
  ) = _CopyWithImpl$Fragment$FragmentI$$FieldA;

  factory CopyWith$Fragment$FragmentI$$FieldA.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FragmentI$$FieldA;

  TRes call({
    String? $__typename,
    String? name,
  });
}

class _CopyWithImpl$Fragment$FragmentI$$FieldA<TRes>
    implements CopyWith$Fragment$FragmentI$$FieldA<TRes> {
  _CopyWithImpl$Fragment$FragmentI$$FieldA(
    this._instance,
    this._then,
  );

  final Fragment$FragmentI$$FieldA _instance;

  final TRes Function(Fragment$FragmentI$$FieldA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Fragment$FragmentI$$FieldA(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Fragment$FragmentI$$FieldA<TRes>
    implements CopyWith$Fragment$FragmentI$$FieldA<TRes> {
  _CopyWithStubImpl$Fragment$FragmentI$$FieldA(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
  }) =>
      _res;
}

class Query$FetchStuff {
  Query$FetchStuff({
    this.$__typename = 'Query',
    this.field,
  });

  factory Query$FetchStuff.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$field = json['field'];
    return Query$FetchStuff(
      $__typename: (l$$__typename as String),
      field: l$field == null
          ? null
          : Query$FetchStuff$field.fromJson((l$field as Map<String, dynamic>)),
    );
  }

  final String $__typename;

  final Query$FetchStuff$field? field;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$field = field;
    return Object.hashAll([
      l$$__typename,
      l$field,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchStuff) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchStuff on Query$FetchStuff {
  CopyWith$Query$FetchStuff<Query$FetchStuff> get copyWith =>
      CopyWith$Query$FetchStuff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchStuff<TRes> {
  factory CopyWith$Query$FetchStuff(
    Query$FetchStuff instance,
    TRes Function(Query$FetchStuff) then,
  ) = _CopyWithImpl$Query$FetchStuff;

  factory CopyWith$Query$FetchStuff.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchStuff;

  TRes call({
    String? $__typename,
    Query$FetchStuff$field? field,
  });
  CopyWith$Query$FetchStuff$field<TRes> get field;
}

class _CopyWithImpl$Query$FetchStuff<TRes>
    implements CopyWith$Query$FetchStuff<TRes> {
  _CopyWithImpl$Query$FetchStuff(
    this._instance,
    this._then,
  );

  final Query$FetchStuff _instance;

  final TRes Function(Query$FetchStuff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? field = _undefined,
  }) =>
      _then(Query$FetchStuff(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        field: field == _undefined
            ? _instance.field
            : (field as Query$FetchStuff$field?),
      ));
  CopyWith$Query$FetchStuff$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$FetchStuff$field.stub(_then(_instance))
        : CopyWith$Query$FetchStuff$field(local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$FetchStuff<TRes>
    implements CopyWith$Query$FetchStuff<TRes> {
  _CopyWithStubImpl$Query$FetchStuff(this._res);

  TRes _res;

  call({
    String? $__typename,
    Query$FetchStuff$field? field,
  }) =>
      _res;
  CopyWith$Query$FetchStuff$field<TRes> get field =>
      CopyWith$Query$FetchStuff$field.stub(_res);
}

const documentNodeQueryFetchStuff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchStuff'),
    variableDefinitions: [],
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
        name: NameNode(value: 'field'),
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
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'FragmentA'),
            directives: [],
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'FieldA'),
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
                name: NameNode(value: 'value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'IField'),
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
                ]),
              ),
            ]),
          ),
        ]),
      ),
    ]),
  ),
  fragmentDefinitionFragmentA,
  fragmentDefinitionFragmentI,
]);

class Query$FetchStuff$field {
  Query$FetchStuff$field({
    required this.$__typename,
    this.name,
  });

  factory Query$FetchStuff$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return Query$FetchStuff$field$$FieldA.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$name = json['name'];
        return Query$FetchStuff$field(
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
    if (!(other is Query$FetchStuff$field) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchStuff$field on Query$FetchStuff$field {
  CopyWith$Query$FetchStuff$field<Query$FetchStuff$field> get copyWith =>
      CopyWith$Query$FetchStuff$field(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchStuff$field$$FieldA) fieldA,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FieldA":
        return fieldA(this as Query$FetchStuff$field$$FieldA);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchStuff$field$$FieldA)? fieldA,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FieldA":
        if (fieldA != null) {
          return fieldA(this as Query$FetchStuff$field$$FieldA);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchStuff$field<TRes> {
  factory CopyWith$Query$FetchStuff$field(
    Query$FetchStuff$field instance,
    TRes Function(Query$FetchStuff$field) then,
  ) = _CopyWithImpl$Query$FetchStuff$field;

  factory CopyWith$Query$FetchStuff$field.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchStuff$field;

  TRes call({
    String? $__typename,
    String? name,
  });
}

class _CopyWithImpl$Query$FetchStuff$field<TRes>
    implements CopyWith$Query$FetchStuff$field<TRes> {
  _CopyWithImpl$Query$FetchStuff$field(
    this._instance,
    this._then,
  );

  final Query$FetchStuff$field _instance;

  final TRes Function(Query$FetchStuff$field) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$FetchStuff$field(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchStuff$field<TRes>
    implements CopyWith$Query$FetchStuff$field<TRes> {
  _CopyWithStubImpl$Query$FetchStuff$field(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
  }) =>
      _res;
}

class Query$FetchStuff$field$$FieldA
    implements
        Fragment$FragmentA,
        Fragment$FragmentI$$FieldA,
        Query$FetchStuff$field {
  Query$FetchStuff$field$$FieldA({
    this.$__typename = 'FieldA',
    this.value,
    this.name,
  });

  factory Query$FetchStuff$field$$FieldA.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$value = json['value'];
    final l$name = json['name'];
    return Query$FetchStuff$field$$FieldA(
      $__typename: (l$$__typename as String),
      value: (l$value as String?),
      name: (l$name as String?),
    );
  }

  final String $__typename;

  final String? value;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$value = value;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$value,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchStuff$field$$FieldA) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$FetchStuff$field$$FieldA
    on Query$FetchStuff$field$$FieldA {
  CopyWith$Query$FetchStuff$field$$FieldA<Query$FetchStuff$field$$FieldA>
      get copyWith => CopyWith$Query$FetchStuff$field$$FieldA(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchStuff$field$$FieldA<TRes> {
  factory CopyWith$Query$FetchStuff$field$$FieldA(
    Query$FetchStuff$field$$FieldA instance,
    TRes Function(Query$FetchStuff$field$$FieldA) then,
  ) = _CopyWithImpl$Query$FetchStuff$field$$FieldA;

  factory CopyWith$Query$FetchStuff$field$$FieldA.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchStuff$field$$FieldA;

  TRes call({
    String? $__typename,
    String? value,
    String? name,
  });
}

class _CopyWithImpl$Query$FetchStuff$field$$FieldA<TRes>
    implements CopyWith$Query$FetchStuff$field$$FieldA<TRes> {
  _CopyWithImpl$Query$FetchStuff$field$$FieldA(
    this._instance,
    this._then,
  );

  final Query$FetchStuff$field$$FieldA _instance;

  final TRes Function(Query$FetchStuff$field$$FieldA) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? value = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$FetchStuff$field$$FieldA(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        value: value == _undefined ? _instance.value : (value as String?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchStuff$field$$FieldA<TRes>
    implements CopyWith$Query$FetchStuff$field$$FieldA<TRes> {
  _CopyWithStubImpl$Query$FetchStuff$field$$FieldA(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? value,
    String? name,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'IField': {'FieldA'}
};
