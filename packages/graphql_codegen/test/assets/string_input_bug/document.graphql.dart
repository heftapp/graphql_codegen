import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.$String, this.$OtherReservedKeyword});

  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  @JsonKey(name: 'String')
  final String? $String;

  @JsonKey(name: 'OtherReservedKeyword')
  final int? $OtherReservedKeyword;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
  @override
  int get hashCode {
    final l$$String = $String;
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    return Object.hashAll([l$$String, l$$OtherReservedKeyword]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I) || runtimeType != other.runtimeType) return false;
    final l$$String = $String;
    final lOther$$String = other.$String;
    if (l$$String != lOther$$String) return false;
    final l$$OtherReservedKeyword = $OtherReservedKeyword;
    final lOther$$OtherReservedKeyword = other.$OtherReservedKeyword;
    if (l$$OtherReservedKeyword != lOther$$OtherReservedKeyword) return false;
    return true;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(this, (i) => i);
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(Input$I instance, TRes Function(Input$I) then) =
      _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? $String, int? $OtherReservedKeyword});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(this._instance, this._then);

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = {};

  TRes call(
          {Object? $String = _undefined,
          Object? $OtherReservedKeyword = _undefined}) =>
      _then(Input$I(
          $String:
              $String == _undefined ? _instance.$String : ($String as String?),
          $OtherReservedKeyword: $OtherReservedKeyword == _undefined
              ? _instance.$OtherReservedKeyword
              : ($OtherReservedKeyword as int?)));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? $String, int? $OtherReservedKeyword}) => _res;
}
