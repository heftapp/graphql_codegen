class Input$CarInput {
  factory Input$CarInput({
    String? idNullable,
    required String idNonNullable,
  }) =>
      Input$CarInput._({
        if (idNullable != null) r'idNullable': idNullable,
        r'idNonNullable': idNonNullable,
      });

  Input$CarInput._(this._$data);

  factory Input$CarInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('idNullable')) {
      final l$idNullable = data['idNullable'];
      result$data['idNullable'] = (l$idNullable as String?);
    }
    final l$idNonNullable = data['idNonNullable'];
    result$data['idNonNullable'] = (l$idNonNullable as String);
    return Input$CarInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get idNullable => (_$data['idNullable'] as String?);

  String get idNonNullable => (_$data['idNonNullable'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$idNullable = _$data.containsKey('idNullable') ? idNullable : null;
    result$data['idNullable'] = l$idNullable;
    final l$idNonNullable = idNonNullable;
    result$data['idNonNullable'] = l$idNonNullable;
    return result$data;
  }

  CopyWith$Input$CarInput<Input$CarInput> get copyWith =>
      CopyWith$Input$CarInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CarInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$idNullable = idNullable;
    final lOther$idNullable = other.idNullable;
    if (_$data.containsKey('idNullable') !=
        other._$data.containsKey('idNullable')) {
      return false;
    }
    if (l$idNullable != lOther$idNullable) {
      return false;
    }
    final l$idNonNullable = idNonNullable;
    final lOther$idNonNullable = other.idNonNullable;
    if (l$idNonNullable != lOther$idNonNullable) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$idNullable = idNullable;
    final l$idNonNullable = idNonNullable;
    return Object.hashAll([
      _$data.containsKey('idNullable') ? l$idNullable : const {},
      l$idNonNullable,
    ]);
  }
}

abstract class CopyWith$Input$CarInput<TRes> {
  factory CopyWith$Input$CarInput(
    Input$CarInput instance,
    TRes Function(Input$CarInput) then,
  ) = _CopyWithImpl$Input$CarInput;

  factory CopyWith$Input$CarInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarInput;

  TRes call({
    String? idNullable,
    String? idNonNullable,
  });
}

class _CopyWithImpl$Input$CarInput<TRes>
    implements CopyWith$Input$CarInput<TRes> {
  _CopyWithImpl$Input$CarInput(
    this._instance,
    this._then,
  );

  final Input$CarInput _instance;

  final TRes Function(Input$CarInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? idNullable = _undefined,
    Object? idNonNullable = _undefined,
  }) =>
      _then(Input$CarInput._({
        ..._instance._$data,
        if (idNullable != _undefined) 'idNullable': (idNullable as String?),
        if (idNonNullable != _undefined && idNonNullable != null)
          'idNonNullable': (idNonNullable as String),
      }));
}

class _CopyWithStubImpl$Input$CarInput<TRes>
    implements CopyWith$Input$CarInput<TRes> {
  _CopyWithStubImpl$Input$CarInput(this._res);

  TRes _res;

  call({
    String? idNullable,
    String? idNonNullable,
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

const possibleTypesMap = <String, Set<String>>{};
