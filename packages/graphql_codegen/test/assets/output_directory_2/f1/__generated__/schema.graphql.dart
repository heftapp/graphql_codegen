enum Enum$E { ONE, TWO, THREE, $unknown }

String toJson$Enum$E(Enum$E e) {
  switch (e) {
    case Enum$E.ONE:
      return r'ONE';
    case Enum$E.TWO:
      return r'TWO';
    case Enum$E.THREE:
      return r'THREE';
    case Enum$E.$unknown:
      return r'$unknown';
  }
}

Enum$E fromJson$Enum$E(String value) {
  switch (value) {
    case r'ONE':
      return Enum$E.ONE;
    case r'TWO':
      return Enum$E.TWO;
    case r'THREE':
      return Enum$E.THREE;
    default:
      return Enum$E.$unknown;
  }
}

const possibleTypesMap = {};
