import 'package:json_annotation/json_annotation.dart';
part 'builder_options.g.dart';

@JsonSerializable()
class SwitchBuilderOptions {
  SwitchBuilderOptions();
  factory SwitchBuilderOptions.fromJson(Map<String, dynamic> json) =>
      _$SwitchBuilderOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$SwitchBuilderOptionsToJson(this);
}
