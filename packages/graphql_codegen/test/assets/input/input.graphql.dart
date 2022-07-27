import 'package:json_annotation/json_annotation.dart';
part 'input.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I1 {
  Input$I1({required this.s, this.nested_input, this.$_min});

  factory Input$I1.fromJson(Map<String, dynamic> json) =>
      _$Input$I1FromJson(json);

  final String s;

  final Input$I1? nested_input;

  @JsonKey(name: '_min')
  final int? $_min;

  Map<String, dynamic> toJson() => _$Input$I1ToJson(this);
  @override
  int get hashCode {
    final l$s = s;
    final l$nested_input = nested_input;
    final l$$_min = $_min;
    return Object.hashAll([l$s, l$nested_input, l$$_min]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I1) || runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$nested_input = nested_input;
    final lOther$nested_input = other.nested_input;
    if (l$nested_input != lOther$nested_input) return false;
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (l$$_min != lOther$$_min) return false;
    return true;
  }

  CopyWith$Input$I1<Input$I1> get copyWith => CopyWith$Input$I1(this, (i) => i);
}

abstract class CopyWith$Input$I1<TRes> {
  factory CopyWith$Input$I1(Input$I1 instance, TRes Function(Input$I1) then) =
      _CopyWithImpl$Input$I1;

  factory CopyWith$Input$I1.stub(TRes res) = _CopyWithStubImpl$Input$I1;

  TRes call({String? s, Input$I1? nested_input, int? $_min});
  CopyWith$Input$I1<TRes> get nested_input;
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(this._instance, this._then);

  final Input$I1 _instance;

  final TRes Function(Input$I1) _then;

  static const _undefined = {};

  TRes call(
          {Object? s = _undefined,
          Object? nested_input = _undefined,
          Object? $_min = _undefined}) =>
      _then(Input$I1(
          s: s == _undefined || s == null ? _instance.s : (s as String),
          nested_input: nested_input == _undefined
              ? _instance.nested_input
              : (nested_input as Input$I1?),
          $_min: $_min == _undefined ? _instance.$_min : ($_min as int?)));
  CopyWith$Input$I1<TRes> get nested_input {
    final local$nested_input = _instance.nested_input;
    return local$nested_input == null
        ? CopyWith$Input$I1.stub(_then(_instance))
        : CopyWith$Input$I1(local$nested_input, (e) => call(nested_input: e));
  }
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call({String? s, Input$I1? nested_input, int? $_min}) => _res;
  CopyWith$Input$I1<TRes> get nested_input => CopyWith$Input$I1.stub(_res);
}
