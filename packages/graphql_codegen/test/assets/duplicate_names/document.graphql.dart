abstract class Input$I {
  factory Input$I({String? title}) => _Impl$Input$I({'title': title});

  factory Input$I.withoutNulls({String? title}) {
    final l$data = <String, dynamic>{};
    if (title != null) l$data['title'] = title;
    return _Impl$Input$I(l$data);
  }

  factory Input$I.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    return _Impl$Input$I(result$data);
  }

  String? get title;
  Map<String, dynamic> toJson();
  CopyWith$Input$I<Input$I> get copyWith;
  _Impl$Input$I get $impl;
}

class _Impl$Input$I implements Input$I {
  _Impl$Input$I(this.$data);

  final Map<String, dynamic> $data;

  String? get title => ($data['title'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    return result$data;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$I) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if ($data.containsKey('title') != other.$data.containsKey('title')) {
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
    return Object.hashAll([$data.containsKey('title') ? l$title : const {}]);
  }

  _Impl$Input$I get $impl => this;
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(Input$I instance, TRes Function(Input$I) then) =>
      _CopyWithImpl$Input$I(instance.$impl, then);

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? title});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(this._instance, this._then);

  final _Impl$Input$I _instance;

  final TRes Function(_Impl$Input$I) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined}) => _then(_Impl$Input$I({
        ..._instance.$data,
        if (title != _undefined) 'title': (title as String?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? title}) => _res;
}

abstract class Input$I_ {
  factory Input$I_({double? value}) => _Impl$Input$I_({'value': value});

  factory Input$I_.withoutNulls({double? value}) {
    final l$data = <String, dynamic>{};
    if (value != null) l$data['value'] = value;
    return _Impl$Input$I_(l$data);
  }

  factory Input$I_.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as double?);
    }
    return _Impl$Input$I_(result$data);
  }

  double? get value;
  Map<String, dynamic> toJson();
  CopyWith$Input$I_<Input$I_> get copyWith;
  _Impl$Input$I_ get $impl;
}

class _Impl$Input$I_ implements Input$I_ {
  _Impl$Input$I_(this.$data);

  final Map<String, dynamic> $data;

  double? get value => ($data['value'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    return result$data;
  }

  CopyWith$Input$I_<Input$I_> get copyWith => CopyWith$Input$I_(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$I_) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if ($data.containsKey('value') != other.$data.containsKey('value')) {
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
    return Object.hashAll([$data.containsKey('value') ? l$value : const {}]);
  }

  _Impl$Input$I_ get $impl => this;
}

abstract class CopyWith$Input$I_<TRes> {
  factory CopyWith$Input$I_(Input$I_ instance, TRes Function(Input$I_) then) =>
      _CopyWithImpl$Input$I_(instance.$impl, then);

  factory CopyWith$Input$I_.stub(TRes res) = _CopyWithStubImpl$Input$I_;

  TRes call({double? value});
}

class _CopyWithImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithImpl$Input$I_(this._instance, this._then);

  final _Impl$Input$I_ _instance;

  final TRes Function(_Impl$Input$I_) _then;

  static const _undefined = {};

  TRes call({Object? value = _undefined}) => _then(_Impl$Input$I_({
        ..._instance.$data,
        if (value != _undefined) 'value': (value as double?),
      }));
}

class _CopyWithStubImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithStubImpl$Input$I_(this._res);

  TRes _res;

  call({double? value}) => _res;
}

abstract class Input$i {
  factory Input$i({bool? enabled}) => _Impl$Input$i({'enabled': enabled});

  factory Input$i.withoutNulls({bool? enabled}) {
    final l$data = <String, dynamic>{};
    if (enabled != null) l$data['enabled'] = enabled;
    return _Impl$Input$i(l$data);
  }

  factory Input$i.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = (l$enabled as bool?);
    }
    return _Impl$Input$i(result$data);
  }

  bool? get enabled;
  Map<String, dynamic> toJson();
  CopyWith$Input$i<Input$i> get copyWith;
  _Impl$Input$i get $impl;
}

class _Impl$Input$i implements Input$i {
  _Impl$Input$i(this.$data);

  final Map<String, dynamic> $data;

  bool? get enabled => ($data['enabled'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled;
    }
    return result$data;
  }

  CopyWith$Input$i<Input$i> get copyWith => CopyWith$Input$i(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$i) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if ($data.containsKey('enabled') != other.$data.containsKey('enabled')) {
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
        [$data.containsKey('enabled') ? l$enabled : const {}]);
  }

  _Impl$Input$i get $impl => this;
}

abstract class CopyWith$Input$i<TRes> {
  factory CopyWith$Input$i(Input$i instance, TRes Function(Input$i) then) =>
      _CopyWithImpl$Input$i(instance.$impl, then);

  factory CopyWith$Input$i.stub(TRes res) = _CopyWithStubImpl$Input$i;

  TRes call({bool? enabled});
}

class _CopyWithImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithImpl$Input$i(this._instance, this._then);

  final _Impl$Input$i _instance;

  final TRes Function(_Impl$Input$i) _then;

  static const _undefined = {};

  TRes call({Object? enabled = _undefined}) => _then(_Impl$Input$i({
        ..._instance.$data,
        if (enabled != _undefined) 'enabled': (enabled as bool?),
      }));
}

class _CopyWithStubImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithStubImpl$Input$i(this._res);

  TRes _res;

  call({bool? enabled}) => _res;
}
