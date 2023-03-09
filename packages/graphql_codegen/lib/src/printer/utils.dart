import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/printer/keywords.dart';

import '../context.dart';

class NamePrinter {
  final GraphQLCodegenConfig config;
  final Set<String> _keywords;

  String get separator => config.namingSeparator;

  NamePrinter(this.config)
      : _keywords = {...staticKeywords, ...config.extraKeywords};

  String printName(
    Name name, {
    bool isAction = false,
    String? separator,
    String? prefix,
  }) =>
      name.segments
          .map((s) => _printNameSegment(
                s,
                isAction: isAction,
                separator: separator ?? this.separator,
                prefix: prefix,
              ))
          .join(separator ?? this.separator);

  String _printPrefix(NameSegment segment, {bool isAction = false}) {
    if (segment is EnumNameSegment) {
      return 'Enum';
    }
    if (segment is InputNameSegment) {
      return 'Input';
    }
    if (segment is TypeNameSegment) {
      return '';
    }
    if (segment is OperationNameSegment) {
      switch (segment.node.type) {
        case OperationType.mutation:
          return isAction ? 'mutate' : 'Mutation';
        case OperationType.query:
          return isAction ? 'query' : 'Query';
        case OperationType.subscription:
          return isAction ? 'subscribe' : 'Subscription';
        default:
          throw new UnsupportedError("Unsupported opreation type");
      }
    }
    if (segment is FragmentNameSegment) {
      return 'Fragment';
    }
    throw new UnsupportedError("Unsupported segment type");
  }

  String _printNameSegment(
    NameSegment segment, {
    bool isAction = false,
    String? separator,
    String? prefix,
  }) {
    if (segment is FieldNameSegment) {
      return segment.name.value;
    }
    return '${prefix ?? _printPrefix(segment, isAction: isAction)}${separator ?? this.separator}${segment.name.value}';
  }

  String printDocumentDefinitionNodeName(Name name) =>
      "documentNode" + printName(name, separator: '');

  String printFragmentDefinitionNodeName(Name name) => printName(
        name,
        separator: '',
        prefix: 'fragmentDefinition',
      );

  String printPossibleTypesMapName() => 'possibleTypesMap';

  String printClassName(Name name) => printName(name);

  String printEnumImportAlias(Name name) => printName(
        name,
        prefix: "EnumImport",
      );

  String printClassExtensionName(Name name) =>
      "UtilityExtension${separator}" + printName(name);

  String printCopyWithClassName(String name) => 'CopyWith${separator}' + name;

  String printCopyWithImplClassName(String name) =>
      '_CopyWithImpl${separator}' + name;

  String printCopyWithStubImplClassName(String name) =>
      '_CopyWithStubImpl${separator}' + name;

  String printParserFnName(Name name) =>
      "_parserFn${separator}${printName(name)}";

  String printVariableClassName(Name name) =>
      "Variables${separator}${printName(name)}";

  String printGraphQLClientOptionsName(Name name) =>
      "Options${separator}${printName(name)}";

  String printGraphQLClientWatchOptionsName(Name name) =>
      "WatchOptions${separator}${printName(name)}";

  String printGraphQLClientFetchMoreOptionsName(Name name) =>
      "FetchMoreOptions${separator}${printName(name)}";

  String printGraphQLFlutterClientOptionsName(Name name) =>
      "WidgetOptions${separator}${printName(name)}";

  String printGraphQLFlutterClientRunMutationName(Name name) =>
      "RunMutation${separator}${printName(name)}";

  String printGraphQLFlutterClientBuilderName(Name name) =>
      "Builder${separator}${printName(name)}";

  String printLocalPropertyName(NameNode name, [String prefix = "l"]) =>
      "${prefix}\$" + printPropertyName(name);

  String printGraphQLFlutterClientOperationName(Name name) =>
      "${printName(name)}${separator}Widget";

  String printGraphQLFlutterClientMutationHookResultName(Name name) =>
      "${printName(name)}${separator}HookResult";

  String printGraphQLFlutterClientMutationHookName(Name name) =>
      "use${printName(name)}";

  String printGraphQLFlutterClientWatchHookName(Name name) =>
      "useWatch${printName(name)}";

  String printGraphQLFlutterClientQueryHookName(Name name) =>
      "use${printName(name)}";

  String printGraphQLFlutterClientWatchQueryHookName(Name name) =>
      "useWatch${printName(name)}";

  String printGraphQLFlutterClientSubscriptionHookName(Name name) =>
      "use${printName(name)}";

  String printGraphQLClientOnMutationCompleteName(Name name) =>
      "OnMutationCompleted${separator}${printName(name)}";

  String printGraphQLClientOnQueryCompleteName(Name name) =>
      "OnQueryComplete${separator}${printName(name)}";

  String printGraphQLClientExtensionName(Name name) =>
      "ClientExtension${separator}${printName(name)}";

  String printGraphQLClientResultExtensionName(Name name) =>
      "ResultExtension${separator}${printName(name)}";

  String printGraphQLClientExtensionMethodName(Name name) =>
      printName(name, isAction: true);

  String printGraphQLClientExtensionWatchMethodName(Name name) =>
      "watch${printName(name, isAction: false)}";

  String printGraphQLClientExtensionWriteQueryMethodName(Name name) =>
      "write${printName(name, isAction: false)}";

  String printGraphQLClientExtensionReadQueryMethodName(Name name) =>
      "read${printName(name, isAction: false)}";

  String printGraphQLClientResultExtensionGetterName(Name name) =>
      "parsedData" + printName(name);

  String printFromJsonConverterFunctionName(Name name) =>
      "fromJson${separator}${printClassName(name)}";

  String printToJsonConverterFunctionName(Name name) =>
      "toJson${separator}${printClassName(name)}";

  String printKeywordSafe(String name) =>
      _keywords.contains(name) ? "\$${name}" : name;

  String printEnumValueName(NameNode name) => printKeywordSafe(name.value);

  String printPropertyName(NameNode name) =>
      _printPropertyNameString(name.value);

  String _printPropertyNameString(String value) {
    if (value.startsWith('_')) {
      value = "\$${value}";
    }
    return printKeywordSafe(value);
  }
}

Expression printNullCheck(Expression variable, Expression whenNotNull) =>
    variable.equalTo(literalNull).conditional(literalNull, whenNotNull);

Method printIdentityFunction() => Method(
      (b) => b
        ..lambda = true
        ..requiredParameters = ListBuilder([Parameter((b) => b..name = 'i')])
        ..body = refer('i').code,
    );
