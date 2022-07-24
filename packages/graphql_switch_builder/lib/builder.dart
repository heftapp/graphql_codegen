import 'dart:async';
import 'dart:convert';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:build/build.dart';
import 'package:gql/ast.dart';
import 'package:graphql_switch/src/builder_options.dart';
import 'package:gql/language.dart' as gql;

class SwitchBuilder extends Builder {
  final SwitchBuilderOptions options;

  SwitchBuilder(BuilderOptions options)
      : this.options = SwitchBuilderOptions.fromJson(
          jsonDecode(
            jsonEncode(options.config),
          ) as Map<String, dynamic>,
        );

  static SwitchBuilder builder(BuilderOptions options) =>
      SwitchBuilder(options);

  @override
  Future<void> build(BuildStep buildStep) async {
    if (buildStep.inputId.extension == '.graphql') {
      return;
    }
    final node = parseString(
      content: await buildStep.readAsString(buildStep.inputId),
    );
    final documents = <ExecutableDefinitionNode>[];
    node.unit.accept(_GraphQLPickerVisitor(documents));
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': ['.switch.dart'],
        '.graphql': ['.switch.datt']
      };
}

class _GraphQLPickerVisitor extends RecursiveAstVisitor<dynamic> {
  final List<ExecutableDefinitionNode> documentStrings;

  _GraphQLPickerVisitor(this.documentStrings);

  @override
  visitMethodInvocation(node) {
    node.visitChildren(this);
    final function = node.function;
    final isGraphQLCall =
        function is SimpleIdentifier && function.name == 'graphql';
    if (!isGraphQLCall) {
      return;
    }
    final arguments = node.argumentList.arguments;
    if (arguments.length != 1) {
      return;
    }
    final documentExpression = arguments.first;
    if (documentExpression is! StringLiteral) {
      return;
    }
    final graphQL = documentExpression.stringValue;
    if (graphQL == null) {
      return;
    }
    final definitions = gql.parseString(graphQL).definitions;
    if (definitions.length != 1) {
      return;
    }
    final singleDefinition = definitions.first;
    if (singleDefinition is! ExecutableDefinitionNode) {
      return;
    }
    this.documentStrings.add(singleDefinition);
  }
}
