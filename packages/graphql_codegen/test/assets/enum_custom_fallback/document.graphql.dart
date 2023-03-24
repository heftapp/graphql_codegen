enum Enum$MyEnum { FIRST, LAST, OTHER }

String toJson$Enum$MyEnum(Enum$MyEnum e) {
  switch (e) {
    case Enum$MyEnum.FIRST:
      return r'FIRST';
    case Enum$MyEnum.LAST:
      return r'LAST';
    case Enum$MyEnum.OTHER:
      return r'OTHER';
  }
}

Enum$MyEnum fromJson$Enum$MyEnum(String value) {
  switch (value) {
    case r'FIRST':
      return Enum$MyEnum.FIRST;
    case r'LAST':
      return Enum$MyEnum.LAST;
    case r'OTHER':
      return Enum$MyEnum.OTHER;
    default:
      return Enum$MyEnum.OTHER;
  }
}
