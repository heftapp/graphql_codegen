import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'document.graphql.dart';

void main() {
  test("can serialize and deserialize", () {
    final json1 = {
      '__typename': 'Query',
      'book': {'__typename': 'TextBook', 'author': 'Bob', 'courses': 4},
    };
    final json2 = Query$Q.fromJson(json1).toJson();
    expect(json1, equals(json2));
  });
}
