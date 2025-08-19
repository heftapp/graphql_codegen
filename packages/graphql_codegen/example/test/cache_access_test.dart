import 'package:graphql_codegen_example/fragments.graphql.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("Serialize fragments", () {
    test("Can serialize nested fragments", () {
      final fragment = Fragment$PersonSummary(
        $__typename: "Person",
        name: "Lars",
        parents: [
          Fragment$PersonParent(name: "Father", $__typename: "Person"),
          Fragment$PersonParent(name: "Mother", $__typename: "Person"),
        ],
      ).toJson();
      expect(
        fragment,
        equals({
          'nickname': null,
          'name': 'Lars',
          'dob': null,
          'events': null,
          'eventsOfEvents': null,
          'favParent': null,
          'parents': [
            {'name': 'Father', '__typename': 'Person'},
            {'name': 'Mother', '__typename': 'Person'},
          ],
          '__typename': 'Person',
        }),
      );
    });
    test("Can mutate fragments", () {
      final fragment = Fragment$PersonSummary(
        $__typename: "Person",
        name: "Lars",
        parents: [
          Fragment$PersonParent(name: "Father", $__typename: "Person"),
          Fragment$PersonParent(name: "Mother", $__typename: "Person"),
        ],
      );
      expect(
        fragment.copyWith(name: "Kurt").copyWith(nickname: "Bob").toJson(),
        equals({
          'nickname': "Bob",
          'name': 'Kurt',
          'dob': null,
          'events': null,
          'eventsOfEvents': null,
          'favParent': null,
          'parents': [
            {'name': 'Father', '__typename': 'Person'},
            {'name': 'Mother', '__typename': 'Person'},
          ],
          '__typename': 'Person',
        }),
      );
    });
  });
}
