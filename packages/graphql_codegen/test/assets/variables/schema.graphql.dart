import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputI1 {
  InputI1({required this.s, this.nested});

  @override
  factory InputI1.fromJson(Map<String, dynamic> json) =>
      _$InputI1FromJson(json);

  final String s;

  final InputI1? nested;

  Map<String, dynamic> toJson() => _$InputI1ToJson(this);
  int get hashCode {
    final l$s = s;
    final l$nested = nested;
    return Object.hashAll([l$s, l$nested]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputI1) || runtimeType != other.runtimeType) return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    final l$nested = nested;
    final lOther$nested = other.nested;
    if (l$nested != lOther$nested) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {};
