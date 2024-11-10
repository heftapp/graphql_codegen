import 'package:code_builder/code_builder.dart';

const kUndefinedFieldName = '_undefined';

Field printUndefinedField() {
  return Field(
    (b) => b
      ..name = kUndefinedFieldName
      ..static = true
      ..modifier = FieldModifier.constant
      ..assignment = literalMap(
        {},
        refer('dynamic'),
        refer('dynamic'),
      ).code,
  );
}
