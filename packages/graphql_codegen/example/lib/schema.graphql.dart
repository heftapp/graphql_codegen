abstract class Input$UpdatePersonInput {
  factory Input$UpdatePersonInput(
          {required String id,
          String? full_name,
          String? nickname,
          String? website}) =>
      _Impl$Input$UpdatePersonInput({
        'id': id,
        'full_name': full_name,
        'nickname': nickname,
        'website': website
      });

  factory Input$UpdatePersonInput.withoutNulls(
      {required String id,
      String? full_name,
      String? nickname,
      String? website}) {
    final l$data = <String, dynamic>{'id': id};
    if (full_name != null) l$data['full_name'] = full_name;
    if (nickname != null) l$data['nickname'] = nickname;
    if (website != null) l$data['website'] = website;
    return _Impl$Input$UpdatePersonInput(l$data);
  }

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
    return _Impl$Input$UpdatePersonInput(result$data);
  }

  String get id;
  String? get full_name;
  String? get nickname;
  String? get website;
  Map<String, dynamic> toJson();
  CopyWith$Input$UpdatePersonInput<Input$UpdatePersonInput> get copyWith;
  _Impl$Input$UpdatePersonInput get $impl;
}

class _Impl$Input$UpdatePersonInput implements Input$UpdatePersonInput {
  _Impl$Input$UpdatePersonInput(this.$data);

  final Map<String, dynamic> $data;

  String get id => ($data['id'] as String);
  String? get full_name => ($data['full_name'] as String?);
  String? get nickname => ($data['nickname'] as String?);
  String? get website => ($data['website'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if ($data.containsKey('full_name')) {
      final l$full_name = full_name;
      result$data['full_name'] = l$full_name;
    }
    if ($data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if ($data.containsKey('website')) {
      final l$website = website;
      result$data['website'] = l$website;
    }
    return result$data;
  }

  CopyWith$Input$UpdatePersonInput<Input$UpdatePersonInput> get copyWith =>
      CopyWith$Input$UpdatePersonInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$UpdatePersonInput) ||
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
    if ($data.containsKey('full_name') !=
        other.$data.containsKey('full_name')) {
      return false;
    }
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if ($data.containsKey('nickname') != other.$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$website = website;
    final lOther$website = other.website;
    if ($data.containsKey('website') != other.$data.containsKey('website')) {
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
      $data.containsKey('full_name') ? l$full_name : const {},
      $data.containsKey('nickname') ? l$nickname : const {},
      $data.containsKey('website') ? l$website : const {}
    ]);
  }

  _Impl$Input$UpdatePersonInput get $impl => this;
}

abstract class CopyWith$Input$UpdatePersonInput<TRes> {
  factory CopyWith$Input$UpdatePersonInput(Input$UpdatePersonInput instance,
          TRes Function(Input$UpdatePersonInput) then) =>
      _CopyWithImpl$Input$UpdatePersonInput(instance.$impl, then);

  factory CopyWith$Input$UpdatePersonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePersonInput;

  TRes call({String? id, String? full_name, String? nickname, String? website});
}

class _CopyWithImpl$Input$UpdatePersonInput<TRes>
    implements CopyWith$Input$UpdatePersonInput<TRes> {
  _CopyWithImpl$Input$UpdatePersonInput(this._instance, this._then);

  final _Impl$Input$UpdatePersonInput _instance;

  final TRes Function(_Impl$Input$UpdatePersonInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? full_name = _undefined,
          Object? nickname = _undefined,
          Object? website = _undefined}) =>
      _then(_Impl$Input$UpdatePersonInput({
        ..._instance.$data,
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

  call({String? id, String? full_name, String? nickname, String? website}) =>
      _res;
}

const possibleTypesMap = {};
