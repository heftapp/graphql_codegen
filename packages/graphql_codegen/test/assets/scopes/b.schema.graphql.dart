import 'package:json_annotation/json_annotation.dart';

enum EnumStatus {
  @JsonValue('COOL')
  cool,
  @JsonValue('SMEANS')
  smeans,
  $unknown
}
const POSSIBLE_TYPES_MAP = const {};
