import 'package:gql/ast.dart';

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
    if (!(other is Fragment$FPerson) || runtimeType != other.runtimeType) {
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
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
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
    if (!(other is Query$Q$person) || runtimeType != other.runtimeType) {
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
    if (!(other is Query$Q$person$$Person) ||
        runtimeType != other.runtimeType) {
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
