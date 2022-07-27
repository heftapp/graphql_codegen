import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.title});

  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  final String? title;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
  @override
  int get hashCode {
    final l$title = title;
    return Object.hashAll([l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I) || runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    return true;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(this, (i) => i);
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(Input$I instance, TRes Function(Input$I) then) =
      _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? title});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(this._instance, this._then);

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined}) => _then(Input$I(
      title: title == _undefined ? _instance.title : (title as String?)));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? title}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$I_ {
  Input$I_({this.value});

  factory Input$I_.fromJson(Map<String, dynamic> json) =>
      _$Input$I_FromJson(json);

  final double? value;

  Map<String, dynamic> toJson() => _$Input$I_ToJson(this);
  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I_) || runtimeType != other.runtimeType) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }

  CopyWith$Input$I_<Input$I_> get copyWith => CopyWith$Input$I_(this, (i) => i);
}

abstract class CopyWith$Input$I_<TRes> {
  factory CopyWith$Input$I_(Input$I_ instance, TRes Function(Input$I_) then) =
      _CopyWithImpl$Input$I_;

  factory CopyWith$Input$I_.stub(TRes res) = _CopyWithStubImpl$Input$I_;

  TRes call({double? value});
}

class _CopyWithImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithImpl$Input$I_(this._instance, this._then);

  final Input$I_ _instance;

  final TRes Function(Input$I_) _then;

  static const _undefined = {};

  TRes call({Object? value = _undefined}) => _then(Input$I_(
      value: value == _undefined ? _instance.value : (value as double?)));
}

class _CopyWithStubImpl$Input$I_<TRes> implements CopyWith$Input$I_<TRes> {
  _CopyWithStubImpl$Input$I_(this._res);

  TRes _res;

  call({double? value}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$i {
  Input$i({this.enabled});

  factory Input$i.fromJson(Map<String, dynamic> json) =>
      _$Input$iFromJson(json);

  final bool? enabled;

  Map<String, dynamic> toJson() => _$Input$iToJson(this);
  @override
  int get hashCode {
    final l$enabled = enabled;
    return Object.hashAll([l$enabled]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$i) || runtimeType != other.runtimeType) return false;
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) return false;
    return true;
  }

  CopyWith$Input$i<Input$i> get copyWith => CopyWith$Input$i(this, (i) => i);
}

abstract class CopyWith$Input$i<TRes> {
  factory CopyWith$Input$i(Input$i instance, TRes Function(Input$i) then) =
      _CopyWithImpl$Input$i;

  factory CopyWith$Input$i.stub(TRes res) = _CopyWithStubImpl$Input$i;

  TRes call({bool? enabled});
}

class _CopyWithImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithImpl$Input$i(this._instance, this._then);

  final Input$i _instance;

  final TRes Function(Input$i) _then;

  static const _undefined = {};

  TRes call({Object? enabled = _undefined}) => _then(Input$i(
      enabled: enabled == _undefined ? _instance.enabled : (enabled as bool?)));
}

class _CopyWithStubImpl$Input$i<TRes> implements CopyWith$Input$i<TRes> {
  _CopyWithStubImpl$Input$i(this._res);

  TRes _res;

  call({bool? enabled}) => _res;
}
