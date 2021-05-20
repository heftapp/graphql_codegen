import 'package:gql/ast.dart';
import 'package:recase/recase.dart';

import '../utils.dart';

String _printName(Name name) => name.segments.map(_printNameSegment).join(r'$');

String _printNameSegment(NameSegment segment) {
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
        prefix = 'Mutation';
        break;
      case OperationType.query:
        prefix = 'Query';
        break;
      case OperationType.subscription:
        prefix = 'Subscription';
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
    ReCase("Document" + _printName(name)).constantCase;

String printFragmentDocumentName(Name name) =>
    ReCase("Fragment" + _printName(name)).constantCase;

String printClassName(Name name) => _printName(name);

String printVariableClassName(Name name) => "Variables${_printName(name)}";

String printGraphQLClientOptionsName(Name name) =>
    "GraphQLClientOptions${_printName(name)}";

String printGraphQLClientOnMutationCompleteName(Name name) =>
    "GraphQLClientOnMutationCompleted${_printName(name)}";

String printGraphQLClientOnMutationUpdateName(Name name) =>
    "GraphQLClientOnMutationUpdate${_printName(name)}";

String printGraphQLClientResultName(Name name) =>
    "GraphQLClientResult${_printName(name)}";

String printGraphQLClientExtensionName(Name name) =>
    "GraphQLClientExtension${_printName(name)}";

String printGraphQLClientExtensionMethodName(Name name) =>
    ReCase(_printName(name)).camelCase;

String printFromJsonFactoryName(String name) => "_\$${name}FromJson";

String printToJsonFactoryName(String name) => "_\$${name}ToJson";
