class Input$I1 {
  factory Input$I1.v1(int v1) => Input$I1._({'v1': v1});

  factory Input$I1.v2(int v2) => Input$I1._({'v2': v2});

  factory Input$I1.v3(int v3) => Input$I1._({'v3': v3});

  Input$I1._(this._$data);

  factory Input$I1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('v1')) {
      final l$v1 = data['v1'];
      result$data['v1'] = (l$v1 as int?);
    }
    if (data.containsKey('v2')) {
      final l$v2 = data['v2'];
      result$data['v2'] = (l$v2 as int?);
    }
    if (data.containsKey('v3')) {
      final l$v3 = data['v3'];
      result$data['v3'] = (l$v3 as int?);
    }
    return Input$I1._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get v1 => (_$data['v1'] as int?);

  int? get v2 => (_$data['v2'] as int?);

  int? get v3 => (_$data['v3'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('v1')) {
      final l$v1 = v1;
      result$data['v1'] = l$v1;
    }
    if (_$data.containsKey('v2')) {
      final l$v2 = v2;
      result$data['v2'] = l$v2;
    }
    if (_$data.containsKey('v3')) {
      final l$v3 = v3;
      result$data['v3'] = l$v3;
    }
    return result$data;
  }

  CopyWith$Input$I1<Input$I1> get copyWith => CopyWith$Input$I1(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I1 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$v1 = v1;
    final lOther$v1 = other.v1;
    if (_$data.containsKey('v1') != other._$data.containsKey('v1')) {
      return false;
    }
    if (l$v1 != lOther$v1) {
      return false;
    }
    final l$v2 = v2;
    final lOther$v2 = other.v2;
    if (_$data.containsKey('v2') != other._$data.containsKey('v2')) {
      return false;
    }
    if (l$v2 != lOther$v2) {
      return false;
    }
    final l$v3 = v3;
    final lOther$v3 = other.v3;
    if (_$data.containsKey('v3') != other._$data.containsKey('v3')) {
      return false;
    }
    if (l$v3 != lOther$v3) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$v1 = v1;
    final l$v2 = v2;
    final l$v3 = v3;
    return Object.hashAll([
      _$data.containsKey('v1') ? l$v1 : const {},
      _$data.containsKey('v2') ? l$v2 : const {},
      _$data.containsKey('v3') ? l$v3 : const {},
    ]);
  }
}

abstract class CopyWith$Input$I1<TRes> {
  factory CopyWith$Input$I1(
    Input$I1 instance,
    TRes Function(Input$I1) then,
  ) = _CopyWithImpl$Input$I1;

  factory CopyWith$Input$I1.stub(TRes res) = _CopyWithStubImpl$Input$I1;

  TRes call({
    int? v1,
    int? v2,
    int? v3,
  });
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(
    this._instance,
    this._then,
  );

  final Input$I1 _instance;

  final TRes Function(Input$I1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? v1 = _undefined,
    Object? v2 = _undefined,
    Object? v3 = _undefined,
  }) =>
      _then(Input$I1._({
        ..._instance._$data,
        if (v1 != _undefined) 'v1': (v1 as int?),
        if (v2 != _undefined) 'v2': (v2 as int?),
        if (v3 != _undefined) 'v3': (v3 as int?),
      }));
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call({
    int? v1,
    int? v2,
    int? v3,
  }) =>
      _res;
}

class Input$I2 {
  factory Input$I2({
    int? v1,
    int? v2,
    required int v3,
  }) =>
      Input$I2._({
        if (v1 != null) r'v1': v1,
        if (v2 != null) r'v2': v2,
        r'v3': v3,
      });

  Input$I2._(this._$data);

  factory Input$I2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('v1')) {
      final l$v1 = data['v1'];
      result$data['v1'] = (l$v1 as int?);
    }
    if (data.containsKey('v2')) {
      final l$v2 = data['v2'];
      result$data['v2'] = (l$v2 as int?);
    }
    final l$v3 = data['v3'];
    result$data['v3'] = (l$v3 as int);
    return Input$I2._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get v1 => (_$data['v1'] as int?);

  int? get v2 => (_$data['v2'] as int?);

  int get v3 => (_$data['v3'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('v1')) {
      final l$v1 = v1;
      result$data['v1'] = l$v1;
    }
    if (_$data.containsKey('v2')) {
      final l$v2 = v2;
      result$data['v2'] = l$v2;
    }
    final l$v3 = v3;
    result$data['v3'] = l$v3;
    return result$data;
  }

  CopyWith$Input$I2<Input$I2> get copyWith => CopyWith$Input$I2(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I2 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$v1 = v1;
    final lOther$v1 = other.v1;
    if (_$data.containsKey('v1') != other._$data.containsKey('v1')) {
      return false;
    }
    if (l$v1 != lOther$v1) {
      return false;
    }
    final l$v2 = v2;
    final lOther$v2 = other.v2;
    if (_$data.containsKey('v2') != other._$data.containsKey('v2')) {
      return false;
    }
    if (l$v2 != lOther$v2) {
      return false;
    }
    final l$v3 = v3;
    final lOther$v3 = other.v3;
    if (l$v3 != lOther$v3) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$v1 = v1;
    final l$v2 = v2;
    final l$v3 = v3;
    return Object.hashAll([
      _$data.containsKey('v1') ? l$v1 : const {},
      _$data.containsKey('v2') ? l$v2 : const {},
      l$v3,
    ]);
  }
}

abstract class CopyWith$Input$I2<TRes> {
  factory CopyWith$Input$I2(
    Input$I2 instance,
    TRes Function(Input$I2) then,
  ) = _CopyWithImpl$Input$I2;

  factory CopyWith$Input$I2.stub(TRes res) = _CopyWithStubImpl$Input$I2;

  TRes call({
    int? v1,
    int? v2,
    int? v3,
  });
}

class _CopyWithImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithImpl$Input$I2(
    this._instance,
    this._then,
  );

  final Input$I2 _instance;

  final TRes Function(Input$I2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? v1 = _undefined,
    Object? v2 = _undefined,
    Object? v3 = _undefined,
  }) =>
      _then(Input$I2._({
        ..._instance._$data,
        if (v1 != _undefined) 'v1': (v1 as int?),
        if (v2 != _undefined) 'v2': (v2 as int?),
        if (v3 != _undefined && v3 != null) 'v3': (v3 as int),
      }));
}

class _CopyWithStubImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithStubImpl$Input$I2(this._res);

  TRes _res;

  call({
    int? v1,
    int? v2,
    int? v3,
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
