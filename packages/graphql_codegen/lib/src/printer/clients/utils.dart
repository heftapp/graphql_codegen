import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';

Reference generic(String symbol, Reference type, {bool isNullable = false}) =>
    TypeReference((b) => b
      ..symbol = symbol
      ..isNullable = isNullable
      ..types = ListBuilder([type]));

final dynamicMap = TypeReference((b) => b
  ..symbol = 'Map'
  ..types = ListBuilder([refer('String'), refer('dynamic')]));
