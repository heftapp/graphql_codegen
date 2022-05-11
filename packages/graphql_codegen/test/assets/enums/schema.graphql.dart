import 'package:json_annotation/json_annotation.dart';

enum Enum$Enum {
  @JsonValue('FOO')
  FOO,
  @JsonValue('BAR')
  BAR,
  @JsonValue('BAZ_BOB')
  BAZ_BOB,
  @JsonValue('VOID')
  VOID,
  $unknown
}
const possibleTypesMap = {};
