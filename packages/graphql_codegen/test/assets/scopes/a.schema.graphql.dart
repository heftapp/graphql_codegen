import 'package:json_annotation/json_annotation.dart';

enum EnumStatus {
  @JsonValue('COOL')
  cool,
  @JsonValue('BEANS')
  beans,
  $unknown
}
const POSSIBLE_TYPES_MAP = const {};
