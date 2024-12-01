class Input$I {
  factory Input$I({
    String? $String,
    int? $OtherReservedKeyword,
  }) =>
      Input$I._({
        if ($String != null) r'String': $String,
        if ($OtherReservedKeyword != null)
          r'OtherReservedKeyword': $OtherReservedKeyword,
      });

  Input$I._(this._$data);

  factory Input$I.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('String')) {
      final l$$String = data['String'];
      result$data['String'] = (l$$String as String?);
    }
    if (data.containsKey('OtherReservedKeyword')) {
      final l$$OtherReservedKeyword = data['OtherReservedKeyword'];
      result$data['OtherReservedKeyword'] = (l$$OtherReservedKeyword as int?);
    }
    return Input$I._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $String => (_$data['String'] as String?);

  int? get $OtherReservedKeyword => (_$data['OtherReservedKeyword'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('String')) {
      final l$$String = $String;
      result$data['String'] = l$$String;
    }
    if (_$data.containsKey('OtherReservedKeyword')) {
      final l$$OtherReservedKeyword = $OtherReservedKeyword;
      result$data['OtherReservedKeyword'] = l$$OtherReservedKeyword;
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
    if (other is! Input$I || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$String = $String;
    final lOther$$String = other.$String;
    if (_$data.containsKey('String') != other._$data.containsKey('String')) {
      return false;
    }
    if (l$$String != lOther$$String) {
      return false;
    }
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    final lOther$$OtherReservedKeyword = other.$OtherReservedKeyword;
    if (_$data.containsKey('OtherReservedKeyword') !=
        other._$data.containsKey('OtherReservedKeyword')) {
      return false;
    }
    if (l$$OtherReservedKeyword != lOther$$OtherReservedKeyword) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$String = $String;
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    return Object.hashAll([
      _$data.containsKey('String') ? l$$String : const {},
      _$data.containsKey('OtherReservedKeyword')
          ? l$$OtherReservedKeyword
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
    String? $String,
    int? $OtherReservedKeyword,
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
    Object? $String = _undefined,
    Object? $OtherReservedKeyword = _undefined,
  }) =>
      _then(Input$I._({
        ..._instance._$data,
        if ($String != _undefined) 'String': ($String as String?),
        if ($OtherReservedKeyword != _undefined)
          'OtherReservedKeyword': ($OtherReservedKeyword as int?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({
    String? $String,
    int? $OtherReservedKeyword,
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
