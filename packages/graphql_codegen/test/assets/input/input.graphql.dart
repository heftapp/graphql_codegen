import 'package:json_annotation/json_annotation.dart';
part 'input.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I1 {
  Input$I1({required this.s, this.nested_input, this.$_min});

  @override
  factory Input$I1.fromJson(Map<String, dynamic> json) =>
      _$Input$I1FromJson(json);

  final String s;

  final Input$I1? nested_input;

  @JsonKey(name: '_min')
  final int? $_min;

  Map<String, dynamic> toJson() => _$Input$I1ToJson(this);
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

  TRes call({String? s, Input$I1? nested_input, int? $_min});
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
          s: s == _undefined ? _instance.s : (s as String),
          nested_input: nested_input == _undefined
              ? _instance.nested_input
              : (nested_input as Input$I1?),
          $_min: $_min == _undefined ? _instance.$_min : ($_min as int?)));
}
