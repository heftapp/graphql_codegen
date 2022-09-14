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
    if (!(other is Input$UpdatePersonInput) ||
        runtimeType != other.runtimeType) {
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

  static const _undefined = {};

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

enum Enum$QueryMode { $default, insensitive, $unknown }

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

const possibleTypesMap = {};
