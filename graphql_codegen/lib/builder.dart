import 'dart:async';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:gql/language.dart';
import 'package:graphql_codegen/generator.dart';
import 'package:graphql_codegen/context.dart';

GraphQLBuilder graphQLQueryBuilder(BuilderOptions options) =>
    GraphQLBuilder(options);

class GraphQLBuilder extends Builder {
  final BuilderOptions options;

  GraphQLBuilder(this.options);

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final result = await buildStep
        .fetchResource<GenerateResult<AssetId>>(Resource(() async {
      final assets = buildStep.findAssets(Glob("lib/**.graphql"));
      final entries = await assets
          .asyncMap(
            (event) async => MapEntry(
              event,
              parseString(
                await buildStep.readAsString(event),
              ),
            ),
          )
          .toList();
      throw new UnsupportedError('');
    }));
    final targetAsset = buildStep.inputId.addExtension('.dart');
    _writeProgram(
      buildStep,
      targetAsset,
      result.entries[buildStep.inputId]!,
    );
  }

  void _writeProgram(
    BuildStep buildStep,
    AssetId targetAssetId,
    Library library,
  ) {
    final formatter = DartFormatter();
    final emitter = DartEmitter(useNullSafetySyntax: true);
    final contents = formatter.format(
      "${library.accept(emitter)}",
    );
    buildStep.writeAsString(targetAssetId, contents);
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        r'.graphql': ['.graphql.dart'],
      };
}
