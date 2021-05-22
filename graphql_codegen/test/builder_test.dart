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
        final folder = testSet
            .listSync()
            .where((element) => !basename(element.path).startsWith("_"));
        final assets = <String, Object>{};
        final expectedOutputs = <String, Object>{};
        final files = folder.whereType<File>().map(
              (file) => MapEntry(file.path, file.readAsString()),
            );
        final optionsFile = files
            .whereType<MapEntry<String, Future<String>>?>()
            .firstWhere(
              (element) =>
                  element != null && basename(element.key) == "options.json",
              orElse: () => null,
            );
        for (final entry in files) {
          final path = entry.key;
          final file = await entry.value;
          final b = basename(path);
          if (extension(path) == ".graphql") {
            assets["a|lib/$b"] = file;
          } else if (basename(path).endsWith(".graphql.dart")) {
            expectedOutputs["a|lib/$b"] = file;
          }
        }
        final options = optionsFile == null
            ? BuilderOptions.empty
            : BuilderOptions(jsonDecode(await optionsFile.value));
        await testBuilder(
          GraphQLBuilder(options),
          assets,
          rootPackage: 'a',
          outputs: expectedOutputs,
        );
      });
    });
  }
}
