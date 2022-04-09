import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:gql/language.dart';
import 'package:graphql_codegen/graphql_codegen.dart';
import 'package:graphql_codegen/src/transform/transform.dart';
import 'package:graphql_codegen_config/config.dart';

/// The builder class.
class GraphQLBuilder extends Builder {
  final BuilderOptions options;
  final GraphQLCodegenConfig config;

  /// A static method to initialize the builder.
  static GraphQLBuilder builder(BuilderOptions options) =>
      GraphQLBuilder(options);

  GraphQLBuilder(this.options)
      : config = GraphQLCodegenConfig.fromJson(
          jsonDecode(
            jsonEncode(
              options.config,
            ),
          ) as Map<String, dynamic>,
        );

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final scope = (config.scopes).whereType<String?>().firstWhere(
          (element) =>
              element != null && Glob(element).matches(buildStep.inputId.path),
          orElse: () => null,
        );
    if (scope == null) {
      return;
    }
    final assets = buildStep.findAssets(Glob(scope));
    final assetsPathGlob = Glob(config.assetsPath);
    final entries = await assets
        .where((asset) => assetsPathGlob.matches(asset.path))
        .asyncMap(
          (event) async => MapEntry(
            event,
            parseString(await buildStep.readAsString(event)),
          ),
        )
        .map((event) => MapEntry(event.key, transform(config, event.value)))
        .toList();
    final result = await generate<AssetId>(
      SchemaConfig<AssetId>(
        entries: BuiltMap.of(Map.fromEntries(entries)),
        lookupPath: (id) => "${id.path}.dart",
      ),
      config,
    );
    final targetAsset = buildStep.inputId.addExtension('.dart');
    _writeProgram(
      config,
      buildStep,
      targetAsset,
      result.entries[buildStep.inputId]!,
    );
  }

  void _writeProgram(
    GraphQLCodegenConfig config,
    BuildStep buildStep,
    AssetId targetAssetId,
    Library library,
  ) {
    final formatter = DartFormatter();
    final emitter = DartEmitter(useNullSafetySyntax: true);
    final contents = formatter.format(
      "${config.generatedFileHeader}${library.accept(emitter)}",
    );
    buildStep.writeAsString(targetAssetId, contents);
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        r'.graphql': const ['.graphql.dart'],
      };
}
