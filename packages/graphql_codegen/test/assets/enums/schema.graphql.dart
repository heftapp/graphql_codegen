enum Enum$Enum { FOO, BAR, BAZ_BOB, VOID, $unknown }

String toJson$Enum$Enum(Enum$Enum e) {
  switch (e) {
    case Enum$Enum.FOO:
      return r'FOO';
    case Enum$Enum.BAR:
      return r'BAR';
    case Enum$Enum.BAZ_BOB:
      return r'BAZ_BOB';
    case Enum$Enum.VOID:
      return r'VOID';
    case Enum$Enum.$unknown:
      return r'$unknown';
  }
}

Enum$Enum fromJson$Enum$Enum(String value) {
  switch (value) {
    case r'FOO':
      return Enum$Enum.FOO;
    case r'BAR':
      return Enum$Enum.BAR;
    case r'BAZ_BOB':
      return Enum$Enum.BAZ_BOB;
    case r'VOID':
      return Enum$Enum.VOID;
    default:
      return Enum$Enum.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
