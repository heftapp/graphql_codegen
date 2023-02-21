import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/printer/base/fragment.dart';
import 'package:graphql_codegen/src/printer/base/operation.dart';
import 'package:graphql_codegen/src/printer/base/enum.dart';
import 'package:graphql_codegen/src/printer/base/input.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/context.dart';

import 'base/schema.dart';

bool _shouldPrintContext(Context c) {
  return (c.replacementContext == null) ||
      (c.extendsContext != null &&
          c.extendsContext?.replacementContext == null);
}

Library printRootContext<TKey extends Object>(
    PrintContext<ContextRoot<TKey>> c) {
  final context = c.context;
  final body = ListBuilder<Spec>(<Spec>[
    ...context.contextInputs.expand(
      (context) => printInputClasses(c.withContext(context)),
    ),
    ...context.contextEnums
        .expand((context) => printEnum(c.withContext(context))),
    ...context.contextFragments
        .where(_shouldPrintContext)
        .expand((context) => printFragmentSpecs(c.withContext(context))),
    ...context.contextOperations
        .where(_shouldPrintContext)
        .expand((context) => printOperationSpecs(c.withContext(context))),
    if (context.isMainContext) printPossibleTypesMap(c),
    ...c.converters,
  ]);

  final library = Library(
    (b) => b
      ..directives = ListBuilder(c.directives)
      ..body = body,
  );
  c.printWarnings();
  return library;
}
