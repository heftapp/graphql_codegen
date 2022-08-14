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
import 'package:path/path.dart' as path;

final p = path.Context(style: path.Style.posix);

/// The builder class.
class GraphQLBuilder extends Builder {
  final BuilderOptions options;
  final GraphQLCodegenConfig config;

  static final wildcardPattern = new RegExp(r"[\[\]\?\*]+");

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

  String get _assetsPrefix {
    final glob = config.assetsPath;
    String path = '';
    for (final segment in p.split(glob)) {
      if (wildcardPattern.hasMatch(segment)) {
        break;
      }
      path = p.join(path, segment);
    }
    return path;
  }

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
        lookupPath: (id) => _resolveOutputDir(
          p.dirname(id.path),
          p.basename(id.path) + ".dart",
        ),
      ),
      config,
    );
    final targetAsset = buildStep.inputId.addExtension('.dart');
    _writeProgram(
      config,
      buildStep,
      AssetId(
        targetAsset.package,
        _resolveOutputDir(
          p.dirname(targetAsset.path),
          p.basename(targetAsset.path),
        ),
      ),
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
    final generatedCode = library.accept(emitter);
    final contents = formatter.format(
      "${config.generatedFileHeader}${generatedCode}",
    );
    buildStep.writeAsString(targetAssetId, contents);
  }

  String _resolveOutputDir(String dir, String file) {
    if (!p.isAbsolute(config.outputDirectory)) {
      return p.join(dir, config.outputDirectory, file);
    }
    return p.join(
      p.relative(config.outputDirectory, from: '/'),
      p.relative(dir, from: _assetsPrefix),
      file,
    );
  }

  @override
  Map<String, List<String>> get buildExtensions {
    if (p.isRelative(config.outputDirectory)) {
      return {
        '{{dir}}/{{file}}.graphql': [
          p.join('{{dir}}', config.outputDirectory, '{{file}}.graphql.dart')
        ]
      };
    }
    return {
      path.join(_assetsPrefix, '{{dir}}', '{{file}}.graphql'): [
        p.join(p.relative(config.outputDirectory, from: '/'), '{{dir}}',
            '{{file}}.graphql.dart')
      ]
    };
  }
}
