import 'package:gql/ast.dart';

class Input$In {
  factory Input$In({
    String? string,
    int? $int,
  }) =>
      Input$In._({
        if (string != null) r'string': string,
        if ($int != null) r'int': $int,
      });

  Input$In._(this._$data);

  factory Input$In.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('string')) {
      final l$string = data['string'];
      result$data['string'] = (l$string as String?);
    }
    if (data.containsKey('int')) {
      final l$$int = data['int'];
      result$data['int'] = (l$$int as int?);
    }
    return Input$In._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get string => (_$data['string'] as String?);

  int? get $int => (_$data['int'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('string')) {
      final l$string = string;
      result$data['string'] = l$string;
    }
    if (_$data.containsKey('int')) {
      final l$$int = $int;
      result$data['int'] = l$$int;
    }
    return result$data;
  }

  CopyWith$Input$In<Input$In> get copyWith => CopyWith$Input$In(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$In || runtimeType != other.runtimeType) {
      return false;
    }
    final l$string = string;
    final lOther$string = other.string;
    if (_$data.containsKey('string') != other._$data.containsKey('string')) {
      return false;
    }
    if (l$string != lOther$string) {
      return false;
    }
    final l$$int = $int;
    final lOther$$int = other.$int;
    if (_$data.containsKey('int') != other._$data.containsKey('int')) {
      return false;
    }
    if (l$$int != lOther$$int) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$string = string;
    final l$$int = $int;
    return Object.hashAll([
      _$data.containsKey('string') ? l$string : const {},
      _$data.containsKey('int') ? l$$int : const {},
    ]);
  }
}

abstract class CopyWith$Input$In<TRes> {
  factory CopyWith$Input$In(
    Input$In instance,
    TRes Function(Input$In) then,
  ) = _CopyWithImpl$Input$In;

  factory CopyWith$Input$In.stub(TRes res) = _CopyWithStubImpl$Input$In;

  TRes call({
    String? string,
    int? $int,
  });
}

class _CopyWithImpl$Input$In<TRes> implements CopyWith$Input$In<TRes> {
  _CopyWithImpl$Input$In(
    this._instance,
    this._then,
  );

  final Input$In _instance;

  final TRes Function(Input$In) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? string = _undefined,
    Object? $int = _undefined,
  }) =>
      _then(Input$In._({
        ..._instance._$data,
        if (string != _undefined) 'string': (string as String?),
        if ($int != _undefined) 'int': ($int as int?),
      }));
}

class _CopyWithStubImpl$Input$In<TRes> implements CopyWith$Input$In<TRes> {
  _CopyWithStubImpl$Input$In(this._res);

  TRes _res;

  call({
    String? string,
    int? $int,
  }) =>
      _res;
}

enum Enum$E {
  FOO,
  BAR,
  $unknown;

  factory Enum$E.fromJson(String value) => fromJson$Enum$E(value);

  String toJson() => toJson$Enum$E(this);
}

String toJson$Enum$E(Enum$E e) {
  switch (e) {
    case Enum$E.FOO:
      return r'FOO';
    case Enum$E.BAR:
      return r'BAR';
    case Enum$E.$unknown:
      return r'$unknown';
  }
}

