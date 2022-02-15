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
}
