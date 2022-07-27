abstract class Input$I1 {
  factory Input$I1(
          {required String s,
          String? sMaybe,
          Input$I1? nested_input,
          List<Input$I1>? children,
          List<List<Input$I1?>?>? children2,
          int? $_min,
          Enum$E? eMaybe,
          required Enum$E e,
          required List<Enum$E> es,
          Input$I2? i2}) =>
      _Impl$Input$I1({
        's': s,
        'sMaybe': sMaybe,
        'nested_input': nested_input,
        'children': children,
        'children2': children2,
        '_min': $_min,
        'eMaybe': eMaybe,
        'e': e,
        'es': es,
        'i2': i2
      });

  factory Input$I1.withoutNulls(
      {required String s,
      String? sMaybe,
      Input$I1? nested_input,
      List<Input$I1>? children,
      List<List<Input$I1?>?>? children2,
      int? $_min,
      Enum$E? eMaybe,
      required Enum$E e,
      required List<Enum$E> es,
      Input$I2? i2}) {
    final l$data = <String, dynamic>{'s': s, 'e': e, 'es': es};
    if (sMaybe != null) l$data['sMaybe'] = sMaybe;
    if (nested_input != null) l$data['nested_input'] = nested_input;
    if (children != null) l$data['children'] = children;
    if (children2 != null) l$data['children2'] = children2;
    if ($_min != null) l$data['_min'] = $_min;
    if (eMaybe != null) l$data['eMaybe'] = eMaybe;
    if (i2 != null) l$data['i2'] = i2;
    return _Impl$Input$I1(l$data);
  }

  factory Input$I1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$s = data['s'];
    result$data['s'] = (l$s as String);
    if (data.containsKey('sMaybe')) {
      final l$sMaybe = data['sMaybe'];
      result$data['sMaybe'] = (l$sMaybe as String?);
    }
    if (data.containsKey('nested_input')) {
      final l$nested_input = data['nested_input'];
      result$data['nested_input'] = l$nested_input == null
          ? null
          : Input$I1.fromJson((l$nested_input as Map<String, dynamic>));
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = (l$children as List<dynamic>?)
          ?.map((e) => Input$I1.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('children2')) {
      final l$children2 = data['children2'];
      result$data['children2'] = (l$children2 as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$I1.fromJson((e as Map<String, dynamic>)))
              .toList())
          .toList();
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = (l$$_min as int?);
    }
    if (data.containsKey('eMaybe')) {
      final l$eMaybe = data['eMaybe'];
      result$data['eMaybe'] =
          l$eMaybe == null ? null : fromJson$Enum$E((l$eMaybe as String));
    }
    final l$e = data['e'];
    result$data['e'] = fromJson$Enum$E((l$e as String));
    final l$es = data['es'];
    result$data['es'] = (l$es as List<dynamic>)
        .map((e) => fromJson$Enum$E((e as String)))
        .toList();
    if (data.containsKey('i2')) {
      final l$i2 = data['i2'];
      result$data['i2'] = l$i2 == null
          ? null
          : Input$I2.fromJson((l$i2 as Map<String, dynamic>));
    }
    return _Impl$Input$I1(result$data);
  }

  String get s;
  String? get sMaybe;
  Input$I1? get nested_input;
  List<Input$I1>? get children;
  List<List<Input$I1?>?>? get children2;
  int? get $_min;
  Enum$E? get eMaybe;
  Enum$E get e;
  List<Enum$E> get es;
  Input$I2? get i2;
  Map<String, dynamic> toJson();
  CopyWith$Input$I1<Input$I1> get copyWith;
  _Impl$Input$I1 get $impl;
}

class _Impl$Input$I1 implements Input$I1 {
  _Impl$Input$I1(this.$data);

  final Map<String, dynamic> $data;

