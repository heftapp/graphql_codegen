import 'package:json_annotation/json_annotation.dart';
part 'input.graphql.g.dart';

@JsonSerializable()
class InputI1 extends JsonSerializable {
  InputI1({required this.s, this.nested_input, this.$_min});

  @override
  factory InputI1.fromJson(Map<String, dynamic> json) =>
      _$InputI1FromJson(json);

  final String s;

  final InputI1? nested_input;

  @JsonKey(name: '_min')
  final int? $_min;

  @override
  Map<String, dynamic> toJson() => _$InputI1ToJson(this);
  int get hashCode {
    final l$s = s;
    final l$nested_input = nested_input;
    final l$$_min = $_min;
    return Object.hashAll([l$s, l$nested_input, l$$_min]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputI1) || runtimeType != other.runtimeType) return false;
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
}
