import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I1 {
  Input$I1({required this.s, this.nested});

  @override
  factory Input$I1.fromJson(Map<String, dynamic> json) =>
      _$Input$I1FromJson(json);

  final String s;

  final Input$I1? nested;

  Map<String, dynamic> toJson() => _$Input$I1ToJson(this);
  int get hashCode {
    final l$s = s;
    final l$nested = nested;
    return Object.hashAll([l$s, l$nested]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I1) || runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$nested = nested;
    final lOther$nested = other.nested;
    if (l$nested != lOther$nested) return false;
    return true;
  }

  CopyWith$Input$I1<Input$I1> get copyWith => CopyWith$Input$I1(this, (i) => i);
}

abstract class CopyWith$Input$I1<TRes> {
  factory CopyWith$Input$I1(Input$I1 instance, TRes Function(Input$I1) then) =
      _CopyWithImpl$Input$I1;

  factory CopyWith$Input$I1.stub(TRes res) = _CopyWithStubImpl$Input$I1;

  TRes call({String? s, Input$I1? nested});
  CopyWith$Input$I1<TRes> get nested;
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(this._instance, this._then);

  final Input$I1 _instance;

  final TRes Function(Input$I1) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined, Object? nested = _undefined}) =>
      _then(Input$I1(
          s: s == _undefined || s == null ? _instance.s : (s as String),
          nested:
              nested == _undefined ? _instance.nested : (nested as Input$I1?)));
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

  call({String? s, Input$I1? nested}) => _res;
  CopyWith$Input$I1<TRes> get nested => CopyWith$Input$I1.stub(_res);
}

const possibleTypesMap = {};
