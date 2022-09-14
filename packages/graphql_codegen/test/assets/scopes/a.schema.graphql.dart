enum Enum$Status { COOL, BEANS, $unknown }

String toJson$Enum$Status(Enum$Status e) {
  switch (e) {
    case Enum$Status.COOL:
      return r'COOL';
    case Enum$Status.BEANS:
      return r'BEANS';
    case Enum$Status.$unknown:
      return r'$unknown';
  }
}

Enum$Status fromJson$Enum$Status(String value) {
  switch (value) {
    case r'COOL':
      return Enum$Status.COOL;
    case r'BEANS':
      return Enum$Status.BEANS;
    default:
      return Enum$Status.$unknown;
  }
}

const possibleTypesMap = {};
