import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:graphql_codegen/builder.dart';
import 'package:path/path.dart';
import 'package:test/scaffolding.dart';

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
        final assets = <String, Object>{};
        final expectedOutputs = <String, Object>{};
        for (final entry in files.entries) {
          final path = entry.key;
          final file = await entry.value;
          if (extension(path) == '.expected') {
            await File("${testSet.path}/${path}").delete();
          } else if (extension(path) == ".graphql") {
            assets["a|lib/$path"] = file;
          } else if (path.endsWith(".graphql.dart")) {
            expectedOutputs["a|lib/$path"] = file;
          }
        }
        final optionsFile =
            files.entries.whereType<MapEntry<String, String>?>().firstWhere(
                  (element) =>
                      element != null && element.key.endsWith("options.json"),
                  orElse: () => null,
                );
        final options = optionsFile == null
            ? BuilderOptions.empty
            : BuilderOptions(
                jsonDecode(optionsFile.value) as Map<String, dynamic>);
        final writer = InMemoryAssetWriter();
        try {
          await testBuilder(
            GraphQLBuilder(options),
            assets,
            writer: writer,
            rootPackage: 'a',
            outputs: expectedOutputs,
          );
        } catch (e) {
          for (final entry in writer.assets.entries) {
            final file = entry.key.path.replaceAll(RegExp("^lib/"), "");
            if (utf8.decode(entry.value) != files[file])
              await (await File(
                "${testSet.absolute.path}/${file}.expected",
              ).create(recursive: true))
                  .writeAsBytes(entry.value);
          }
          rethrow;
        }
      });
    });
  }
}
