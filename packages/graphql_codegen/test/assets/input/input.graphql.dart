import 'package:json_annotation/json_annotation.dart';
part 'input.graphql.g.dart';

@JsonSerializable()
class InputI1 extends JsonSerializable {
  InputI1({required this.s, this.nestedInput});

  @override
  factory InputI1.fromJson(Map<String, dynamic> json) =>
      _$InputI1FromJson(json);

  final String s;

  @JsonKey(name: 'nested_input')
  final InputI1? nestedInput;

  @override
  Map<String, dynamic> toJson() => _$InputI1ToJson(this);
}
