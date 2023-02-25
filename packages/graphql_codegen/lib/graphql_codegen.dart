import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/printer.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/visitor/context_visitor.dart';

export 'src/errors.dart';
export 'src/config/config.dart';

Library _generateDocument<TKey extends Object>(
  Schema<TKey> schema,
  DocumentNode entry,
  TKey key,
  GraphQLCodegenConfig config,
) {
  final context = ContextRoot<TKey>(
    schema: schema,
    key: key,
    config: config,
  );
  entry.accept(ContextVisitor(context: context));
  return printRootContext(PrintContext(context));
}

/// A schema config containing entries and lookup.
class SchemaConfig<TKey> {
  /// Entries mapped from a key to the DocumentNode
  final BuiltMap<TKey, DocumentNode> entries;

  /// A method to lookup a path from the key.
  final String Function(TKey) lookupPath;

  /// Self explainatory
  SchemaConfig({
    required this.entries,
    required this.lookupPath,
  });
}

/// This is where the magic happens! It generates
/// programs from GraphQL documents.
Library generate<TKey extends Object>(
  TKey key,

  /// Schema containing a mapping from TKey to graphql documents
  SchemaConfig<TKey> schemaConfig,

  /// Configrations containing e.g. clients and scalars.
  GraphQLCodegenConfig config,
) {
  final schema = Schema(
    schemaConfig.entries,
    schemaConfig.lookupPath,
  );
  return _generateDocument<TKey>(
    schema,
    schema.entries[key]!,
    key,
    config,
  );
}
