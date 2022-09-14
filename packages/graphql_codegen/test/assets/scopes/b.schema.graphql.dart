enum Enum$Status { COOL, SMEANS, $unknown }

String toJson$Enum$Status(Enum$Status e) {
  switch (e) {
    case Enum$Status.COOL:
      return r'COOL';
    case Enum$Status.SMEANS:
      return r'SMEANS';
    case Enum$Status.$unknown:
      return r'$unknown';
  }
}

Enum$Status fromJson$Enum$Status(String value) {
  switch (value) {
    case r'COOL':
      return Enum$Status.COOL;
    case r'SMEANS':
      return Enum$Status.SMEANS;
    default:
      return Enum$Status.$unknown;
  }
}

const possibleTypesMap = {};
