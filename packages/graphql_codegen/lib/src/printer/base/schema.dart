import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/context.dart';

Spec printPossibleTypesMap(PrintContext<ContextRoot> context) {
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${context.namePrinter.printPossibleTypesMapName()} = ",
      ),
      literal(context.context.possibleTypesMap).code,
      Code(";")
    ]),
  );
}
