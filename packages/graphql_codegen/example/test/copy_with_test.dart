import 'package:graphql_codegen_example/fragments.graphql.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("copyWith", () {
    test("null on required param", () {
      final fragment1 = Fragment$PersonSummary(
        name: "Lars",
        $__typename: "Person",
        nickname: "Lille lars",
      );
      final fragment2 = Fragment$PersonSummary(
        name: "Lars",
        $__typename: "Person",
        nickname: "Lille lars 2",
      );
      expect(
        fragment1.copyWith(name: null, nickname: 'Lille lars 2'),
        fragment2,
      );
    });
    test("can deep copy null", () {
      final fragment1 = Fragment$PersonSummary(
        name: "Lars",
        $__typename: "Person",
        nickname: "Lille lars",
      );
      expect(
        fragment1.copyWith.favParent(name: 'Lone'),
        fragment1,
      );
    });
    test("can deep copy can deep copy", () {
      final fragment1 = Fragment$PersonSummary(
        name: "Lars",
        $__typename: "Person",
        nickname: "Lille lars",
        favParent: Fragment$PersonParent($__typename: 'Person', name: 'Lone'),
      );
      final fragment2 = Fragment$PersonSummary(
        name: "Lars",
        $__typename: "Person",
        nickname: "Lille lars",
        favParent: Fragment$PersonParent($__typename: 'Person', name: 'Lene'),
      );
      expect(
        fragment1.copyWith.favParent(name: 'Lene'),
        fragment2,
      );
    });
  });
}
