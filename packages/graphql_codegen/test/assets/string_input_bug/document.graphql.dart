abstract class Input$I {
  factory Input$I({String? $String, int? $OtherReservedKeyword}) =>
      _Impl$Input$I(
          {'String': $String, 'OtherReservedKeyword': $OtherReservedKeyword});

  factory Input$I.withoutNulls({String? $String, int? $OtherReservedKeyword}) {
    final l$data = <String, dynamic>{};
    if ($String != null) l$data['String'] = $String;
    if ($OtherReservedKeyword != null)
      l$data['OtherReservedKeyword'] = $OtherReservedKeyword;
    return _Impl$Input$I(l$data);
  }

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
    return _Impl$Input$I(result$data);
  }

  String? get $String;
  int? get $OtherReservedKeyword;
  Map<String, dynamic> toJson();
  CopyWith$Input$I<Input$I> get copyWith;
  _Impl$Input$I get $impl;
}

class _Impl$Input$I implements Input$I {
  _Impl$Input$I(this.$data);

  final Map<String, dynamic> $data;

  String? get $String => ($data['String'] as String?);
  int? get $OtherReservedKeyword => ($data['OtherReservedKeyword'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('String')) {
      final l$$String = $String;
      result$data['String'] = l$$String;
    }
    if ($data.containsKey('OtherReservedKeyword')) {
      final l$$OtherReservedKeyword = $OtherReservedKeyword;
      result$data['OtherReservedKeyword'] = l$$OtherReservedKeyword;
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
    final l$$String = $String;
    final lOther$$String = other.$String;
    if ($data.containsKey('String') != other.$data.containsKey('String')) {
      return false;
    }
    if (l$$String != lOther$$String) {
      return false;
    }
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    final lOther$$OtherReservedKeyword = other.$OtherReservedKeyword;
    if ($data.containsKey('OtherReservedKeyword') !=
        other.$data.containsKey('OtherReservedKeyword')) {
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
      $data.containsKey('String') ? l$$String : const {},
      $data.containsKey('OtherReservedKeyword')
          ? l$$OtherReservedKeyword
          : const {}
    ]);
  }

  _Impl$Input$I get $impl => this;
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(Input$I instance, TRes Function(Input$I) then) =>
      _CopyWithImpl$Input$I(instance.$impl, then);

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? $String, int? $OtherReservedKeyword});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(this._instance, this._then);

  final _Impl$Input$I _instance;

  final TRes Function(_Impl$Input$I) _then;

  static const _undefined = {};

  TRes call(
          {Object? $String = _undefined,
          Object? $OtherReservedKeyword = _undefined}) =>
      _then(_Impl$Input$I({
        ..._instance.$data,
        if ($String != _undefined) 'String': ($String as String?),
        if ($OtherReservedKeyword != _undefined)
          'OtherReservedKeyword': ($OtherReservedKeyword as int?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? $String, int? $OtherReservedKeyword}) => _res;
}