  String get s => ($data['s'] as String);
  String? get sMaybe => ($data['sMaybe'] as String?);
  Input$I1? get nested_input => ($data['nested_input'] as Input$I1?);
  List<Input$I1>? get children => ($data['children'] as List<Input$I1>?);
  List<List<Input$I1?>?>? get children2 =>
      ($data['children2'] as List<List<Input$I1?>?>?);
  int? get $_min => ($data['_min'] as int?);
  Enum$E? get eMaybe => ($data['eMaybe'] as Enum$E?);
  Enum$E get e => ($data['e'] as Enum$E);
  List<Enum$E> get es => ($data['es'] as List<Enum$E>);
  Input$I2? get i2 => ($data['i2'] as Input$I2?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$s = s;
    result$data['s'] = l$s;
    if ($data.containsKey('sMaybe')) {
      final l$sMaybe = sMaybe;
      result$data['sMaybe'] = l$sMaybe;
    }
    if ($data.containsKey('nested_input')) {
      final l$nested_input = nested_input;
      result$data['nested_input'] = l$nested_input?.toJson();
    }
    if ($data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.map((e) => e.toJson()).toList();
    }
    if ($data.containsKey('children2')) {
      final l$children2 = children2;
      result$data['children2'] =
          l$children2?.map((e) => e?.map((e) => e?.toJson()).toList()).toList();
    }
    if ($data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min;
    }
    if ($data.containsKey('eMaybe')) {
      final l$eMaybe = eMaybe;
      result$data['eMaybe'] = l$eMaybe == null ? null : toJson$Enum$E(l$eMaybe);
    }
    final l$e = e;
    result$data['e'] = toJson$Enum$E(l$e);
    final l$es = es;
    result$data['es'] = l$es.map((e) => toJson$Enum$E(e)).toList();
    if ($data.containsKey('i2')) {
      final l$i2 = i2;
      result$data['i2'] = l$i2?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$I1<Input$I1> get copyWith => CopyWith$Input$I1(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$I1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$sMaybe = sMaybe;
    final lOther$sMaybe = other.sMaybe;
    if ($data.containsKey('sMaybe') != other.$data.containsKey('sMaybe')) {
      return false;
    }
    if (l$sMaybe != lOther$sMaybe) {
      return false;
    }
    final l$nested_input = nested_input;
    final lOther$nested_input = other.nested_input;
    if ($data.containsKey('nested_input') !=
        other.$data.containsKey('nested_input')) {
      return false;
    }
    if (l$nested_input != lOther$nested_input) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if ($data.containsKey('children') != other.$data.containsKey('children')) {
      return false;
    }
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    final l$children2 = children2;
    final lOther$children2 = other.children2;
    if ($data.containsKey('children2') !=
        other.$data.containsKey('children2')) {
      return false;
    }
    if (l$children2 != null && lOther$children2 != null) {
      if (l$children2.length != lOther$children2.length) {
        return false;
      }
      for (int i = 0; i < l$children2.length; i++) {
        final l$children2$entry = l$children2[i];
        final lOther$children2$entry = lOther$children2[i];
        if (l$children2$entry != null && lOther$children2$entry != null) {
          if (l$children2$entry.length != lOther$children2$entry.length) {
            return false;
          }
          for (int i = 0; i < l$children2$entry.length; i++) {
            final l$children2$entry$entry = l$children2$entry[i];
            final lOther$children2$entry$entry = lOther$children2$entry[i];
            if (l$children2$entry$entry != lOther$children2$entry$entry) {
              return false;
            }
          }
        } else if (l$children2$entry != lOther$children2$entry) {
          return false;
        }
      }
    } else if (l$children2 != lOther$children2) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if ($data.containsKey('_min') != other.$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$eMaybe = eMaybe;
    final lOther$eMaybe = other.eMaybe;
    if ($data.containsKey('eMaybe') != other.$data.containsKey('eMaybe')) {
      return false;
    }
    if (l$eMaybe != lOther$eMaybe) {
      return false;
    }
    final l$e = e;
    final lOther$e = other.e;
    if (l$e != lOther$e) {
      return false;
    }
    final l$es = es;
    final lOther$es = other.es;
    if (l$es.length != lOther$es.length) {
      return false;
    }
    for (int i = 0; i < l$es.length; i++) {
      final l$es$entry = l$es[i];
      final lOther$es$entry = lOther$es[i];
      if (l$es$entry != lOther$es$entry) {
        return false;
      }
    }
    final l$i2 = i2;
    final lOther$i2 = other.i2;
    if ($data.containsKey('i2') != other.$data.containsKey('i2')) {
      return false;
    }
    if (l$i2 != lOther$i2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$s = s;
    final l$sMaybe = sMaybe;
    final l$nested_input = nested_input;
    final l$children = children;
    final l$children2 = children2;
    final l$$_min = $_min;
    final l$eMaybe = eMaybe;
    final l$e = e;
    final l$es = es;
    final l$i2 = i2;
    return Object.hashAll([
      l$s,
      $data.containsKey('sMaybe') ? l$sMaybe : const {},
      $data.containsKey('nested_input') ? l$nested_input : const {},
      $data.containsKey('children')
          ? l$children == null
              ? null
              : Object.hashAll(l$children.map((v) => v))
          : const {},
      $data.containsKey('children2')
          ? l$children2 == null
              ? null
              : Object.hashAll(l$children2.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
      $data.containsKey('_min') ? l$$_min : const {},
      $data.containsKey('eMaybe') ? l$eMaybe : const {},
      l$e,
      Object.hashAll(l$es.map((v) => v)),
      $data.containsKey('i2') ? l$i2 : const {}
    ]);
  }

  _Impl$Input$I1 get $impl => this;
}

abstract class CopyWith$Input$I1<TRes> {
  factory CopyWith$Input$I1(Input$I1 instance, TRes Function(Input$I1) then) =>
      _CopyWithImpl$Input$I1(instance.$impl, then);

  factory CopyWith$Input$I1.stub(TRes res) = _CopyWithStubImpl$Input$I1;

  TRes call(
      {String? s,
      String? sMaybe,
      Input$I1? nested_input,
      List<Input$I1>? children,
      List<List<Input$I1?>?>? children2,
      int? $_min,
      Enum$E? eMaybe,
      Enum$E? e,
      List<Enum$E>? es,
      Input$I2? i2});
  CopyWith$Input$I1<TRes> get nested_input;
  TRes children(
      Iterable<Input$I1>? Function(Iterable<CopyWith$Input$I1<Input$I1>>?) _fn);
  TRes children2(
      Iterable<Iterable<Input$I1?>?>? Function(
              Iterable<Iterable<CopyWith$Input$I1<Input$I1>?>?>?)
          _fn);
  CopyWith$Input$I2<TRes> get i2;
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(this._instance, this._then);

  final _Impl$Input$I1 _instance;

  final TRes Function(_Impl$Input$I1) _then;

  static const _undefined = {};

  TRes call(
          {Object? s = _undefined,
          Object? sMaybe = _undefined,
          Object? nested_input = _undefined,
          Object? children = _undefined,
          Object? children2 = _undefined,
          Object? $_min = _undefined,
          Object? eMaybe = _undefined,
          Object? e = _undefined,
          Object? es = _undefined,
          Object? i2 = _undefined}) =>
      _then(_Impl$Input$I1({
        ..._instance.$data,
        if (s != _undefined && s != null) 's': (s as String),
        if (sMaybe != _undefined) 'sMaybe': (sMaybe as String?),
        if (nested_input != _undefined)
          'nested_input': (nested_input as Input$I1?),
        if (children != _undefined) 'children': (children as List<Input$I1>?),
        if (children2 != _undefined)
          'children2': (children2 as List<List<Input$I1?>?>?),
        if ($_min != _undefined) '_min': ($_min as int?),
        if (eMaybe != _undefined) 'eMaybe': (eMaybe as Enum$E?),
        if (e != _undefined && e != null) 'e': (e as Enum$E),
        if (es != _undefined && es != null) 'es': (es as List<Enum$E>),
        if (i2 != _undefined) 'i2': (i2 as Input$I2?),
      }));
  CopyWith$Input$I1<TRes> get nested_input {
    final local$nested_input = _instance.nested_input;
    return local$nested_input == null
        ? CopyWith$Input$I1.stub(_then(_instance))
        : CopyWith$Input$I1(local$nested_input, (e) => call(nested_input: e));
  }

  TRes children(
          Iterable<Input$I1>? Function(Iterable<CopyWith$Input$I1<Input$I1>>?)
              _fn) =>
      call(
          children: _fn(_instance.children
              ?.map((e) => CopyWith$Input$I1(e, (i) => i)))?.toList());
  TRes children2(
          Iterable<Iterable<Input$I1?>?>? Function(
                  Iterable<Iterable<CopyWith$Input$I1<Input$I1>?>?>?)
              _fn) =>
      call(
          children2: _fn(_instance.children2?.map((e) => e?.map(
                  (e) => e == null ? null : CopyWith$Input$I1(e, (i) => i))))
              ?.map((e) => e?.toList())
              .toList());
  CopyWith$Input$I2<TRes> get i2 {
    final local$i2 = _instance.i2;
    return local$i2 == null
        ? CopyWith$Input$I2.stub(_then(_instance))
        : CopyWith$Input$I2(local$i2, (e) => call(i2: e));
  }
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call(
          {String? s,
          String? sMaybe,
          Input$I1? nested_input,
          List<Input$I1>? children,
          List<List<Input$I1?>?>? children2,
          int? $_min,
          Enum$E? eMaybe,
          Enum$E? e,
          List<Enum$E>? es,
          Input$I2? i2}) =>
      _res;
  CopyWith$Input$I1<TRes> get nested_input => CopyWith$Input$I1.stub(_res);
  children(_fn) => _res;
  children2(_fn) => _res;
  CopyWith$Input$I2<TRes> get i2 => CopyWith$Input$I2.stub(_res);
}

abstract class Input$I2 {
  factory Input$I2({String? foobar}) => _Impl$Input$I2({'foobar': foobar});

  factory Input$I2.withoutNulls({String? foobar}) {
    final l$data = <String, dynamic>{};
    if (foobar != null) l$data['foobar'] = foobar;
    return _Impl$Input$I2(l$data);
  }

  factory Input$I2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('foobar')) {
      final l$foobar = data['foobar'];
      result$data['foobar'] = (l$foobar as String?);
    }
    return _Impl$Input$I2(result$data);
  }

  String? get foobar;
  Map<String, dynamic> toJson();
  CopyWith$Input$I2<Input$I2> get copyWith;
  _Impl$Input$I2 get $impl;
}

class _Impl$Input$I2 implements Input$I2 {
  _Impl$Input$I2(this.$data);

  final Map<String, dynamic> $data;

  String? get foobar => ($data['foobar'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('foobar')) {
      final l$foobar = foobar;
      result$data['foobar'] = l$foobar;
    }
    return result$data;
  }

  CopyWith$Input$I2<Input$I2> get copyWith => CopyWith$Input$I2(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$I2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$foobar = foobar;
    final lOther$foobar = other.foobar;
    if ($data.containsKey('foobar') != other.$data.containsKey('foobar')) {
      return false;
    }
    if (l$foobar != lOther$foobar) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$foobar = foobar;
    return Object.hashAll([$data.containsKey('foobar') ? l$foobar : const {}]);
  }

  _Impl$Input$I2 get $impl => this;
}

abstract class CopyWith$Input$I2<TRes> {
  factory CopyWith$Input$I2(Input$I2 instance, TRes Function(Input$I2) then) =>
      _CopyWithImpl$Input$I2(instance.$impl, then);

  factory CopyWith$Input$I2.stub(TRes res) = _CopyWithStubImpl$Input$I2;

  TRes call({String? foobar});
}

class _CopyWithImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithImpl$Input$I2(this._instance, this._then);

  final _Impl$Input$I2 _instance;

  final TRes Function(_Impl$Input$I2) _then;

  static const _undefined = {};

  TRes call({Object? foobar = _undefined}) => _then(_Impl$Input$I2({
        ..._instance.$data,
        if (foobar != _undefined) 'foobar': (foobar as String?),
      }));
}

class _CopyWithStubImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithStubImpl$Input$I2(this._res);

  TRes _res;

  call({String? foobar}) => _res;
}

enum Enum$E { FOO, BAR, BAZ, $unknown }
String toJson$Enum$E(Enum$E e) {
  switch (e) {
    case Enum$E.FOO:
      return r'FOO';
    case Enum$E.BAR:
      return r'BAR';
    case Enum$E.BAZ:
      return r'BAZ';
    case Enum$E.$unknown:
      return r'$unknown';
  }
}

Enum$E fromJson$Enum$E(String value) {
  switch (value) {
    case r'FOO':
      return Enum$E.FOO;
    case r'BAR':
      return Enum$E.BAR;
    case r'BAZ':
      return Enum$E.BAZ;
    default:
      return Enum$E.$unknown;
  }
}
