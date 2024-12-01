import 'package:gql/ast.dart';

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

class Fragment$FPerson {
  Fragment$FPerson({
    this.age,
    this.$__typename = 'Person',
  });

  factory Fragment$FPerson.fromJson(Map<String, dynamic> json) {
    final l$age = json['age'];
    final l$$__typename = json['__typename'];
    return Fragment$FPerson(
      age: (l$age as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? age;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$age = age;
    _resultData['age'] = l$age;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$age,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FPerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FPerson on Fragment$FPerson {
  CopyWith$Fragment$FPerson<Fragment$FPerson> get copyWith =>
      CopyWith$Fragment$FPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FPerson<TRes> {
  factory CopyWith$Fragment$FPerson(
    Fragment$FPerson instance,
    TRes Function(Fragment$FPerson) then,
  ) = _CopyWithImpl$Fragment$FPerson;

  factory CopyWith$Fragment$FPerson.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FPerson;

  TRes call({
    int? age,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FPerson<TRes>
    implements CopyWith$Fragment$FPerson<TRes> {
  _CopyWithImpl$Fragment$FPerson(
    this._instance,
    this._then,
  );

  final Fragment$FPerson _instance;

  final TRes Function(Fragment$FPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? age = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FPerson(
        age: age == _undefined ? _instance.age : (age as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FPerson<TRes>
    implements CopyWith$Fragment$FPerson<TRes> {
  _CopyWithStubImpl$Fragment$FPerson(this._res);

  TRes _res;

  call({
    int? age,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFPerson = FragmentDefinitionNode(
  name: NameNode(value: 'FPerson'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'age'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentFPerson = DocumentNode(definitions: [
  fragmentDefinitionFPerson,
]);

class Query$Q {
  Query$Q({
    this.person,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      person: l$person == null
          ? null
          : Query$Q$person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Q$person? person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q || runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({
    Query$Q$person? person,
    String? $__typename,
  });
  CopyWith$Query$Q$person<TRes> get person;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        person: person == _undefined
            ? _instance.person
            : (person as Query$Q$person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Q$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Query$Q$person.stub(_then(_instance))
        : CopyWith$Query$Q$person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    Query$Q$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Q$person<TRes> get person =>
      CopyWith$Query$Q$person.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'person'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'FPerson'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionFPerson,
]);

class Query$Q$person {
  Query$Q$person({
    this.name,
    required this.$__typename,
  });

  factory Query$Q$person.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Person":
        return Query$Q$person$$Person.fromJson(json);

      default:
        final l$name = json['name'];
        final l$$__typename = json['__typename'];
        return Query$Q$person(
          name: (l$name as String?),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q$person || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$person on Query$Q$person {
  CopyWith$Query$Q$person<Query$Q$person> get copyWith =>
      CopyWith$Query$Q$person(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Q$person$$Person) person,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Person":
        return person(this as Query$Q$person$$Person);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Q$person$$Person)? person,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Person":
        if (person != null) {
          return person(this as Query$Q$person$$Person);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Q$person<TRes> {
  factory CopyWith$Query$Q$person(
    Query$Q$person instance,
    TRes Function(Query$Q$person) then,
  ) = _CopyWithImpl$Query$Q$person;

  factory CopyWith$Query$Q$person.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$person;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$person<TRes>
    implements CopyWith$Query$Q$person<TRes> {
  _CopyWithImpl$Query$Q$person(
    this._instance,
    this._then,
  );

  final Query$Q$person _instance;

  final TRes Function(Query$Q$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$person(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$person<TRes>
    implements CopyWith$Query$Q$person<TRes> {
  _CopyWithStubImpl$Query$Q$person(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Q$person$$Person implements Fragment$FPerson, Query$Q$person {
  Query$Q$person$$Person({
    this.name,
    this.age,
    this.$__typename = 'Person',
  });

  factory Query$Q$person$$Person.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$age = json['age'];
    final l$$__typename = json['__typename'];
    return Query$Q$person$$Person(
      name: (l$name as String?),
      age: (l$age as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final int? age;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$age,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q$person$$Person || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$person$$Person on Query$Q$person$$Person {
  CopyWith$Query$Q$person$$Person<Query$Q$person$$Person> get copyWith =>
      CopyWith$Query$Q$person$$Person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$person$$Person<TRes> {
  factory CopyWith$Query$Q$person$$Person(
    Query$Q$person$$Person instance,
    TRes Function(Query$Q$person$$Person) then,
  ) = _CopyWithImpl$Query$Q$person$$Person;

  factory CopyWith$Query$Q$person$$Person.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$person$$Person;

  TRes call({
    String? name,
    int? age,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$person$$Person<TRes>
    implements CopyWith$Query$Q$person$$Person<TRes> {
  _CopyWithImpl$Query$Q$person$$Person(
    this._instance,
    this._then,
  );

  final Query$Q$person$$Person _instance;

  final TRes Function(Query$Q$person$$Person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? age = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$person$$Person(
        name: name == _undefined ? _instance.name : (name as String?),
        age: age == _undefined ? _instance.age : (age as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$person$$Person<TRes>
    implements CopyWith$Query$Q$person$$Person<TRes> {
  _CopyWithStubImpl$Query$Q$person$$Person(this._res);

  TRes _res;

  call({
    String? name,
    int? age,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'IPerson': {'Person'}
};
