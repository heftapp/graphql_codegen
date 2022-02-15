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

String printParserFnName(Name name) =>
    "_" + ReCase("parserFn${_printName(name)}").camelCase;

String printVariableClassName(Name name) => "Variables${_printName(name)}";

String printGraphQLClientOptionsName(Name name) => "Options${_printName(name)}";

String printGraphQLClientWatchOptionsName(Name name) =>
    "WatchOptions${_printName(name)}";

String printGraphQLClientFetchMoreOptionsName(Name name) =>
    "FetchMoreOptions${_printName(name)}";

String printGraphQLFlutterClientOptionsName(Name name) =>
    "WidgetOptions${_printName(name)}";

String printGraphQLFlutterClientRunMutationName(Name name) =>
    "RunMutation${_printName(name)}";

String printGraphQLFlutterClientBuilderName(Name name) =>
    "Builder${_printName(name)}";

String printGraphQLFlutterClientOperationName(Name name) =>
    "${_printName(name)}Widget";

String printGraphQLFlutterClientMutationHookName(Name name) =>
    "use${_printName(name)}";

String printGraphQLFlutterClientWatchMutationHookName(Name name) =>
    "useWatch${_printName(name)}";

String printGraphQLFlutterClientQueryHookName(Name name) =>
    "use${_printName(name)}";

String printGraphQLFlutterClientWatchQueryHookName(Name name) =>
    "useWatch${_printName(name)}";

String printGraphQLFlutterClientSubscriptionHookName(Name name) =>
    "use${_printName(name)}";

String printGraphQLClientOnMutationCompleteName(Name name) =>
    "OnMutationCompleted${_printName(name)}";

String printGraphQLClientExtensionName(Name name) =>
    "ClientExtension${_printName(name)}";

String printGraphQLClientResultExtensionName(Name name) =>
    "ResultExtension${_printName(name)}";

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

String printPropertyName(NameNode name) =>
    printKeywordSafe(ReCase(name.value).camelCase);

Expression printNullCheck(Reference variable, Expression whenNotNull) =>
    variable.equalTo(literalNull).conditional(literalNull, whenNotNull);
