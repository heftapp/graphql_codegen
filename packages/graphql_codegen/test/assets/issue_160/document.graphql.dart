class Input$I1 {
  factory Input$I1({
    List<List<Input$I2>>? nested,
    List<List<Input$I2?>?>? maybe_nested,
  }) =>
      Input$I1._({
        if (nested != null) r'nested': nested,
        if (maybe_nested != null) r'maybe_nested': maybe_nested,
      });

  Input$I1._(this._$data);

  factory Input$I1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('nested')) {
      final l$nested = data['nested'];
      result$data['nested'] = (l$nested as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Input$I2.fromJson((e as Map<String, dynamic>)))
              .toList())
          .toList();
    }
    if (data.containsKey('maybe_nested')) {
      final l$maybe_nested = data['maybe_nested'];
      result$data['maybe_nested'] = (l$maybe_nested as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$I2.fromJson((e as Map<String, dynamic>)))
              .toList())
          .toList();
    }
    return Input$I1._(result$data);
  }

  Map<String, dynamic> _$data;

  List<List<Input$I2>>? get nested =>
      (_$data['nested'] as List<List<Input$I2>>?);
  List<List<Input$I2?>?>? get maybe_nested =>
      (_$data['maybe_nested'] as List<List<Input$I2?>?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('nested')) {
      final l$nested = nested;
      result$data['nested'] =
          l$nested?.map((e) => e.map((e) => e.toJson()).toList()).toList();
    }
    if (_$data.containsKey('maybe_nested')) {
      final l$maybe_nested = maybe_nested;
      result$data['maybe_nested'] = l$maybe_nested
          ?.map((e) => e?.map((e) => e?.toJson()).toList())
          .toList();
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
    final l$nested = nested;
    final lOther$nested = other.nested;
    if (_$data.containsKey('nested') != other._$data.containsKey('nested')) {
      return false;
    }
    if (l$nested != null && lOther$nested != null) {
      if (l$nested.length != lOther$nested.length) {
        return false;
      }
      for (int i = 0; i < l$nested.length; i++) {
        final l$nested$entry = l$nested[i];
        final lOther$nested$entry = lOther$nested[i];
        if (l$nested$entry.length != lOther$nested$entry.length) {
          return false;
        }
        for (int i = 0; i < l$nested$entry.length; i++) {
          final l$nested$entry$entry = l$nested$entry[i];
          final lOther$nested$entry$entry = lOther$nested$entry[i];
          if (l$nested$entry$entry != lOther$nested$entry$entry) {
            return false;
          }
        }
      }
    } else if (l$nested != lOther$nested) {
      return false;
    }
    final l$maybe_nested = maybe_nested;
    final lOther$maybe_nested = other.maybe_nested;
    if (_$data.containsKey('maybe_nested') !=
        other._$data.containsKey('maybe_nested')) {
      return false;
    }
    if (l$maybe_nested != null && lOther$maybe_nested != null) {
      if (l$maybe_nested.length != lOther$maybe_nested.length) {
        return false;
      }
      for (int i = 0; i < l$maybe_nested.length; i++) {
        final l$maybe_nested$entry = l$maybe_nested[i];
        final lOther$maybe_nested$entry = lOther$maybe_nested[i];
        if (l$maybe_nested$entry != null && lOther$maybe_nested$entry != null) {
          if (l$maybe_nested$entry.length != lOther$maybe_nested$entry.length) {
            return false;
          }
          for (int i = 0; i < l$maybe_nested$entry.length; i++) {
            final l$maybe_nested$entry$entry = l$maybe_nested$entry[i];
            final lOther$maybe_nested$entry$entry =
                lOther$maybe_nested$entry[i];
            if (l$maybe_nested$entry$entry != lOther$maybe_nested$entry$entry) {
              return false;
            }
          }
        } else if (l$maybe_nested$entry != lOther$maybe_nested$entry) {
          return false;
        }
      }
    } else if (l$maybe_nested != lOther$maybe_nested) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nested = nested;
    final l$maybe_nested = maybe_nested;
    return Object.hashAll([
      _$data.containsKey('nested')
          ? l$nested == null
              ? null
              : Object.hashAll(
                  l$nested.map((v) => Object.hashAll(v.map((v) => v))))
          : const {},
      _$data.containsKey('maybe_nested')
          ? l$maybe_nested == null
              ? null
              : Object.hashAll(l$maybe_nested.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
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
    List<List<Input$I2>>? nested,
    List<List<Input$I2?>?>? maybe_nested,
  });
  TRes nested(
      Iterable<Iterable<Input$I2>>? Function(
              Iterable<Iterable<CopyWith$Input$I2<Input$I2>>>?)
          _fn);
  TRes maybe_nested(
      Iterable<Iterable<Input$I2?>?>? Function(
              Iterable<Iterable<CopyWith$Input$I2<Input$I2>?>?>?)
          _fn);
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(
    this._instance,
    this._then,
  );

  final Input$I1 _instance;

  final TRes Function(Input$I1) _then;

  static const _undefined = {};

  TRes call({
    Object? nested = _undefined,
    Object? maybe_nested = _undefined,
  }) =>
      _then(Input$I1._({
        ..._instance._$data,
        if (nested != _undefined) 'nested': (nested as List<List<Input$I2>>?),
        if (maybe_nested != _undefined)
          'maybe_nested': (maybe_nested as List<List<Input$I2?>?>?),
      }));
  TRes nested(
          Iterable<Iterable<Input$I2>>? Function(
                  Iterable<Iterable<CopyWith$Input$I2<Input$I2>>>?)
              _fn) =>
      call(
          nested:
              _fn(_instance.nested?.map((e) => e.map((e) => CopyWith$Input$I2(
                    e,
                    (i) => i,
                  ))))?.map((e) => e.toList()).toList());
  TRes maybe_nested(
          Iterable<Iterable<Input$I2?>?>? Function(
                  Iterable<Iterable<CopyWith$Input$I2<Input$I2>?>?>?)
              _fn) =>
      call(
          maybe_nested:
              _fn(_instance.maybe_nested?.map((e) => e?.map((e) => e == null
                  ? null
                  : CopyWith$Input$I2(
                      e,
                      (i) => i,
                    ))))?.map((e) => e?.toList()).toList());
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call({
    List<List<Input$I2>>? nested,
    List<List<Input$I2?>?>? maybe_nested,
  }) =>
      _res;
  nested(_fn) => _res;
  maybe_nested(_fn) => _res;
}

class Input$I2 {
  factory Input$I2({String? str}) => Input$I2._({
        if (str != null) r'str': str,
      });

  Input$I2._(this._$data);

  factory Input$I2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('str')) {
      final l$str = data['str'];
      result$data['str'] = (l$str as String?);
    }
    return Input$I2._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get str => (_$data['str'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('str')) {
      final l$str = str;
      result$data['str'] = l$str;
    }
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
    if (!(other is Input$I2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$str = str;
    final lOther$str = other.str;
    if (_$data.containsKey('str') != other._$data.containsKey('str')) {
      return false;
    }
    if (l$str != lOther$str) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$str = str;
    return Object.hashAll([_$data.containsKey('str') ? l$str : const {}]);
  }
}

abstract class CopyWith$Input$I2<TRes> {
  factory CopyWith$Input$I2(
    Input$I2 instance,
    TRes Function(Input$I2) then,
  ) = _CopyWithImpl$Input$I2;

  factory CopyWith$Input$I2.stub(TRes res) = _CopyWithStubImpl$Input$I2;

  TRes call({String? str});
}

class _CopyWithImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithImpl$Input$I2(
    this._instance,
    this._then,
  );

  final Input$I2 _instance;

  final TRes Function(Input$I2) _then;

  static const _undefined = {};

  TRes call({Object? str = _undefined}) => _then(Input$I2._({
        ..._instance._$data,
        if (str != _undefined) 'str': (str as String?),
      }));
}

class _CopyWithStubImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithStubImpl$Input$I2(this._res);

  TRes _res;

  call({String? str}) => _res;
}
