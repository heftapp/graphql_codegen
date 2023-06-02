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
  $unknown
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
  $unknown
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

class Fragment$PersonSummary {
  Fragment$PersonSummary({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$PersonSummary.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Person":
        return Fragment$PersonSummary$$Person.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Fragment$PersonSummary(
          id: (l$id as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PersonSummary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$PersonSummary on Fragment$PersonSummary {
  CopyWith$Fragment$PersonSummary<Fragment$PersonSummary> get copyWith =>
      CopyWith$Fragment$PersonSummary(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$PersonSummary$$Person) person,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Person":
        return person(this as Fragment$PersonSummary$$Person);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$PersonSummary$$Person)? person,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Person":
        if (person != null) {
          return person(this as Fragment$PersonSummary$$Person);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$PersonSummary<TRes> {
  factory CopyWith$Fragment$PersonSummary(
    Fragment$PersonSummary instance,
    TRes Function(Fragment$PersonSummary) then,
  ) = _CopyWithImpl$Fragment$PersonSummary;

  factory CopyWith$Fragment$PersonSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonSummary;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithImpl$Fragment$PersonSummary(
    this._instance,
    this._then,
  );

  final Fragment$PersonSummary _instance;

  final TRes Function(Fragment$PersonSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonSummary(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithStubImpl$Fragment$PersonSummary(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPersonSummary = FragmentDefinitionNode(
  name: NameNode(value: 'PersonSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'IPerson'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
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
const documentNodeFragmentPersonSummary = DocumentNode(definitions: [
  fragmentDefinitionPersonSummary,
]);

class Fragment$PersonSummary$$Person implements Fragment$PersonSummary {
  Fragment$PersonSummary$$Person({
    required this.id,
    this.$__typename = 'Person',
  });

  factory Fragment$PersonSummary$$Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonSummary$$Person(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PersonSummary$$Person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$PersonSummary$$Person
    on Fragment$PersonSummary$$Person {
  CopyWith$Fragment$PersonSummary$$Person<Fragment$PersonSummary$$Person>
      get copyWith => CopyWith$Fragment$PersonSummary$$Person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PersonSummary$$Person<TRes> {
  factory CopyWith$Fragment$PersonSummary$$Person(
    Fragment$PersonSummary$$Person instance,
    TRes Function(Fragment$PersonSummary$$Person) then,
  ) = _CopyWithImpl$Fragment$PersonSummary$$Person;

  factory CopyWith$Fragment$PersonSummary$$Person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonSummary$$Person;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonSummary$$Person<TRes>
    implements CopyWith$Fragment$PersonSummary$$Person<TRes> {
  _CopyWithImpl$Fragment$PersonSummary$$Person(
    this._instance,
    this._then,
  );

  final Fragment$PersonSummary$$Person _instance;

  final TRes Function(Fragment$PersonSummary$$Person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonSummary$$Person(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PersonSummary$$Person<TRes>
    implements CopyWith$Fragment$PersonSummary$$Person<TRes> {
  _CopyWithStubImpl$Fragment$PersonSummary$$Person(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPerson {
  Query$GetPerson({
    this.person,
    this.$__typename = 'Query',
  });

  factory Query$GetPerson.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson(
      person: l$person == null
          ? null
          : Query$GetPerson$person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPerson$person? person;

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
    if (!(other is Query$GetPerson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetPerson on Query$GetPerson {
  CopyWith$Query$GetPerson<Query$GetPerson> get copyWith =>
      CopyWith$Query$GetPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPerson<TRes> {
  factory CopyWith$Query$GetPerson(
    Query$GetPerson instance,
    TRes Function(Query$GetPerson) then,
  ) = _CopyWithImpl$Query$GetPerson;

  factory CopyWith$Query$GetPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPerson;

  TRes call({
    Query$GetPerson$person? person,
    String? $__typename,
  });
  CopyWith$Query$GetPerson$person<TRes> get person;
}

class _CopyWithImpl$Query$GetPerson<TRes>
    implements CopyWith$Query$GetPerson<TRes> {
  _CopyWithImpl$Query$GetPerson(
    this._instance,
    this._then,
  );

  final Query$GetPerson _instance;

  final TRes Function(Query$GetPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson(
        person: person == _undefined
            ? _instance.person
            : (person as Query$GetPerson$person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetPerson$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Query$GetPerson$person.stub(_then(_instance))
        : CopyWith$Query$GetPerson$person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$GetPerson<TRes>
    implements CopyWith$Query$GetPerson<TRes> {
  _CopyWithStubImpl$Query$GetPerson(this._res);

  TRes _res;

  call({
    Query$GetPerson$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetPerson$person<TRes> get person =>
      CopyWith$Query$GetPerson$person.stub(_res);
}

const documentNodeQueryGetPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPerson'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'person'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PersonSummary'),
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
  fragmentDefinitionPersonSummary,
]);

class Query$GetPerson$person implements Fragment$PersonSummary$$Person {
  Query$GetPerson$person({
    required this.id,
    this.$__typename = 'Person',
  });

  factory Query$GetPerson$person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson$person(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPerson$person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetPerson$person on Query$GetPerson$person {
  CopyWith$Query$GetPerson$person<Query$GetPerson$person> get copyWith =>
      CopyWith$Query$GetPerson$person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPerson$person<TRes> {
  factory CopyWith$Query$GetPerson$person(
    Query$GetPerson$person instance,
    TRes Function(Query$GetPerson$person) then,
  ) = _CopyWithImpl$Query$GetPerson$person;

  factory CopyWith$Query$GetPerson$person.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPerson$person;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPerson$person<TRes>
    implements CopyWith$Query$GetPerson$person<TRes> {
  _CopyWithImpl$Query$GetPerson$person(
    this._instance,
    this._then,
  );

  final Query$GetPerson$person _instance;

  final TRes Function(Query$GetPerson$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson$person(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPerson$person<TRes>
    implements CopyWith$Query$GetPerson$person<TRes> {
  _CopyWithStubImpl$Query$GetPerson$person(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'IPerson': {'Person'}
};
