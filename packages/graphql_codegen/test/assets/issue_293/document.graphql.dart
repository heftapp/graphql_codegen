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
      result$data['nonNullWithDefault'] = (l$nonNullWithDefault as bool);
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
    if (other is! Input$I || runtimeType != other.runtimeType) {
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

enum Enum$E {
  V1,
  $unknown;

  factory Enum$E.fromJson(String value) => fromJson$Enum$E(value);

  String toJson() => toJson$Enum$E(this);
}

String toJson$Enum$E(Enum$E e) {
  switch (e) {
    case Enum$E.V1:
      return r'V1';
    case Enum$E.$unknown:
      return r'$unknown';
  }
}

Enum$E fromJson$Enum$E(String value) {
  switch (value) {
    case r'V1':
      return Enum$E.V1;
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

class Variables$Query$Q {
  factory Variables$Query$Q({
    required bool nonNull,
    bool? nonNullWithDefault,
    bool? nullable,
    bool? nullableWithDefault,
    required Enum$E nonNullEnum,
    Enum$E? nonNullEnumWithDefault,
    Enum$E? nullableEnum,
    Enum$E? nullableEnumWithDefault,
    required List<Enum$E?> nonNullList,
    List<Enum$E?>? nonNullListWithDefault,
    List<Enum$E?>? nullableList,
    List<Enum$E?>? nullableListWithDefault,
    Input$I? i,
  }) =>
      Variables$Query$Q._({
        r'nonNull': nonNull,
        if (nonNullWithDefault != null)
          r'nonNullWithDefault': nonNullWithDefault,
        if (nullable != null) r'nullable': nullable,
        if (nullableWithDefault != null)
          r'nullableWithDefault': nullableWithDefault,
        r'nonNullEnum': nonNullEnum,
        if (nonNullEnumWithDefault != null)
          r'nonNullEnumWithDefault': nonNullEnumWithDefault,
        if (nullableEnum != null) r'nullableEnum': nullableEnum,
        if (nullableEnumWithDefault != null)
          r'nullableEnumWithDefault': nullableEnumWithDefault,
        r'nonNullList': nonNullList,
        if (nonNullListWithDefault != null)
          r'nonNullListWithDefault': nonNullListWithDefault,
        if (nullableList != null) r'nullableList': nullableList,
        if (nullableListWithDefault != null)
          r'nullableListWithDefault': nullableListWithDefault,
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
    final l$nonNullEnum = data['nonNullEnum'];
    result$data['nonNullEnum'] = fromJson$Enum$E((l$nonNullEnum as String));
    if (data.containsKey('nonNullEnumWithDefault')) {
      final l$nonNullEnumWithDefault = data['nonNullEnumWithDefault'];
      result$data['nonNullEnumWithDefault'] =
          fromJson$Enum$E((l$nonNullEnumWithDefault as String));
    }
    if (data.containsKey('nullableEnum')) {
      final l$nullableEnum = data['nullableEnum'];
      result$data['nullableEnum'] = l$nullableEnum == null
          ? null
          : fromJson$Enum$E((l$nullableEnum as String));
    }
    if (data.containsKey('nullableEnumWithDefault')) {
      final l$nullableEnumWithDefault = data['nullableEnumWithDefault'];
      result$data['nullableEnumWithDefault'] = l$nullableEnumWithDefault == null
          ? null
          : fromJson$Enum$E((l$nullableEnumWithDefault as String));
    }
    final l$nonNullList = data['nonNullList'];
    result$data['nonNullList'] = (l$nonNullList as List<dynamic>)
        .map((e) => e == null ? null : fromJson$Enum$E((e as String)))
        .toList();
    if (data.containsKey('nonNullListWithDefault')) {
      final l$nonNullListWithDefault = data['nonNullListWithDefault'];
      result$data['nonNullListWithDefault'] =
          (l$nonNullListWithDefault as List<dynamic>)
              .map((e) => e == null ? null : fromJson$Enum$E((e as String)))
              .toList();
    }
    if (data.containsKey('nullableList')) {
      final l$nullableList = data['nullableList'];
      result$data['nullableList'] = (l$nullableList as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$E((e as String)))
          .toList();
    }
    if (data.containsKey('nullableListWithDefault')) {
      final l$nullableListWithDefault = data['nullableListWithDefault'];
      result$data['nullableListWithDefault'] =
          (l$nullableListWithDefault as List<dynamic>?)
              ?.map((e) => e == null ? null : fromJson$Enum$E((e as String)))
              .toList();
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

  Enum$E get nonNullEnum => (_$data['nonNullEnum'] as Enum$E);

  Enum$E? get nonNullEnumWithDefault =>
      (_$data['nonNullEnumWithDefault'] as Enum$E?);

  Enum$E? get nullableEnum => (_$data['nullableEnum'] as Enum$E?);

  Enum$E? get nullableEnumWithDefault =>
      (_$data['nullableEnumWithDefault'] as Enum$E?);

  List<Enum$E?> get nonNullList => (_$data['nonNullList'] as List<Enum$E?>);

  List<Enum$E?>? get nonNullListWithDefault =>
      (_$data['nonNullListWithDefault'] as List<Enum$E?>?);

  List<Enum$E?>? get nullableList => (_$data['nullableList'] as List<Enum$E?>?);

  List<Enum$E?>? get nullableListWithDefault =>
      (_$data['nullableListWithDefault'] as List<Enum$E?>?);

  Input$I? get i => (_$data['i'] as Input$I?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nonNull = nonNull;
    result$data['nonNull'] = l$nonNull;
    if (_$data.containsKey('nonNullWithDefault')) {
      final l$nonNullWithDefault = nonNullWithDefault;
      result$data['nonNullWithDefault'] = (l$nonNullWithDefault as bool);
    }
    if (_$data.containsKey('nullable')) {
      final l$nullable = nullable;
      result$data['nullable'] = l$nullable;
    }
    if (_$data.containsKey('nullableWithDefault')) {
      final l$nullableWithDefault = nullableWithDefault;
      result$data['nullableWithDefault'] = l$nullableWithDefault;
    }
    final l$nonNullEnum = nonNullEnum;
    result$data['nonNullEnum'] = toJson$Enum$E(l$nonNullEnum);
    if (_$data.containsKey('nonNullEnumWithDefault')) {
      final l$nonNullEnumWithDefault = nonNullEnumWithDefault;
      result$data['nonNullEnumWithDefault'] =
          toJson$Enum$E((l$nonNullEnumWithDefault as Enum$E));
    }
    if (_$data.containsKey('nullableEnum')) {
      final l$nullableEnum = nullableEnum;
      result$data['nullableEnum'] =
          l$nullableEnum == null ? null : toJson$Enum$E(l$nullableEnum);
    }
    if (_$data.containsKey('nullableEnumWithDefault')) {
      final l$nullableEnumWithDefault = nullableEnumWithDefault;
      result$data['nullableEnumWithDefault'] = l$nullableEnumWithDefault == null
          ? null
          : toJson$Enum$E(l$nullableEnumWithDefault);
    }
    final l$nonNullList = nonNullList;
    result$data['nonNullList'] =
        l$nonNullList.map((e) => e == null ? null : toJson$Enum$E(e)).toList();
    if (_$data.containsKey('nonNullListWithDefault')) {
      final l$nonNullListWithDefault = nonNullListWithDefault;
      result$data['nonNullListWithDefault'] =
          (l$nonNullListWithDefault as List<Enum$E?>)
              .map((e) => e == null ? null : toJson$Enum$E(e))
              .toList();
    }
    if (_$data.containsKey('nullableList')) {
      final l$nullableList = nullableList;
      result$data['nullableList'] = l$nullableList
          ?.map((e) => e == null ? null : toJson$Enum$E(e))
          .toList();
    }
    if (_$data.containsKey('nullableListWithDefault')) {
      final l$nullableListWithDefault = nullableListWithDefault;
      result$data['nullableListWithDefault'] = l$nullableListWithDefault
          ?.map((e) => e == null ? null : toJson$Enum$E(e))
          .toList();
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
    if (other is! Variables$Query$Q || runtimeType != other.runtimeType) {
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
    final l$nonNullEnum = nonNullEnum;
    final lOther$nonNullEnum = other.nonNullEnum;
    if (l$nonNullEnum != lOther$nonNullEnum) {
      return false;
    }
    final l$nonNullEnumWithDefault = nonNullEnumWithDefault;
    final lOther$nonNullEnumWithDefault = other.nonNullEnumWithDefault;
    if (_$data.containsKey('nonNullEnumWithDefault') !=
        other._$data.containsKey('nonNullEnumWithDefault')) {
      return false;
    }
    if (l$nonNullEnumWithDefault != lOther$nonNullEnumWithDefault) {
      return false;
    }
    final l$nullableEnum = nullableEnum;
    final lOther$nullableEnum = other.nullableEnum;
    if (_$data.containsKey('nullableEnum') !=
        other._$data.containsKey('nullableEnum')) {
      return false;
    }
    if (l$nullableEnum != lOther$nullableEnum) {
      return false;
    }
    final l$nullableEnumWithDefault = nullableEnumWithDefault;
    final lOther$nullableEnumWithDefault = other.nullableEnumWithDefault;
    if (_$data.containsKey('nullableEnumWithDefault') !=
        other._$data.containsKey('nullableEnumWithDefault')) {
      return false;
    }
    if (l$nullableEnumWithDefault != lOther$nullableEnumWithDefault) {
      return false;
    }
    final l$nonNullList = nonNullList;
    final lOther$nonNullList = other.nonNullList;
    if (l$nonNullList.length != lOther$nonNullList.length) {
      return false;
    }
    for (int i = 0; i < l$nonNullList.length; i++) {
      final l$nonNullList$entry = l$nonNullList[i];
      final lOther$nonNullList$entry = lOther$nonNullList[i];
      if (l$nonNullList$entry != lOther$nonNullList$entry) {
        return false;
      }
    }
    final l$nonNullListWithDefault = nonNullListWithDefault;
    final lOther$nonNullListWithDefault = other.nonNullListWithDefault;
    if (_$data.containsKey('nonNullListWithDefault') !=
        other._$data.containsKey('nonNullListWithDefault')) {
      return false;
    }
    if (l$nonNullListWithDefault != null &&
        lOther$nonNullListWithDefault != null) {
      if (l$nonNullListWithDefault.length !=
          lOther$nonNullListWithDefault.length) {
        return false;
      }
      for (int i = 0; i < l$nonNullListWithDefault.length; i++) {
        final l$nonNullListWithDefault$entry = l$nonNullListWithDefault[i];
        final lOther$nonNullListWithDefault$entry =
            lOther$nonNullListWithDefault[i];
        if (l$nonNullListWithDefault$entry !=
            lOther$nonNullListWithDefault$entry) {
          return false;
        }
      }
    } else if (l$nonNullListWithDefault != lOther$nonNullListWithDefault) {
      return false;
    }
    final l$nullableList = nullableList;
    final lOther$nullableList = other.nullableList;
    if (_$data.containsKey('nullableList') !=
        other._$data.containsKey('nullableList')) {
      return false;
    }
    if (l$nullableList != null && lOther$nullableList != null) {
      if (l$nullableList.length != lOther$nullableList.length) {
        return false;
      }
      for (int i = 0; i < l$nullableList.length; i++) {
        final l$nullableList$entry = l$nullableList[i];
        final lOther$nullableList$entry = lOther$nullableList[i];
        if (l$nullableList$entry != lOther$nullableList$entry) {
          return false;
        }
      }
    } else if (l$nullableList != lOther$nullableList) {
      return false;
    }
    final l$nullableListWithDefault = nullableListWithDefault;
    final lOther$nullableListWithDefault = other.nullableListWithDefault;
    if (_$data.containsKey('nullableListWithDefault') !=
        other._$data.containsKey('nullableListWithDefault')) {
      return false;
    }
    if (l$nullableListWithDefault != null &&
        lOther$nullableListWithDefault != null) {
      if (l$nullableListWithDefault.length !=
          lOther$nullableListWithDefault.length) {
        return false;
      }
      for (int i = 0; i < l$nullableListWithDefault.length; i++) {
        final l$nullableListWithDefault$entry = l$nullableListWithDefault[i];
        final lOther$nullableListWithDefault$entry =
            lOther$nullableListWithDefault[i];
        if (l$nullableListWithDefault$entry !=
            lOther$nullableListWithDefault$entry) {
          return false;
        }
      }
    } else if (l$nullableListWithDefault != lOther$nullableListWithDefault) {
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
    final l$nonNullEnum = nonNullEnum;
    final l$nonNullEnumWithDefault = nonNullEnumWithDefault;
    final l$nullableEnum = nullableEnum;
    final l$nullableEnumWithDefault = nullableEnumWithDefault;
    final l$nonNullList = nonNullList;
    final l$nonNullListWithDefault = nonNullListWithDefault;
    final l$nullableList = nullableList;
    final l$nullableListWithDefault = nullableListWithDefault;
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
      l$nonNullEnum,
      _$data.containsKey('nonNullEnumWithDefault')
          ? l$nonNullEnumWithDefault
          : const {},
      _$data.containsKey('nullableEnum') ? l$nullableEnum : const {},
      _$data.containsKey('nullableEnumWithDefault')
          ? l$nullableEnumWithDefault
          : const {},
      Object.hashAll(l$nonNullList.map((v) => v)),
      _$data.containsKey('nonNullListWithDefault')
          ? l$nonNullListWithDefault == null
              ? null
              : Object.hashAll(l$nonNullListWithDefault.map((v) => v))
          : const {},
      _$data.containsKey('nullableList')
          ? l$nullableList == null
              ? null
              : Object.hashAll(l$nullableList.map((v) => v))
          : const {},
      _$data.containsKey('nullableListWithDefault')
          ? l$nullableListWithDefault == null
              ? null
              : Object.hashAll(l$nullableListWithDefault.map((v) => v))
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
    Enum$E? nonNullEnum,
    Enum$E? nonNullEnumWithDefault,
    Enum$E? nullableEnum,
    Enum$E? nullableEnumWithDefault,
    List<Enum$E?>? nonNullList,
    List<Enum$E?>? nonNullListWithDefault,
    List<Enum$E?>? nullableList,
    List<Enum$E?>? nullableListWithDefault,
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
    Object? nonNullEnum = _undefined,
    Object? nonNullEnumWithDefault = _undefined,
    Object? nullableEnum = _undefined,
    Object? nullableEnumWithDefault = _undefined,
    Object? nonNullList = _undefined,
    Object? nonNullListWithDefault = _undefined,
    Object? nullableList = _undefined,
    Object? nullableListWithDefault = _undefined,
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
        if (nonNullEnum != _undefined && nonNullEnum != null)
          'nonNullEnum': (nonNullEnum as Enum$E),
        if (nonNullEnumWithDefault != _undefined &&
            nonNullEnumWithDefault != null)
          'nonNullEnumWithDefault': (nonNullEnumWithDefault as Enum$E),
        if (nullableEnum != _undefined)
          'nullableEnum': (nullableEnum as Enum$E?),
        if (nullableEnumWithDefault != _undefined)
          'nullableEnumWithDefault': (nullableEnumWithDefault as Enum$E?),
        if (nonNullList != _undefined && nonNullList != null)
          'nonNullList': (nonNullList as List<Enum$E?>),
        if (nonNullListWithDefault != _undefined &&
            nonNullListWithDefault != null)
          'nonNullListWithDefault': (nonNullListWithDefault as List<Enum$E?>),
        if (nullableList != _undefined)
          'nullableList': (nullableList as List<Enum$E?>?),
        if (nullableListWithDefault != _undefined)
          'nullableListWithDefault':
              (nullableListWithDefault as List<Enum$E?>?),
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
    Enum$E? nonNullEnum,
    Enum$E? nonNullEnumWithDefault,
    Enum$E? nullableEnum,
    Enum$E? nullableEnumWithDefault,
    List<Enum$E?>? nonNullList,
    List<Enum$E?>? nonNullListWithDefault,
    List<Enum$E?>? nullableList,
    List<Enum$E?>? nullableListWithDefault,
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
    this.eNonNull,
    this.eNonNullWithDefault,
    this.eNullable,
    this.eNullableWithDefault,
    this.lNonNull,
    this.lNonNullWithDefault,
    this.lNullable,
    this.lNullableWithDefault,
    this.inputField,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$fNonNull = json['fNonNull'];
    final l$fNonNullWithDefault = json['fNonNullWithDefault'];
    final l$fNullable = json['fNullable'];
    final l$fNullableWithDefault = json['fNullableWithDefault'];
    final l$eNonNull = json['eNonNull'];
    final l$eNonNullWithDefault = json['eNonNullWithDefault'];
    final l$eNullable = json['eNullable'];
    final l$eNullableWithDefault = json['eNullableWithDefault'];
    final l$lNonNull = json['lNonNull'];
    final l$lNonNullWithDefault = json['lNonNullWithDefault'];
    final l$lNullable = json['lNullable'];
    final l$lNullableWithDefault = json['lNullableWithDefault'];
    final l$inputField = json['inputField'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      fNonNull: (l$fNonNull as int?),
      fNonNullWithDefault: (l$fNonNullWithDefault as int?),
      fNullable: (l$fNullable as int?),
      fNullableWithDefault: (l$fNullableWithDefault as int?),
      eNonNull: (l$eNonNull as int?),
      eNonNullWithDefault: (l$eNonNullWithDefault as int?),
      eNullable: (l$eNullable as int?),
      eNullableWithDefault: (l$eNullableWithDefault as int?),
      lNonNull: (l$lNonNull as int?),
      lNonNullWithDefault: (l$lNonNullWithDefault as int?),
      lNullable: (l$lNullable as int?),
      lNullableWithDefault: (l$lNullableWithDefault as int?),
      inputField: (l$inputField as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? fNonNull;

  final int? fNonNullWithDefault;

  final int? fNullable;

  final int? fNullableWithDefault;

  final int? eNonNull;

  final int? eNonNullWithDefault;

  final int? eNullable;

  final int? eNullableWithDefault;

  final int? lNonNull;

  final int? lNonNullWithDefault;

  final int? lNullable;

  final int? lNullableWithDefault;

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
    final l$eNonNull = eNonNull;
    _resultData['eNonNull'] = l$eNonNull;
    final l$eNonNullWithDefault = eNonNullWithDefault;
    _resultData['eNonNullWithDefault'] = l$eNonNullWithDefault;
    final l$eNullable = eNullable;
    _resultData['eNullable'] = l$eNullable;
    final l$eNullableWithDefault = eNullableWithDefault;
    _resultData['eNullableWithDefault'] = l$eNullableWithDefault;
    final l$lNonNull = lNonNull;
    _resultData['lNonNull'] = l$lNonNull;
    final l$lNonNullWithDefault = lNonNullWithDefault;
    _resultData['lNonNullWithDefault'] = l$lNonNullWithDefault;
    final l$lNullable = lNullable;
    _resultData['lNullable'] = l$lNullable;
    final l$lNullableWithDefault = lNullableWithDefault;
    _resultData['lNullableWithDefault'] = l$lNullableWithDefault;
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
    final l$eNonNull = eNonNull;
    final l$eNonNullWithDefault = eNonNullWithDefault;
    final l$eNullable = eNullable;
    final l$eNullableWithDefault = eNullableWithDefault;
    final l$lNonNull = lNonNull;
    final l$lNonNullWithDefault = lNonNullWithDefault;
    final l$lNullable = lNullable;
    final l$lNullableWithDefault = lNullableWithDefault;
    final l$inputField = inputField;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fNonNull,
      l$fNonNullWithDefault,
      l$fNullable,
      l$fNullableWithDefault,
      l$eNonNull,
      l$eNonNullWithDefault,
      l$eNullable,
      l$eNullableWithDefault,
      l$lNonNull,
      l$lNonNullWithDefault,
      l$lNullable,
      l$lNullableWithDefault,
      l$inputField,
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
    final l$eNonNull = eNonNull;
    final lOther$eNonNull = other.eNonNull;
    if (l$eNonNull != lOther$eNonNull) {
      return false;
    }
    final l$eNonNullWithDefault = eNonNullWithDefault;
    final lOther$eNonNullWithDefault = other.eNonNullWithDefault;
    if (l$eNonNullWithDefault != lOther$eNonNullWithDefault) {
      return false;
    }
    final l$eNullable = eNullable;
    final lOther$eNullable = other.eNullable;
    if (l$eNullable != lOther$eNullable) {
      return false;
    }
    final l$eNullableWithDefault = eNullableWithDefault;
    final lOther$eNullableWithDefault = other.eNullableWithDefault;
    if (l$eNullableWithDefault != lOther$eNullableWithDefault) {
      return false;
    }
    final l$lNonNull = lNonNull;
    final lOther$lNonNull = other.lNonNull;
    if (l$lNonNull != lOther$lNonNull) {
      return false;
    }
    final l$lNonNullWithDefault = lNonNullWithDefault;
    final lOther$lNonNullWithDefault = other.lNonNullWithDefault;
    if (l$lNonNullWithDefault != lOther$lNonNullWithDefault) {
      return false;
    }
    final l$lNullable = lNullable;
    final lOther$lNullable = other.lNullable;
    if (l$lNullable != lOther$lNullable) {
      return false;
    }
    final l$lNullableWithDefault = lNullableWithDefault;
    final lOther$lNullableWithDefault = other.lNullableWithDefault;
    if (l$lNullableWithDefault != lOther$lNullableWithDefault) {
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
    int? eNonNull,
    int? eNonNullWithDefault,
    int? eNullable,
    int? eNullableWithDefault,
    int? lNonNull,
    int? lNonNullWithDefault,
    int? lNullable,
    int? lNullableWithDefault,
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
    Object? eNonNull = _undefined,
    Object? eNonNullWithDefault = _undefined,
    Object? eNullable = _undefined,
    Object? eNullableWithDefault = _undefined,
    Object? lNonNull = _undefined,
    Object? lNonNullWithDefault = _undefined,
    Object? lNullable = _undefined,
    Object? lNullableWithDefault = _undefined,
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
        eNonNull:
            eNonNull == _undefined ? _instance.eNonNull : (eNonNull as int?),
        eNonNullWithDefault: eNonNullWithDefault == _undefined
            ? _instance.eNonNullWithDefault
            : (eNonNullWithDefault as int?),
        eNullable:
            eNullable == _undefined ? _instance.eNullable : (eNullable as int?),
        eNullableWithDefault: eNullableWithDefault == _undefined
            ? _instance.eNullableWithDefault
            : (eNullableWithDefault as int?),
        lNonNull:
            lNonNull == _undefined ? _instance.lNonNull : (lNonNull as int?),
        lNonNullWithDefault: lNonNullWithDefault == _undefined
            ? _instance.lNonNullWithDefault
            : (lNonNullWithDefault as int?),
        lNullable:
            lNullable == _undefined ? _instance.lNullable : (lNullable as int?),
        lNullableWithDefault: lNullableWithDefault == _undefined
            ? _instance.lNullableWithDefault
            : (lNullableWithDefault as int?),
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
    int? eNonNull,
    int? eNonNullWithDefault,
    int? eNullable,
    int? eNullableWithDefault,
    int? lNonNull,
    int? lNonNullWithDefault,
    int? lNullable,
    int? lNullableWithDefault,
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
        variable: VariableNode(name: NameNode(value: 'nonNullEnum')),
        type: NamedTypeNode(
          name: NameNode(value: 'E'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nonNullEnumWithDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'E'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nullableEnum')),
        type: NamedTypeNode(
          name: NameNode(value: 'E'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'nullableEnumWithDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'E'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nonNullList')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'E'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nonNullListWithDefault')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'E'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nullableList')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'E'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'nullableListWithDefault')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'E'),
            isNonNull: false,
          ),
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
        name: NameNode(value: 'enumField'),
        alias: NameNode(value: 'eNonNull'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nonNullEnum')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enumField'),
        alias: NameNode(value: 'eNonNullWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value:
                VariableNode(name: NameNode(value: 'nonNullEnumWithDefault')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enumField'),
        alias: NameNode(value: 'eNullable'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nullableEnum')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enumField'),
        alias: NameNode(value: 'eNullableWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value:
                VariableNode(name: NameNode(value: 'nullableEnumWithDefault')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'listField'),
        alias: NameNode(value: 'lNonNull'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nonNullList')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'listField'),
        alias: NameNode(value: 'lNonNullWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value:
                VariableNode(name: NameNode(value: 'nonNullListWithDefault')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'listField'),
        alias: NameNode(value: 'lNullable'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value: VariableNode(name: NameNode(value: 'nullableList')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'listField'),
        alias: NameNode(value: 'lNullableWithDefault'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'arg'),
            value:
                VariableNode(name: NameNode(value: 'nullableListWithDefault')),
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
