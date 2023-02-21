class Input$I1 {
  factory Input$I1({
    required String s,
    Input$I1? nested,
  }) =>
      Input$I1._({
        r's': s,
        if (nested != null) r'nested': nested,
      });

  Input$I1._(this._$data);

  factory Input$I1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$s = data['s'];
    result$data['s'] = (l$s as String);
    if (data.containsKey('nested')) {
      final l$nested = data['nested'];
      result$data['nested'] = l$nested == null
          ? null
          : Input$I1.fromJson((l$nested as Map<String, dynamic>));
    }
    return Input$I1._(result$data);
  }

  Map<String, dynamic> _$data;

  String get s => (_$data['s'] as String);
  Input$I1? get nested => (_$data['nested'] as Input$I1?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$s = s;
    result$data['s'] = l$s;
    if (_$data.containsKey('nested')) {
      final l$nested = nested;
      result$data['nested'] = l$nested?.toJson();
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
    if (!(other is Input$I1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$nested = nested;
    final lOther$nested = other.nested;
    if (_$data.containsKey('nested') != other._$data.containsKey('nested')) {
      return false;
    }
    if (l$nested != lOther$nested) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$s = s;
    final l$nested = nested;
    return Object.hashAll([
      l$s,
      _$data.containsKey('nested') ? l$nested : const {},
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
    String? s,
    Input$I1? nested,
  });
  CopyWith$Input$I1<TRes> get nested;
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
    Object? s = _undefined,
    Object? nested = _undefined,
  }) =>
      _then(Input$I1._({
        ..._instance._$data,
        if (s != _undefined && s != null) 's': (s as String),
        if (nested != _undefined) 'nested': (nested as Input$I1?),
      }));
  CopyWith$Input$I1<TRes> get nested {
    final local$nested = _instance.nested;
    return local$nested == null
        ? CopyWith$Input$I1.stub(_then(_instance))
        : CopyWith$Input$I1(local$nested, (e) => call(nested: e));
  }
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call({
    String? s,
    Input$I1? nested,
  }) =>
      _res;
  CopyWith$Input$I1<TRes> get nested => CopyWith$Input$I1.stub(_res);
}

const possibleTypesMap = <String, Set<String>>{};
