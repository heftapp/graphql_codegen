import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:graphql_switch/builder.dart';
import 'package:path/path.dart';
import 'package:path/path.dart' as path;
import 'package:test/scaffolding.dart';

final p = path.Context(style: path.Style.posix);

final assetsDir = Directory("test/assets");

void main() {
  for (final testSet in assetsDir
      .listSync()
      .whereType<Directory>()
      .where((element) => !basename(element.path).startsWith("_"))) {
    group(testSet.path, () {
      test("works", () async {
        final files = Map.fromEntries(
          await Future.wait(
            testSet
                .listSync(recursive: true)
                .where((element) => !basename(element.path).startsWith("_"))
                .whereType<File>()
                .map(
                  (file) async => MapEntry(
                    file.absolute.path.replaceAll(testSet.absolute.path, ""),
                    await file.readAsString(),
                  ),
                ),
          ),
        );
        final builderOptions = files.entries
            .where((element) => element.key.endsWith("builder_options.json"))
            .map((e) => jsonDecode(e.value))
            .whereType<Map<String, dynamic>?>()
            .firstWhere((element) => element != null, orElse: () => null);
        final noFlatLib = builderOptions?['noFlatLib'] == true;

        final assets = <String, Object>{};
        final expectedOutputs = <String, Object>{};
        for (final entry in files.entries) {
          final path = entry.key;
          final file = entry.value;
          final relativePath = p.relative(path, from: '/');
          final assetPath = noFlatLib
              ? 'a|${relativePath}'
              : 'a|${p.join('lib', relativePath)}';
          if (extension(path) == '.expected') {
            await File("${testSet.path}/${path}").delete();
          } else if (new RegExp(r".switch.dart$").hasMatch(path)) {
            expectedOutputs[assetPath] = file;
          } else if (new RegExp(r'^\.(dart|graphql)$')
              .hasMatch(extension(path))) {
            assets[assetPath] = file;
          }
        }
        final optionsFile =
            files.entries.whereType<MapEntry<String, String>?>().firstWhere(
                  (element) =>
                      element != null && element.key.endsWith("/options.json"),
                  orElse: () => null,
                );
        final options = optionsFile == null
            ? BuilderOptions.empty
            : BuilderOptions(
                jsonDecode(optionsFile.value) as Map<String, dynamic>,
              );
        final writer = InMemoryAssetWriter();
        try {
          await testBuilder(
            SwitchBuilder(options),
            assets,
            writer: writer,
            rootPackage: 'a',
            outputs: expectedOutputs,
          );
        } catch (e) {
          for (final entry in writer.assets.entries) {
            final file = noFlatLib
                ? entry.key.path
                : entry.key.path.replaceAll(RegExp("^lib/"), "");
            if (utf8.decode(entry.value) != files[file]) {
              await (await File(
                // "${testSet.absolute.path}/${file}", // TODO revert
                "${testSet.absolute.path}/${file}.expected",
              ).create(recursive: true))
                  .writeAsBytes(entry.value);
            }
          }
          rethrow;
        }
      });
    });
  }
}
