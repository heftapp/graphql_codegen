import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/printer.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/visitor/context_visitor.dart';

import 'src/context/schema.dart';

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

  TKey get mainKey {
    final defaultOperationDefinitionMap = {
      OperationType.query: 'Query',
      OperationType.mutation: 'Mutation',
      OperationType.subscription: 'Subscription',
    };
    final operationDefinitionMap = Map.fromEntries(
      entries.entries.expand(
        (element) =>
            element.value.definitions.expand<MapEntry<OperationType, String>>(
          (element) {
            if (element is SchemaDefinitionNode) {
              return element.operationTypes.map(
                (e) => MapEntry(
                  e.operation,
                  e.type.name.value,
                ),
              );
            }
            if (element is SchemaExtensionNode) {
              return element.operationTypes.map(
                (e) => MapEntry(
                  e.operation,
                  e.type.name.value,
                ),
              );
            }
            return [];
          },
        ),
      ),
    );
    return [
          OperationType.query,
          OperationType.mutation,
          OperationType.subscription
        ].expand<TKey?>((e) {
          final name =
              operationDefinitionMap[e] ?? defaultOperationDefinitionMap[e];
          if (name == null) {
            return [];
          }
          return entries.entries
              .where(
                (element) => element.value.definitions
                    .whereType<ObjectTypeDefinitionNode>()
                    .where((element) => element.name.value == name)
                    .isNotEmpty,
              )
              .map<TKey>((documentEntry) => documentEntry.key);
        }).firstWhere(
          (element) => true,
          orElse: () => null,
        ) ??
        entries.keys.last;
  }
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
    schemaConfig.mainKey,
    schemaConfig.entries,
    schemaConfig.lookupPath,
  );
  return _generateDocument<TKey>(
    schema,
    schema.lookupDocument(key)!,
    key,
    config,
  );
}
