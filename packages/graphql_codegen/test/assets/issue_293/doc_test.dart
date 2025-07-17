import 'package:test/test.dart';

import 'document.graphql.dart';

void main() {
  group('Variables', () {
    test('It should not send value non-required non-null value', () {
      expect(
        Variables$Query$Q(
          nonNull: false,
          nonNullList: [],
          nonNullEnum: Enum$E.V1,
        ).toJson(),
        equals({'nonNull': false, 'nonNullList': [], 'nonNullEnum': 'V1'}),
      );
    });
    test('It should send value non-required non-null values if provided', () {
      expect(
        Variables$Query$Q(
          nonNull: false,
          nonNullWithDefault: true,
          nonNullList: [],
          nonNullListWithDefault: [null],
          nonNullEnum: Enum$E.V1,
          nonNullEnumWithDefault: Enum$E.V1,
        ).toJson(),
        equals({
          'nonNull': false,
          'nonNullWithDefault': true,
          'nonNullList': [],
          'nonNullListWithDefault': [null],
          'nonNullEnum': 'V1',
          'nonNullEnumWithDefault': 'V1',
        }),
      );
    });
    test(
      'It should send value non-required non-null values if provided on copy',
      () {
        expect(
          Variables$Query$Q(
                nonNull: false,
                nonNullList: [],
                nonNullEnum: Enum$E.V1,
              )
              .copyWith(
                nonNullWithDefault: true,
                nonNullListWithDefault: [null],
                nonNullEnumWithDefault: Enum$E.V1,
              )
              .toJson(),
          equals({
            'nonNull': false,
            'nonNullWithDefault': true,
            'nonNullList': [],
            'nonNullListWithDefault': [null],
            'nonNullEnum': 'V1',
            'nonNullEnumWithDefault': 'V1',
          }),
        );
      },
    );
    test(
      'It should not send value non-required non-null values if null provided',
      () {
        expect(
          Variables$Query$Q(
            nonNull: false,
            nonNullWithDefault: null,
            nonNullList: [],
            nonNullListWithDefault: null,
            nonNullEnum: Enum$E.V1,
            nonNullEnumWithDefault: null,
          ).toJson(),
          equals({'nonNull': false, 'nonNullList': [], 'nonNullEnum': 'V1'}),
        );
      },
    );
    test(
      'It should not send value non-required non-null values if null provided (on copy)',
      () {
        expect(
          Variables$Query$Q(
                nonNull: false,
                nonNullList: [],
                nonNullEnum: Enum$E.V1,
              )
              .copyWith(
                nonNullWithDefault: null,
                nonNullListWithDefault: null,
                nonNullEnumWithDefault: null,
              )
              .toJson(),
          equals({'nonNull': false, 'nonNullList': [], 'nonNullEnum': 'V1'}),
        );
      },
    );
    test('Equality should work', () {
      expect(
        Variables$Query$Q(
              nonNull: false,
              nonNullWithDefault: true,
              nonNullList: [],
              nonNullListWithDefault: [null],
              nonNullEnum: Enum$E.V1,
              nonNullEnumWithDefault: Enum$E.V1,
            ) ==
            Variables$Query$Q(
              nonNull: false,
              nonNullWithDefault: true,
              nonNullList: [],
              nonNullListWithDefault: [null],
              nonNullEnum: Enum$E.V1,
              nonNullEnumWithDefault: Enum$E.V1,
            ),
        equals(true),
      );

      expect(
        Variables$Query$Q(
              nonNull: false,
              nonNullWithDefault: true,
              nonNullList: [],
              nonNullListWithDefault: [null],
              nonNullEnum: Enum$E.V1,
              nonNullEnumWithDefault: Enum$E.V1,
            ).hashCode ==
            Variables$Query$Q(
              nonNull: false,
              nonNullWithDefault: true,
              nonNullList: [],
              nonNullListWithDefault: [null],
              nonNullEnum: Enum$E.V1,
              nonNullEnumWithDefault: Enum$E.V1,
            ).hashCode,
        equals(true),
      );
    });
  });
}
