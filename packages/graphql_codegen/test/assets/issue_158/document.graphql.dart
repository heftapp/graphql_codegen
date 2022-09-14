import 'package:gql/ast.dart';

class Fragment$PersonSummary {
  Fragment$PersonSummary({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$PersonSummary.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonSummary(
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

  static const _undefined = {};

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

class Query$GetPerson {
  Query$GetPerson({
    this.person,
    required this.$__typename,
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

  static const _undefined = {};

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

class Query$GetPerson$person implements Fragment$PersonSummary {
  Query$GetPerson$person({
    required this.id,
    required this.$__typename,
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

  static const _undefined = {};

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

const possibleTypesMap = {
  'IPerson': {'Person'}
};
