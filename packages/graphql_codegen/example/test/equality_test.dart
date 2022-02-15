import 'package:graphql_codegen_example/main.graphql.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('equality', () {
    test('MutationOptions considered equal', () {
      final o1 = OptionsMutationUpdatePerson(
        variables: VariablesMutationUpdatePerson(id: '12134'),
      );
      final o2 = OptionsMutationUpdatePerson(
        variables: VariablesMutationUpdatePerson(id: '12134'),
      );
      expect(o1, equals(o2));
    });
    test('MutationOptions considered equal with callback', () {
      final callback = (_d1, _d2) {};
      final o1 = OptionsMutationUpdatePerson(
        variables: VariablesMutationUpdatePerson(id: '12134'),
        onCompleted: callback,
      );
      final o2 = OptionsMutationUpdatePerson(
        variables: VariablesMutationUpdatePerson(id: '12134'),
        onCompleted: callback,
      );
      expect(o1, equals(o2));
    });
  });
}
