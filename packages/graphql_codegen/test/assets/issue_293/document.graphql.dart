import 'package:gql/ast.dart';

class Input$I {
  factory Input$I({
    required bool nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
  }) =>
      Input$I._({
        r'nonNull': nonNull,
        if (nonNullWithDefault != null)
          r'nonNullWithDefault': nonNullWithDefault,
        if (nullable != null) r'nullable': nullable,
        if (nullableWithDefault != null)
          r'nullableWithDefault': nullableWithDefault,
      });

  Input$I._(this._$data);

  factory Input$I.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nonNull = data['nonNull'];
    result$data['nonNull'] = (l$nonNull as bool);
    if (data.containsKey('nonNullWithDefault')) {
      final l$nonNullWithDefault = data['nonNullWithDefault'];
      result$data['nonNullWithDefault'] = (l$nonNullWithDefault as bool);
    }
    if (data.containsKey('nullable')) {
      final l$nullable = data['nullable'];
      result$data['nullable'] = (l$nullable as bool?);
    }
    if (data.containsKey('nullableWithDefault')) {
      final l$nullableWithDefault = data['nullableWithDefault'];
      result$data['nullableWithDefault'] = (l$nullableWithDefault as bool?);
    }
    return Input$I._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get nonNull => (_$data['nonNull'] as bool);
  bool? get nonNullWithDefault => (_$data['nonNullWithDefault'] as bool?);
  bool? get nullable => (_$data['nullable'] as bool?);
  bool? get nullableWithDefault => (_$data['nullableWithDefault'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nonNull = nonNull;
    result$data['nonNull'] = l$nonNull;
    if (_$data.containsKey('nonNullWithDefault')) {
      final l$nonNullWithDefault = nonNullWithDefault;
      result$data['nonNullWithDefault'] = l$nonNullWithDefault;
    }
    if (_$data.containsKey('nullable')) {
      final l$nullable = nullable;
      result$data['nullable'] = l$nullable;
    }
    if (_$data.containsKey('nullableWithDefault')) {
      final l$nullableWithDefault = nullableWithDefault;
      result$data['nullableWithDefault'] = l$nullableWithDefault;
    }
    return result$data;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$I) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$nonNull = nonNull;
    final lOther$nonNull = other.nonNull;
    if (l$nonNull != lOther$nonNull) {
      return false;
    }
    final l$nonNullWithDefault = nonNullWithDefault;
    final lOther$nonNullWithDefault = other.nonNullWithDefault;
    if (_$data.containsKey('nonNullWithDefault') !=
        other._$data.containsKey('nonNullWithDefault')) {
      return false;
    }
    if (l$nonNullWithDefault != lOther$nonNullWithDefault) {
      return false;
    }
    final l$nullable = nullable;
    final lOther$nullable = other.nullable;
    if (_$data.containsKey('nullable') !=
        other._$data.containsKey('nullable')) {
      return false;
    }
    if (l$nullable != lOther$nullable) {
      return false;
    }
    final l$nullableWithDefault = nullableWithDefault;
    final lOther$nullableWithDefault = other.nullableWithDefault;
    if (_$data.containsKey('nullableWithDefault') !=
        other._$data.containsKey('nullableWithDefault')) {
      return false;
    }
    if (l$nullableWithDefault != lOther$nullableWithDefault) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nonNull = nonNull;
    final l$nonNullWithDefault = nonNullWithDefault;
    final l$nullable = nullable;
    final l$nullableWithDefault = nullableWithDefault;
    return Object.hashAll([
      l$nonNull,
      _$data.containsKey('nonNullWithDefault')
          ? l$nonNullWithDefault
          : const {},
      _$data.containsKey('nullable') ? l$nullable : const {},
      _$data.containsKey('nullableWithDefault')
          ? l$nullableWithDefault
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(
    Input$I instance,
    TRes Function(Input$I) then,
  ) = _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({
    bool? nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
  });
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(
    this._instance,
    this._then,
  );

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nonNull = _undefined,
    Object? nonNullWithDefault = _undefined,
    Object? nullable = _undefined,
    Object? nullableWithDefault = _undefined,
  }) =>
      _then(Input$I._({
        ..._instance._$data,
        if (nonNull != _undefined && nonNull != null)
          'nonNull': (nonNull as bool),
        if (nonNullWithDefault != _undefined && nonNullWithDefault != null)
          'nonNullWithDefault': (nonNullWithDefault as bool),
        if (nullable != _undefined) 'nullable': (nullable as bool?),
        if (nullableWithDefault != _undefined)
          'nullableWithDefault': (nullableWithDefault as bool?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({
    bool? nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
  }) =>
      _res;
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

class Variables$Query$Q {
  factory Variables$Query$Q({
    required bool nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
    Input$I? i,
  }) =>
      Variables$Query$Q._({
        r'nonNull': nonNull,
        if (nonNullWithDefault != null)
          r'nonNullWithDefault': nonNullWithDefault,
        if (nullable != null) r'nullable': nullable,
        if (nullableWithDefault != null)
          r'nullableWithDefault': nullableWithDefault,
        if (i != null) r'i': i,
      });

  Variables$Query$Q._(this._$data);

  factory Variables$Query$Q.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nonNull = data['nonNull'];
    result$data['nonNull'] = (l$nonNull as bool);
    if (data.containsKey('nonNullWithDefault')) {
      final l$nonNullWithDefault = data['nonNullWithDefault'];
      result$data['nonNullWithDefault'] = (l$nonNullWithDefault as bool);
    }
    if (data.containsKey('nullable')) {
      final l$nullable = data['nullable'];
      result$data['nullable'] = (l$nullable as bool?);
    }
    if (data.containsKey('nullableWithDefault')) {
      final l$nullableWithDefault = data['nullableWithDefault'];
      result$data['nullableWithDefault'] = (l$nullableWithDefault as bool?);
    }
    if (data.containsKey('i')) {
      final l$i = data['i'];
      result$data['i'] =
          l$i == null ? null : Input$I.fromJson((l$i as Map<String, dynamic>));
    }
    return Variables$Query$Q._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get nonNull => (_$data['nonNull'] as bool);
  bool? get nonNullWithDefault => (_$data['nonNullWithDefault'] as bool?);
  bool? get nullable => (_$data['nullable'] as bool?);
  bool? get nullableWithDefault => (_$data['nullableWithDefault'] as bool?);
  Input$I? get i => (_$data['i'] as Input$I?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nonNull = nonNull;
    result$data['nonNull'] = l$nonNull;
    if (_$data.containsKey('nonNullWithDefault')) {
      final l$nonNullWithDefault = nonNullWithDefault;
      result$data['nonNullWithDefault'] = l$nonNullWithDefault;
    }
    if (_$data.containsKey('nullable')) {
      final l$nullable = nullable;
      result$data['nullable'] = l$nullable;
    }
    if (_$data.containsKey('nullableWithDefault')) {
      final l$nullableWithDefault = nullableWithDefault;
      result$data['nullableWithDefault'] = l$nullableWithDefault;
    }
    if (_$data.containsKey('i')) {
      final l$i = i;
      result$data['i'] = l$i?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Q<Variables$Query$Q> get copyWith =>
      CopyWith$Variables$Query$Q(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$nonNull = nonNull;
    final lOther$nonNull = other.nonNull;
    if (l$nonNull != lOther$nonNull) {
      return false;
    }
    final l$nonNullWithDefault = nonNullWithDefault;
    final lOther$nonNullWithDefault = other.nonNullWithDefault;
    if (_$data.containsKey('nonNullWithDefault') !=
        other._$data.containsKey('nonNullWithDefault')) {
      return false;
    }
    if (l$nonNullWithDefault != lOther$nonNullWithDefault) {
      return false;
    }
    final l$nullable = nullable;
    final lOther$nullable = other.nullable;
    if (_$data.containsKey('nullable') !=
        other._$data.containsKey('nullable')) {
      return false;
    }
    if (l$nullable != lOther$nullable) {
      return false;
    }
    final l$nullableWithDefault = nullableWithDefault;
    final lOther$nullableWithDefault = other.nullableWithDefault;
    if (_$data.containsKey('nullableWithDefault') !=
        other._$data.containsKey('nullableWithDefault')) {
      return false;
    }
    if (l$nullableWithDefault != lOther$nullableWithDefault) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (_$data.containsKey('i') != other._$data.containsKey('i')) {
      return false;
    }
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nonNull = nonNull;
    final l$nonNullWithDefault = nonNullWithDefault;
    final l$nullable = nullable;
    final l$nullableWithDefault = nullableWithDefault;
    final l$i = i;
    return Object.hashAll([
      l$nonNull,
      _$data.containsKey('nonNullWithDefault')
          ? l$nonNullWithDefault
          : const {},
      _$data.containsKey('nullable') ? l$nullable : const {},
      _$data.containsKey('nullableWithDefault')
          ? l$nullableWithDefault
          : const {},
      _$data.containsKey('i') ? l$i : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Q<TRes> {
  factory CopyWith$Variables$Query$Q(
    Variables$Query$Q instance,
    TRes Function(Variables$Query$Q) then,
  ) = _CopyWithImpl$Variables$Query$Q;

  factory CopyWith$Variables$Query$Q.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Q;

  TRes call({
    bool? nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
    Input$I? i,
  });
  CopyWith$Input$I<TRes> get i;
}

class _CopyWithImpl$Variables$Query$Q<TRes>
    implements CopyWith$Variables$Query$Q<TRes> {
  _CopyWithImpl$Variables$Query$Q(
    this._instance,
    this._then,
  );

  final Variables$Query$Q _instance;

  final TRes Function(Variables$Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nonNull = _undefined,
    Object? nonNullWithDefault = _undefined,
    Object? nullable = _undefined,
    Object? nullableWithDefault = _undefined,
    Object? i = _undefined,
  }) =>
      _then(Variables$Query$Q._({
        ..._instance._$data,
        if (nonNull != _undefined && nonNull != null)
          'nonNull': (nonNull as bool),
        if (nonNullWithDefault != _undefined && nonNullWithDefault != null)
          'nonNullWithDefault': (nonNullWithDefault as bool),
        if (nullable != _undefined) 'nullable': (nullable as bool?),
        if (nullableWithDefault != _undefined)
          'nullableWithDefault': (nullableWithDefault as bool?),
        if (i != _undefined) 'i': (i as Input$I?),
      }));
  CopyWith$Input$I<TRes> get i {
    final local$i = _instance.i;
    return local$i == null
        ? CopyWith$Input$I.stub(_then(_instance))
        : CopyWith$Input$I(local$i, (e) => call(i: e));
  }
}

class _CopyWithStubImpl$Variables$Query$Q<TRes>
    implements CopyWith$Variables$Query$Q<TRes> {
  _CopyWithStubImpl$Variables$Query$Q(this._res);

  TRes _res;

  call({
    bool? nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
    Input$I? i,
  }) =>
      _res;
  CopyWith$Input$I<TRes> get i => CopyWith$Input$I.stub(_res);
}

class Query$Q {
  Query$Q({
    this.fNonNull,
    this.fNonNullWithDefault,
    this.fNullable,
    this.fNullableWithDefault,
    this.inputField,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$fNonNull = json['fNonNull'];
    final l$fNonNullWithDefault = json['fNonNullWithDefault'];
    final l$fNullable = json['fNullable'];
    final l$fNullableWithDefault = json['fNullableWithDefault'];
    final l$inputField = json['inputField'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      fNonNull: (l$fNonNull as int?),
      fNonNullWithDefault: (l$fNonNullWithDefault as int?),
      fNullable: (l$fNullable as int?),
      fNullableWithDefault: (l$fNullableWithDefault as int?),
      inputField: (l$inputField as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? fNonNull;

  final int? fNonNullWithDefault;

  final int? fNullable;

  final int? fNullableWithDefault;

  final int? inputField;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fNonNull = fNonNull;
    _resultData['fNonNull'] = l$fNonNull;
    final l$fNonNullWithDefault = fNonNullWithDefault;
    _resultData['fNonNullWithDefault'] = l$fNonNullWithDefault;
    final l$fNullable = fNullable;
    _resultData['fNullable'] = l$fNullable;
    final l$fNullableWithDefault = fNullableWithDefault;
    _resultData['fNullableWithDefault'] = l$fNullableWithDefault;
    final l$inputField = inputField;
    _resultData['inputField'] = l$inputField;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fNonNull = fNonNull;
    final l$fNonNullWithDefault = fNonNullWithDefault;
    final l$fNullable = fNullable;
    final l$fNullableWithDefault = fNullableWithDefault;
    final l$inputField = inputField;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fNonNull,
      l$fNonNullWithDefault,
      l$fNullable,
      l$fNullableWithDefault,
      l$inputField,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fNonNull = fNonNull;
    final lOther$fNonNull = other.fNonNull;
    if (l$fNonNull != lOther$fNonNull) {
      return false;
    }
    final l$fNonNullWithDefault = fNonNullWithDefault;
    final lOther$fNonNullWithDefault = other.fNonNullWithDefault;
    if (l$fNonNullWithDefault != lOther$fNonNullWithDefault) {
      return false;
    }
    final l$fNullable = fNullable;
    final lOther$fNullable = other.fNullable;
    if (l$fNullable != lOther$fNullable) {
      return false;
    }
    final l$fNullableWithDefault = fNullableWithDefault;
    final lOther$fNullableWithDefault = other.fNullableWithDefault;
    if (l$fNullableWithDefault != lOther$fNullableWithDefault) {
      return false;
    }
    final l$inputField = inputField;
    final lOther$inputField = other.inputField;
    if (l$inputField != lOther$inputField) {
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
    int? fNonNull,
    int? fNonNullWithDefault,
    int? fNullable,
    int? fNullableWithDefault,
    int? inputField,
    String? $__typename,
  });
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
    Object? fNonNull = _undefined,
    Object? fNonNullWithDefault = _undefined,
    Object? fNullable = _undefined,
    Object? fNullableWithDefault = _undefined,
    Object? inputField = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        fNonNull:
            fNonNull == _undefined ? _instance.fNonNull : (fNonNull as int?),
        fNonNullWithDefault: fNonNullWithDefault == _undefined
            ? _instance.fNonNullWithDefault
            : (fNonNullWithDefault as int?),
        fNullable:
            fNullable == _undefined ? _instance.fNullable : (fNullable as int?),
        fNullableWithDefault: fNullableWithDefault == _undefined
            ? _instance.fNullableWithDefault
            : (fNullableWithDefault as int?),
        inputField: inputField == _undefined
            ? _instance.inputField
            : (inputField as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    int? fNonNull,
    int? fNonNullWithDefault,
    int? fNullable,
    int? fNullableWithDefault,
    int? inputField,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nonNull')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nonNullWithDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nullable')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nullableWithDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'i')),
        type: NamedTypeNode(
          name: NameNode(value: 'I'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'field'),
        alias: NameNode(value: 'fNonNull'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nonNull')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'field'),
        alias: NameNode(value: 'fNonNullWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nonNullWithDefault')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'field'),
        alias: NameNode(value: 'fNullable'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nullable')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'field'),
        alias: NameNode(value: 'fNullableWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nullableWithDefault')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'inputField'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'i')),
          )
        ],
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
