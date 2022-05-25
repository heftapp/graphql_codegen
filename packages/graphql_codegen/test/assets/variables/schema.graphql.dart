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

  Input$I1 copyWith({String? s, Input$I1? Function()? nested}) => Input$I1(
      s: s == null ? this.s : s,
      nested: nested == null ? this.nested : nested());
}

const possibleTypesMap = {};
