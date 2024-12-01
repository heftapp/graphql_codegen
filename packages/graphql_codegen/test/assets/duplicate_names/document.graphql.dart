class Input$I {
  factory Input$I({String? title}) => Input$I._({
        if (title != null) r'title': title,
      });

  Input$I._(this._$data);

  factory Input$I.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    return Input$I._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
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
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    return Object.hashAll([_$data.containsKey('title') ? l$title : const {}]);
  }
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(
    Input$I instance,
    TRes Function(Input$I) then,
  ) = _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? title});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(
    this._instance,
    this._then,
  );

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? title = _undefined}) => _then(Input$I._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? title}) => _res;
}

class Input$I_ {
  factory Input$I_({double? value}) => Input$I_._({
        if (value != null) r'value': value,
      });

  Input$I_._(this._$data);

  factory Input$I_.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as num?)?.toDouble();
    }
    return Input$I_._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get value => (_$data['value'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    return result$data;
  }

  CopyWith$Input$I_<Input$I_> get copyWith => CopyWith$Input$I_(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I_ || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([_$data.containsKey('value') ? l$value : const {}]);
  }
}

abstract class CopyWith$Input$I_<TRes> {
  factory CopyWith$Input$I_(
    Input$I_ instance,
    TRes Function(Input$I_) then,
  ) = _CopyWithImpl$Input$I_;

  factory CopyWith$Input$I_.stub(TRes res) = _CopyWithStubImpl$Input$I_;

  TRes call({double? value});
}

class _CopyWithImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithImpl$Input$I_(
    this._instance,
    this._then,
  );

  final Input$I_ _instance;

  final TRes Function(Input$I_) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$I_._({
        ..._instance._$data,
        if (value != _undefined) 'value': (value as double?),
      }));
}

class _CopyWithStubImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithStubImpl$Input$I_(this._res);

  TRes _res;

  call({double? value}) => _res;
}

class Input$i {
  factory Input$i({bool? enabled}) => Input$i._({
        if (enabled != null) r'enabled': enabled,
      });

  Input$i._(this._$data);

  factory Input$i.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = (l$enabled as bool?);
    }
    return Input$i._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get enabled => (_$data['enabled'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled;
    }
    return result$data;
  }

  CopyWith$Input$i<Input$i> get copyWith => CopyWith$Input$i(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$i || runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (_$data.containsKey('enabled') != other._$data.containsKey('enabled')) {
      return false;
    }
    if (l$enabled != lOther$enabled) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    return Object.hashAll(
        [_$data.containsKey('enabled') ? l$enabled : const {}]);
  }
}

abstract class CopyWith$Input$i<TRes> {
  factory CopyWith$Input$i(
    Input$i instance,
    TRes Function(Input$i) then,
  ) = _CopyWithImpl$Input$i;

  factory CopyWith$Input$i.stub(TRes res) = _CopyWithStubImpl$Input$i;

  TRes call({bool? enabled});
}

class _CopyWithImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithImpl$Input$i(
    this._instance,
    this._then,
  );

  final Input$i _instance;

  final TRes Function(Input$i) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? enabled = _undefined}) => _then(Input$i._({
        ..._instance._$data,
        if (enabled != _undefined) 'enabled': (enabled as bool?),
      }));
}

class _CopyWithStubImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithStubImpl$Input$i(this._res);

  TRes _res;

  call({bool? enabled}) => _res;
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
