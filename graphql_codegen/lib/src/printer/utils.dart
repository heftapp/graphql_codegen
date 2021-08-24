import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/printer/keywords.dart';
import 'package:recase/recase.dart';

import '../context.dart';

String _printName(Name name, {bool isAction = false}) => name.segments
    .map((s) => _printNameSegment(s, isAction: isAction))
    .join(r'$');

String _printNameSegment(NameSegment segment, {bool isAction = false}) {
  if (segment is EnumNameSegment) {
    return ReCase('Enum${segment.name.value}').pascalCase;
  }
  if (segment is InputNameSegment) {
    return ReCase('Input${segment.name.value}').pascalCase;
  }
  if (segment is FieldNameSegment) {
    return ReCase(segment.name.value).camelCase;
  }
  if (segment is TypeNameSegment) {
    return ReCase(segment.name.value).pascalCase;
  }
  if (segment is OperationNameSegment) {
    String prefix;
    switch (segment.node.type) {
      case OperationType.mutation:
        prefix = isAction ? 'mutate' : 'Mutation';
        break;
      case OperationType.query:
        prefix = isAction ? 'query' : 'Query';
        break;
      case OperationType.subscription:
        prefix = isAction ? 'subscribe' : 'Subscription';
        break;
    }
    return ReCase('$prefix${segment.name.value}').pascalCase;
  }
  if (segment is FragmentNameSegment) {
    return ReCase('Fragment${segment.name.value}').pascalCase;
  }
  throw new UnsupportedError("Unsupported segment type");
}

String printOperationDocumentName(Name name) =>
    ReCase(_printName(name)).constantCase;

String printFragmentDocumentName(Name name) =>
    ReCase(_printName(name)).constantCase;

String printPossibleTypesMapName() => ReCase('possibleTypesMap').constantCase;

String printClassName(Name name) => _printName(name);

String printVariableClassName(Name name) => "Variables${_printName(name)}";

String printGraphQLClientOptionsName(Name name) =>
    "GQLOptions${_printName(name)}";

String printGraphQLClientWatchOptionsName(Name name) =>
    "GQLWatchOptions${_printName(name)}";

String printGraphQLClientFetchMoreOptionsName(Name name) =>
    "GQLFetchMoreOptions${_printName(name)}";

String printGraphQLFlutterClientOptionsName(Name name) =>
    "GQLFOptions${_printName(name)}";

String printGraphQLFlutterClientRunMutationName(Name name) =>
    "GQLFRunMutation${_printName(name)}";

String printGraphQLFlutterClientBuilderName(Name name) =>
    "GQLFBuilder${_printName(name)}";

String printGraphQLFlutterClientOperationName(Name name) =>
    "GQLF${_printName(name)}";

String printGraphQLClientOnMutationCompleteName(Name name) =>
    "GQLOnMutationCompleted${_printName(name)}";

String printGraphQLClientExtensionName(Name name) =>
    "GQLExtension${_printName(name)}";

String printGraphQLClientResultExtensionName(Name name) =>
    "GQLResultExtension${_printName(name)}";

String printGraphQLClientExtensionMethodName(Name name) =>
    ReCase(_printName(name, isAction: true)).camelCase;

String printGraphQLClientExtensionWatchMethodName(Name name) =>
    ReCase("Watch${_printName(name, isAction: false)}").camelCase;

String printGraphQLClientResultExtensionGetterName(Name name) =>
    ReCase("parsedData" + _printName(name)).camelCase;

String printFromJsonFactoryName(String name) => "_\$${name}FromJson";

String printToJsonFactoryName(String name) => "_\$${name}ToJson";

String printKeywordSafe(String name) =>
    KEYWORDS.contains(name) ? "\$${name}" : name;

String printEnumValueName(NameNode name) =>
    printKeywordSafe(ReCase(name.value).camelCase);

String printPropertyName(NameNode name) => name.value == '__typename'
    ? r'$$typename'
    : printKeywordSafe(ReCase(name.value).camelCase);

Expression printNullCheck(Reference variable, Expression whenNotNull) =>
    variable.equalTo(literalNull).conditional(literalNull, whenNotNull);
