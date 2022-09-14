class Input$I {
  factory Input$I({
    String? $String,
    int? $OtherReservedKeyword,
  }) =>
      Input$I._({
        if ($String != null) r'String': $String,
        if ($OtherReservedKeyword != null)
          r'OtherReservedKeyword': $OtherReservedKeyword,
      });

  Input$I._(this._$data);

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
    return Input$I._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $String => (_$data['String'] as String?);
  int? get $OtherReservedKeyword => (_$data['OtherReservedKeyword'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('String')) {
      final l$$String = $String;
      result$data['String'] = l$$String;
    }
    if (_$data.containsKey('OtherReservedKeyword')) {
      final l$$OtherReservedKeyword = $OtherReservedKeyword;
      result$data['OtherReservedKeyword'] = l$$OtherReservedKeyword;
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
    if (!(other is Input$I) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$String = $String;
    final lOther$$String = other.$String;
    if (_$data.containsKey('String') != other._$data.containsKey('String')) {
      return false;
    }
    if (l$$String != lOther$$String) {
      return false;
    }
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    final lOther$$OtherReservedKeyword = other.$OtherReservedKeyword;
    if (_$data.containsKey('OtherReservedKeyword') !=
        other._$data.containsKey('OtherReservedKeyword')) {
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
      _$data.containsKey('String') ? l$$String : const {},
      _$data.containsKey('OtherReservedKeyword')
          ? l$$OtherReservedKeyword
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
    String? $String,
    int? $OtherReservedKeyword,
  });
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(
    this._instance,
    this._then,
  );

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = {};

  TRes call({
    Object? $String = _undefined,
    Object? $OtherReservedKeyword = _undefined,
  }) =>
      _then(Input$I._({
        ..._instance._$data,
        if ($String != _undefined) 'String': ($String as String?),
        if ($OtherReservedKeyword != _undefined)
          'OtherReservedKeyword': ($OtherReservedKeyword as int?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({
    String? $String,
    int? $OtherReservedKeyword,
  }) =>
      _res;
}
