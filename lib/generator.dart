import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/printer/printer.dart';
import 'package:graphql_codegen/utils.dart';
import 'package:graphql_codegen/visitor/generator.dart';

Library _generateDocument<TKey>(
  Schema<TKey> schema,
  DocumentNode entry,
  TKey key,
) {
  final context = ContextRoot<TKey>(schema: schema, key: key);
  entry.accept(GeneratorVisitor(context: context));
  return printRootContext(context);
}

class GenerateResult<TKey> {
  final BuiltMap<TKey, Library> entries;
  GenerateResult(this.entries);
}

FutureOr<GenerateResult<TKey>> generate<TKey>(Schema<TKey> schema) async {
  final entries = schema.entries.map(
    (key, value) => MapEntry<TKey, Library>(
      key,
      _generateDocument<TKey>(
        schema,
        value,
        key,
      ),
    ),
  );
  return GenerateResult(entries);
}
