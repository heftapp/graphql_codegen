import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.$String, this.$OtherReservedKeyword});

  @override
  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  @JsonKey(name: 'String')
  final String? $String;

  @JsonKey(name: 'OtherReservedKeyword')
  final int? $OtherReservedKeyword;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
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

  Input$I copyWith(
          {String? Function()? $String,
          int? Function()? $OtherReservedKeyword}) =>
      Input$I(
          $String: $String == null ? this.$String : $String(),
          $OtherReservedKeyword: $OtherReservedKeyword == null
              ? this.$OtherReservedKeyword
              : $OtherReservedKeyword());
}
