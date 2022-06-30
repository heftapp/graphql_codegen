import 'package:json_annotation/json_annotation.dart';

enum Enum$E {
  @JsonValue('ONE')
  ONE,
  @JsonValue('TWO')
  TWO,
  @JsonValue('THREE')
  THREE,
  $unknown
}
const possibleTypesMap = {};
