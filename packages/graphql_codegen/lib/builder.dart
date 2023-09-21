import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql_codegen/graphql_codegen.dart';
import 'package:graphql_codegen/src/transform/transform.dart' as transform;
import 'package:path/path.dart' as path;

final p = path.Context(style: path.Style.posix);

const kGraphQLFileExtensions = ['graphql', 'graphqls', 'gql'];

class _GraphQLParserResource {
  Map<AssetId, DocumentNode> _fileCache = {};
  Future<DocumentNode> readFile(BuildStep step, AssetId id) async {
    final cachedDocument = _fileCache[id];
    if (cachedDocument != null && await step.canRead(id)) {
      return cachedDocument;
    }
    final result = parseString(await step.readAsString(id));
    _fileCache[id] = result;
    return result;
  }

  void dispose() {
    _fileCache = {};
  }
}

final _graphqlParserResource = Resource<_GraphQLParserResource>(
  () => _GraphQLParserResource(),
  dispose: (instance) => instance.dispose(),
);

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
    final parseResource = await buildStep.fetchResource(_graphqlParserResource);
    final entries = await assets
        .where((asset) => assetsPathGlob.matches(asset.path))
        .asyncMap(
          (event) async => MapEntry(
            event,
            await parseResource.readFile(buildStep, event),
          ),
        )
        .map(
          (event) => MapEntry(
            event.key,
            transform.transform(
              config,
              event.value,
            ),
          ),
        )
        .toList();
    final result = generate<AssetId>(
      buildStep.inputId,
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
      result,
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
      return Map.fromEntries(
        kGraphQLFileExtensions.map(
          (extension) => MapEntry(
            '{{dir}}/{{file}}.${extension}',
            [
              p.join(
                '{{dir}}',
                config.outputDirectory,
                '{{file}}.${extension}.dart',
              ),
            ],
          ),
        ),
      );
    }
    return Map.fromEntries(
      kGraphQLFileExtensions.map(
        (e) => MapEntry(
          p.join(_assetsPrefix, '{{dir}}', '{{file}}.${e}'),
          [
            p.join(
              p.relative(config.outputDirectory, from: '/'),
              '{{dir}}',
              '{{file}}.${e}.dart',
            )
          ],
        ),
      ),
    );
  }
}
