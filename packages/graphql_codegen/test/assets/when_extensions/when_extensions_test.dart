import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'document.graphql.dart';

void main() {
  final tA = Query$Query(u: Query$Query$u$$TA(name: 'name')).u!;
  final tB = Query$Query(u: Query$Query$u$$TB(velocity: 1)).u!;

  group("when()", () {
    test("can call when on TAs", () {
      bool wasCalled = false;
      tA.when(
        tA: (a) {
          wasCalled = true;
        },
        tB: (_) => fail("should not be called"),
        orElse: () => fail("should not be called"),
      );

      expect(wasCalled, isTrue);
    });

    test("can call when on TBs", () {
      bool wasCalled = false;
      tB.when(
        tA: (_) => fail("should not be called"),
        tB: (b) {
          wasCalled = true;
        },
        orElse: () => fail("should not be called"),
      );

      expect(wasCalled, isTrue);
    });

    test("when returns result", () {
      final velocity = tB.when(
        tA: (_) => fail("should not be called"),
        tB: (tB) => tB.velocity,
        orElse: () => fail("should not be called"),
      );

      expect(velocity, 1);
    });

    test("unexpected typeName calls orElse", () {
      final animal = tA.copyWith(typename: "Animal");

      bool wasCalled = false;

      animal.when(
        tA: (_) {},
        tB: (_) {},
        orElse: () {
          wasCalled = true;
        },
      );

      expect(wasCalled, isTrue);
    });
  });

  group("maybeWhen()", () {
    test("can call maybeWhen on TAs", () {
      bool wasCalled = false;
      tA.maybeWhen(
        tA: (h) {
          wasCalled = true;
        },
        orElse: () => fail("should not be called"),
      );

      expect(wasCalled, isTrue);
    });

    test("can call maybeWhen on TBs", () {
      bool wasCalled = false;
      tB.maybeWhen(
        tB: (d) {
          wasCalled = true;
        },
        orElse: () => fail("should not be called"),
      );

      expect(wasCalled, isTrue);
    });

    test("calls orElse when not matching", () {
      bool wasCalled = false;
      tB.maybeWhen(orElse: () {
        wasCalled = true;
      });

      expect(wasCalled, isTrue);
    });

    test("unexpected typeName calls orElse", () {
      final animal = tA.copyWith(typename: "Animal");

      bool wasCalled = false;

      animal.maybeWhen(orElse: () {
        wasCalled = true;
      });

      expect(wasCalled, isTrue);
    });
  });
}
