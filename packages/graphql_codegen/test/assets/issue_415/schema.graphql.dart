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

class Fragment$NodeFragment {
  Fragment$NodeFragment({required this.id, required this.$__typename});

  factory Fragment$NodeFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Dog":
        return Fragment$NodeFragment$$Dog.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Fragment$NodeFragment(
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
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$NodeFragment || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$NodeFragment on Fragment$NodeFragment {
  CopyWith$Fragment$NodeFragment<Fragment$NodeFragment> get copyWith =>
      CopyWith$Fragment$NodeFragment(this, (i) => i);

  _T when<_T>({
    required _T Function(Fragment$NodeFragment$$Dog) dog,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Dog":
        return dog(this as Fragment$NodeFragment$$Dog);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$NodeFragment$$Dog)? dog,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Dog":
        if (dog != null) {
          return dog(this as Fragment$NodeFragment$$Dog);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$NodeFragment<TRes> {
  factory CopyWith$Fragment$NodeFragment(
    Fragment$NodeFragment instance,
    TRes Function(Fragment$NodeFragment) then,
  ) = _CopyWithImpl$Fragment$NodeFragment;

  factory CopyWith$Fragment$NodeFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NodeFragment;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$NodeFragment<TRes>
    implements CopyWith$Fragment$NodeFragment<TRes> {
  _CopyWithImpl$Fragment$NodeFragment(this._instance, this._then);

  final Fragment$NodeFragment _instance;

  final TRes Function(Fragment$NodeFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$NodeFragment(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$NodeFragment<TRes>
    implements CopyWith$Fragment$NodeFragment<TRes> {
  _CopyWithStubImpl$Fragment$NodeFragment(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

const fragmentDefinitionNodeFragment = FragmentDefinitionNode(
  name: NameNode(value: 'NodeFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
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
    ],
  ),
);
const documentNodeFragmentNodeFragment = DocumentNode(
  definitions: [fragmentDefinitionNodeFragment],
);

class Fragment$NodeFragment$$Dog implements Fragment$NodeFragment {
  Fragment$NodeFragment$$Dog({required this.id, this.$__typename = 'Dog'});

  factory Fragment$NodeFragment$$Dog.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$NodeFragment$$Dog(
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
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$NodeFragment$$Dog ||
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

extension UtilityExtension$Fragment$NodeFragment$$Dog
    on Fragment$NodeFragment$$Dog {
  CopyWith$Fragment$NodeFragment$$Dog<Fragment$NodeFragment$$Dog>
  get copyWith => CopyWith$Fragment$NodeFragment$$Dog(this, (i) => i);
}

abstract class CopyWith$Fragment$NodeFragment$$Dog<TRes> {
  factory CopyWith$Fragment$NodeFragment$$Dog(
    Fragment$NodeFragment$$Dog instance,
    TRes Function(Fragment$NodeFragment$$Dog) then,
  ) = _CopyWithImpl$Fragment$NodeFragment$$Dog;

  factory CopyWith$Fragment$NodeFragment$$Dog.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NodeFragment$$Dog;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$NodeFragment$$Dog<TRes>
    implements CopyWith$Fragment$NodeFragment$$Dog<TRes> {
  _CopyWithImpl$Fragment$NodeFragment$$Dog(this._instance, this._then);

  final Fragment$NodeFragment$$Dog _instance;

  final TRes Function(Fragment$NodeFragment$$Dog) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$NodeFragment$$Dog(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$NodeFragment$$Dog<TRes>
    implements CopyWith$Fragment$NodeFragment$$Dog<TRes> {
  _CopyWithStubImpl$Fragment$NodeFragment$$Dog(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Fragment$AnimalFragment implements Fragment$NodeFragment {
  Fragment$AnimalFragment({
    required this.id,
    required this.$__typename,
    required this.name,
  });

  factory Fragment$AnimalFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Dog":
        return Fragment$AnimalFragment$$Dog.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        final l$name = json['name'];
        return Fragment$AnimalFragment(
          id: (l$id as String),
          $__typename: (l$$__typename as String),
          name: (l$name as String),
        );
    }
  }

  final String id;

  final String $__typename;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$id, l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AnimalFragment || runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AnimalFragment on Fragment$AnimalFragment {
  CopyWith$Fragment$AnimalFragment<Fragment$AnimalFragment> get copyWith =>
      CopyWith$Fragment$AnimalFragment(this, (i) => i);

  _T when<_T>({
    required _T Function(Fragment$AnimalFragment$$Dog) dog,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Dog":
        return dog(this as Fragment$AnimalFragment$$Dog);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$AnimalFragment$$Dog)? dog,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Dog":
        if (dog != null) {
          return dog(this as Fragment$AnimalFragment$$Dog);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$AnimalFragment<TRes> {
  factory CopyWith$Fragment$AnimalFragment(
    Fragment$AnimalFragment instance,
    TRes Function(Fragment$AnimalFragment) then,
  ) = _CopyWithImpl$Fragment$AnimalFragment;

  factory CopyWith$Fragment$AnimalFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AnimalFragment;

  TRes call({String? id, String? $__typename, String? name});
}

class _CopyWithImpl$Fragment$AnimalFragment<TRes>
    implements CopyWith$Fragment$AnimalFragment<TRes> {
  _CopyWithImpl$Fragment$AnimalFragment(this._instance, this._then);

  final Fragment$AnimalFragment _instance;

  final TRes Function(Fragment$AnimalFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) => _then(
    Fragment$AnimalFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AnimalFragment<TRes>
    implements CopyWith$Fragment$AnimalFragment<TRes> {
  _CopyWithStubImpl$Fragment$AnimalFragment(this._res);

  TRes _res;

  call({String? id, String? $__typename, String? name}) => _res;
}

const fragmentDefinitionAnimalFragment = FragmentDefinitionNode(
  name: NameNode(value: 'AnimalFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Animal'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'NodeFragment'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'name'),
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
    ],
  ),
);
const documentNodeFragmentAnimalFragment = DocumentNode(
  definitions: [
    fragmentDefinitionAnimalFragment,
    fragmentDefinitionNodeFragment,
  ],
);

class Fragment$AnimalFragment$$Dog
    implements Fragment$NodeFragment$$Dog, Fragment$AnimalFragment {
  Fragment$AnimalFragment$$Dog({
    required this.id,
    this.$__typename = 'Dog',
    required this.name,
  });

  factory Fragment$AnimalFragment$$Dog.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    final l$name = json['name'];
    return Fragment$AnimalFragment$$Dog(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
      name: (l$name as String),
    );
  }

  final String id;

  final String $__typename;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$id, l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AnimalFragment$$Dog ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AnimalFragment$$Dog
    on Fragment$AnimalFragment$$Dog {
  CopyWith$Fragment$AnimalFragment$$Dog<Fragment$AnimalFragment$$Dog>
  get copyWith => CopyWith$Fragment$AnimalFragment$$Dog(this, (i) => i);
}

abstract class CopyWith$Fragment$AnimalFragment$$Dog<TRes> {
  factory CopyWith$Fragment$AnimalFragment$$Dog(
    Fragment$AnimalFragment$$Dog instance,
    TRes Function(Fragment$AnimalFragment$$Dog) then,
  ) = _CopyWithImpl$Fragment$AnimalFragment$$Dog;

  factory CopyWith$Fragment$AnimalFragment$$Dog.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AnimalFragment$$Dog;

  TRes call({String? id, String? $__typename, String? name});
}

class _CopyWithImpl$Fragment$AnimalFragment$$Dog<TRes>
    implements CopyWith$Fragment$AnimalFragment$$Dog<TRes> {
  _CopyWithImpl$Fragment$AnimalFragment$$Dog(this._instance, this._then);

  final Fragment$AnimalFragment$$Dog _instance;

  final TRes Function(Fragment$AnimalFragment$$Dog) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
    Object? name = _undefined,
  }) => _then(
    Fragment$AnimalFragment$$Dog(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AnimalFragment$$Dog<TRes>
    implements CopyWith$Fragment$AnimalFragment$$Dog<TRes> {
  _CopyWithStubImpl$Fragment$AnimalFragment$$Dog(this._res);

  TRes _res;

  call({String? id, String? $__typename, String? name}) => _res;
}

class Query$GetAnimal {
  Query$GetAnimal({required this.animal, this.$__typename = 'Query'});

  factory Query$GetAnimal.fromJson(Map<String, dynamic> json) {
    final l$animal = json['animal'];
    final l$$__typename = json['__typename'];
    return Query$GetAnimal(
      animal: Fragment$AnimalFragment.fromJson(
        (l$animal as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AnimalFragment animal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$animal = animal;
    _resultData['animal'] = l$animal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$animal = animal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$animal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAnimal || runtimeType != other.runtimeType) {
      return false;
    }
    final l$animal = animal;
    final lOther$animal = other.animal;
    if (l$animal != lOther$animal) {
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

extension UtilityExtension$Query$GetAnimal on Query$GetAnimal {
  CopyWith$Query$GetAnimal<Query$GetAnimal> get copyWith =>
      CopyWith$Query$GetAnimal(this, (i) => i);
}

abstract class CopyWith$Query$GetAnimal<TRes> {
  factory CopyWith$Query$GetAnimal(
    Query$GetAnimal instance,
    TRes Function(Query$GetAnimal) then,
  ) = _CopyWithImpl$Query$GetAnimal;

  factory CopyWith$Query$GetAnimal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAnimal;

  TRes call({Fragment$AnimalFragment? animal, String? $__typename});
  CopyWith$Fragment$AnimalFragment<TRes> get animal;
}

class _CopyWithImpl$Query$GetAnimal<TRes>
    implements CopyWith$Query$GetAnimal<TRes> {
  _CopyWithImpl$Query$GetAnimal(this._instance, this._then);

  final Query$GetAnimal _instance;

  final TRes Function(Query$GetAnimal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? animal = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAnimal(
          animal: animal == _undefined || animal == null
              ? _instance.animal
              : (animal as Fragment$AnimalFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$AnimalFragment<TRes> get animal {
    final local$animal = _instance.animal;
    return CopyWith$Fragment$AnimalFragment(
      local$animal,
      (e) => call(animal: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAnimal<TRes>
    implements CopyWith$Query$GetAnimal<TRes> {
  _CopyWithStubImpl$Query$GetAnimal(this._res);

  TRes _res;

  call({Fragment$AnimalFragment? animal, String? $__typename}) => _res;

  CopyWith$Fragment$AnimalFragment<TRes> get animal =>
      CopyWith$Fragment$AnimalFragment.stub(_res);
}

const documentNodeQueryGetAnimal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAnimal'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'animal'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'AnimalFragment'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionAnimalFragment,
    fragmentDefinitionNodeFragment,
  ],
);
const possibleTypesMap = <String, Set<String>>{
  'Animal': {'Dog'},
  'Node': {'Dog'},
};
