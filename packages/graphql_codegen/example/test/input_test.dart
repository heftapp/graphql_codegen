import 'package:graphql_codegen_example/schema.graphqls.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Input', () {
    test('Equality w/wo null', () {
      final i1 = Input$UpdatePersonInput(
        id: 'id1',
      ).copyWith(full_name: null, nickname: null, website: null);
      final i2 = Input$UpdatePersonInput(id: 'id1');
      expect(i1, equals(i1));
      expect(i1, isNot(equals(i2)));
      expect(i1.hashCode, equals(i1.hashCode));
      expect(i1.hashCode, isNot(equals(i2.hashCode)));
      expect(
        i1.toJson(),
        equals({
          'id': 'id1',
          'full_name': null,
          'nickname': null,
          'website': null,
        }),
      );
      expect(i2.toJson(), equals({'id': 'id1'}));
    });
    test('Copy', () {
      final i1 = Input$UpdatePersonInput(id: 'id1', full_name: 'Bob');
      final i2 = Input$UpdatePersonInput(id: 'id1').copyWith(full_name: 'Bob');
      expect(i1, equals(i2));
      expect(i1.hashCode, equals(i2.hashCode));
    });
  });
}
