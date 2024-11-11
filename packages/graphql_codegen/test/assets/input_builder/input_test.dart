import 'package:test/test.dart';

import 'input.graphql.dart';

void main() {
  group("Input builder", () {
    test("should not set values to null", () {
      expect(
          Input$I1(
            (builder) => builder(
              e: Enum$E.BAR,
              s: '',
              es: [Enum$E.BAR],
            ),
          ).toJson(),
          equals({
            'e': 'BAR',
            's': '',
            'es': ['BAR'],
          }));
    });
    test("should set explicit null values to null", () {
      expect(
          Input$I1(
            (builder) => builder(
              e: Enum$E.BAR,
              s: '',
              es: [Enum$E.BAR],
              sMaybe: null,
            ),
          ).toJson(),
          equals({
            'e': 'BAR',
            's': '',
            'es': ['BAR'],
            'sMaybe': null,
          }));
    });
  });
}
