class Input$UpdatePersonInput {
  factory Input$UpdatePersonInput({
    required String id,
    String? full_name,
    String? nickname,
    String? website,
  }) =>
      Input$UpdatePersonInput._({
        r'id': id,
        if (full_name != null) r'full_name': full_name,
        if (nickname != null) r'nickname': nickname,
        if (website != null) r'website': website,
      });

  Input$UpdatePersonInput._(this._$data);

  factory Input$UpdatePersonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('full_name')) {
      final l$full_name = data['full_name'];
      result$data['full_name'] = (l$full_name as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('website')) {
      final l$website = data['website'];
      result$data['website'] = (l$website as String?);
    }
    return Input$UpdatePersonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get full_name => (_$data['full_name'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  String? get website => (_$data['website'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('full_name')) {
      final l$full_name = full_name;
      result$data['full_name'] = l$full_name;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('website')) {
      final l$website = website;
      result$data['website'] = l$website;
    }
    return result$data;
  }

  CopyWith$Input$UpdatePersonInput<Input$UpdatePersonInput> get copyWith =>
      CopyWith$Input$UpdatePersonInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdatePersonInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (_$data.containsKey('full_name') !=
        other._$data.containsKey('full_name')) {
      return false;
    }
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$website = website;
    final lOther$website = other.website;
    if (_$data.containsKey('website') != other._$data.containsKey('website')) {
      return false;
    }
    if (l$website != lOther$website) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$full_name = full_name;
    final l$nickname = nickname;
    final l$website = website;
    return Object.hashAll([
      l$id,
      _$data.containsKey('full_name') ? l$full_name : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('website') ? l$website : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdatePersonInput<TRes> {
  factory CopyWith$Input$UpdatePersonInput(
    Input$UpdatePersonInput instance,
    TRes Function(Input$UpdatePersonInput) then,
  ) = _CopyWithImpl$Input$UpdatePersonInput;

  factory CopyWith$Input$UpdatePersonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePersonInput;

  TRes call({
    String? id,
    String? full_name,
    String? nickname,
    String? website,
  });
}

class _CopyWithImpl$Input$UpdatePersonInput<TRes>
    implements CopyWith$Input$UpdatePersonInput<TRes> {
  _CopyWithImpl$Input$UpdatePersonInput(
    this._instance,
    this._then,
  );

  final Input$UpdatePersonInput _instance;

  final TRes Function(Input$UpdatePersonInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? full_name = _undefined,
    Object? nickname = _undefined,
    Object? website = _undefined,
  }) =>
      _then(Input$UpdatePersonInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (full_name != _undefined) 'full_name': (full_name as String?),
        if (nickname != _undefined) 'nickname': (nickname as String?),
        if (website != _undefined) 'website': (website as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdatePersonInput<TRes>
    implements CopyWith$Input$UpdatePersonInput<TRes> {
  _CopyWithStubImpl$Input$UpdatePersonInput(this._res);

  TRes _res;

  call({
    String? id,
    String? full_name,
    String? nickname,
    String? website,
  }) =>
      _res;
}

enum Enum$QueryMode {
  $default,
  insensitive,
  $unknown;

  factory Enum$QueryMode.fromJson(String value) =>
      fromJson$Enum$QueryMode(value);

  String toJson() => toJson$Enum$QueryMode(this);
}

String toJson$Enum$QueryMode(Enum$QueryMode e) {
  switch (e) {
    case Enum$QueryMode.$default:
      return r'default';
    case Enum$QueryMode.insensitive:
      return r'insensitive';
    case Enum$QueryMode.$unknown:
      return r'$unknown';
  }
}

Enum$QueryMode fromJson$Enum$QueryMode(String value) {
  switch (value) {
    case r'default':
      return Enum$QueryMode.$default;
    case r'insensitive':
      return Enum$QueryMode.insensitive;
    default:
      return Enum$QueryMode.$unknown;
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

const possibleTypesMap = <String, Set<String>>{};
