import 'dart:async';
import 'dart:convert';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/graphql_codegen.dart';
import 'package:graphql_codegen/src/context/schema.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/visitor/context_visitor.dart';
import 'package:graphql_switch/src/builder/builder_options.dart';
import 'package:gql/language.dart' as gql;
import 'package:graphql_switch/src/builder/print.dart' as print;
import 'package:graphql_switch/src/builder/transform.dart';
import 'package:path/path.dart' as path;

final p = path.Context(style: path.Style.posix);

class SwitchBuilder extends Builder {
  static final _allFilesInLib = new Glob(r'lib/{**.graphql,**.dart}');
  final SwitchBuilderOptions options;

  SwitchBuilder(BuilderOptions options)
      : this.options = SwitchBuilderOptions.fromJson(
          jsonDecode(
            jsonEncode(options.config),
          ) as Map<String, dynamic>,
        );

  static SwitchBuilder builder(BuilderOptions options) =>
      SwitchBuilder(options);

  Stream<DefinitionNode> _extractGraphQL(
    AssetId id,
    BuildStep buildStep,
  ) {
    if (id.extension == '.graphql') {
      return Stream.fromFuture(buildStep.readAsString(id))
          .map(gql.parseString)
          .expand((element) => element.definitions)
          .where((event) => event is TypeSystemDefinitionNode);
    }
    return Stream.fromFuture(buildStep.readAsString(id))
        .map((event) => parseString(content: event))
        .expand(
      (node) {
        final definitions = <ExecutableDefinitionNode>[];
        node.unit.accept(_GraphQLPickerVisitor(definitions));
        return definitions;
      },
    );
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    // final allFiles = await buildStep.findAssets(_allFilesInLib).toList();
    final definitions = await buildStep
        .findAssets(_allFilesInLib)
        .asyncExpand((input) => _extractGraphQL(input, buildStep))
        .toList();
    var schemaDocument = DocumentNode(
      definitions: definitions,
    );
    final schema1 = Schema(
      buildStep.inputId,
      BuiltMap.of({buildStep.inputId: schemaDocument}),
      (id) => 'lib/switch.dart',
    );
    schemaDocument = preProcessNode(schema1, schemaDocument);
    final schema = Schema(
      buildStep.inputId,
      BuiltMap.of({buildStep.inputId: schemaDocument}),
      (id) => 'lib/switch.dart',
    );
    final context = ContextRoot<AssetId>(
      schema: schema,
      key: buildStep.inputId,
      config: GraphQLCodegenConfig(
        disableContextReplacement: true,
      ),
    );
    schemaDocument.accept(ContextVisitor(context: context));
    final library = print.printRootContext(print.PrintContext(context));
    final formatter = DartFormatter();
    final emitter = DartEmitter(useNullSafetySyntax: true);
    final generatedCode = library.accept(emitter);

    final output = AssetId(
      buildStep.inputId.package,
      p.join('lib', 'switch.dart'),
    );
    buildStep.writeAsString(
      output,
      formatter.format(
          "// Generated file, do not modify\n// ignore_for_file: type=lint\n\n${generatedCode}"),
    );
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': ['switch.dart'],
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
    if (singleDefinition is OperationDefinitionNode &&
        singleDefinition.name == null) {
      return;
    }
    this.documentStrings.add(singleDefinition);
  }
}