Enum$E fromJson$Enum$E(String value) {
  switch (value) {
    case r'FOO':
      return Enum$E.FOO;
    case r'BAR':
      return Enum$E.BAR;
    default:
      return Enum$E.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  BAR,
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
    case Enum$__TypeKind.BAR:
      return r'BAR';
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
    case r'BAR':
      return Enum$__TypeKind.BAR;
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
  BAR,
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
    case Enum$__DirectiveLocation.BAR:
      return r'BAR';
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
    case r'BAR':
      return Enum$__DirectiveLocation.BAR;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

class Query$Q {
  Query$Q({
    this.string,
    this.$int,
    this.i,
    this.$__typename = 'Q',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$string = json['string'];
    final l$$int = json['int'];
    final l$i = json['i'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      string: (l$string as String?),
      $int: (l$$int as int?),
      i: l$i == null ? null : Query$Q$i.fromJson((l$i as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? string;

  final int? $int;

  final Query$Q$i? i;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$string = string;
    _resultData['string'] = l$string;
    final l$$int = $int;
    _resultData['int'] = l$$int;
    final l$i = i;
    _resultData['i'] = l$i?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$string = string;
    final l$$int = $int;
    final l$i = i;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$string,
      l$$int,
      l$i,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q || runtimeType != other.runtimeType) {
      return false;
    }
    final l$string = string;
    final lOther$string = other.string;
    if (l$string != lOther$string) {
      return false;
    }
    final l$$int = $int;
    final lOther$$int = other.$int;
    if (l$$int != lOther$$int) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
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

  TRes call({
    String? string,
    int? $int,
    Query$Q$i? i,
    String? $__typename,
  });
  CopyWith$Query$Q$i<TRes> get i;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? string = _undefined,
    Object? $int = _undefined,
    Object? i = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        string: string == _undefined ? _instance.string : (string as String?),
        $int: $int == _undefined ? _instance.$int : ($int as int?),
        i: i == _undefined ? _instance.i : (i as Query$Q$i?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Q$i<TRes> get i {
    final local$i = _instance.i;
    return local$i == null
        ? CopyWith$Query$Q$i.stub(_then(_instance))
        : CopyWith$Query$Q$i(local$i, (e) => call(i: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    String? string,
    int? $int,
    Query$Q$i? i,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Q$i<TRes> get i => CopyWith$Query$Q$i.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'string'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'int'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'i'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'int'),
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
]);

class Query$Q$i {
  Query$Q$i({
    this.$int,
    required this.$__typename,
  });

  factory Query$Q$i.fromJson(Map<String, dynamic> json) {
    final l$$int = json['int'];
    final l$$__typename = json['__typename'];
    return Query$Q$i(
      $int: (l$$int as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? $int;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$int = $int;
    _resultData['int'] = l$$int;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$int = $int;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$int,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q$i || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$int = $int;
    final lOther$$int = other.$int;
    if (l$$int != lOther$$int) {
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

extension UtilityExtension$Query$Q$i on Query$Q$i {
  CopyWith$Query$Q$i<Query$Q$i> get copyWith => CopyWith$Query$Q$i(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$i<TRes> {
  factory CopyWith$Query$Q$i(
    Query$Q$i instance,
    TRes Function(Query$Q$i) then,
  ) = _CopyWithImpl$Query$Q$i;

  factory CopyWith$Query$Q$i.stub(TRes res) = _CopyWithStubImpl$Query$Q$i;

  TRes call({
    int? $int,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$i<TRes> implements CopyWith$Query$Q$i<TRes> {
  _CopyWithImpl$Query$Q$i(
    this._instance,
    this._then,
  );

  final Query$Q$i _instance;

  final TRes Function(Query$Q$i) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $int = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$i(
        $int: $int == _undefined ? _instance.$int : ($int as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$i<TRes> implements CopyWith$Query$Q$i<TRes> {
  _CopyWithStubImpl$Query$Q$i(this._res);

  TRes _res;

  call({
    int? $int,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$M {
  Mutation$M({
    this.string,
    this.$__typename = 'M',
  });

  factory Mutation$M.fromJson(Map<String, dynamic> json) {
    final l$string = json['string'];
    final l$$__typename = json['__typename'];
    return Mutation$M(
      string: (l$string as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? string;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$string = string;
    _resultData['string'] = l$string;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$string = string;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$string,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$M || runtimeType != other.runtimeType) {
      return false;
    }
    final l$string = string;
    final lOther$string = other.string;
    if (l$string != lOther$string) {
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

extension UtilityExtension$Mutation$M on Mutation$M {
  CopyWith$Mutation$M<Mutation$M> get copyWith => CopyWith$Mutation$M(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$M<TRes> {
  factory CopyWith$Mutation$M(
    Mutation$M instance,
    TRes Function(Mutation$M) then,
  ) = _CopyWithImpl$Mutation$M;

  factory CopyWith$Mutation$M.stub(TRes res) = _CopyWithStubImpl$Mutation$M;

  TRes call({
    String? string,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$M<TRes> implements CopyWith$Mutation$M<TRes> {
  _CopyWithImpl$Mutation$M(
    this._instance,
    this._then,
  );

  final Mutation$M _instance;

  final TRes Function(Mutation$M) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? string = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$M(
        string: string == _undefined ? _instance.string : (string as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$M<TRes> implements CopyWith$Mutation$M<TRes> {
  _CopyWithStubImpl$Mutation$M(this._res);

  TRes _res;

  call({
    String? string,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationM = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'M'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'string'),
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
const possibleTypesMap = <String, Set<String>>{};
