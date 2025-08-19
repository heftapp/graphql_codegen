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

class Fragment$CarFragment {
  Fragment$CarFragment({
    this.createdAt,
    this.description,
    this.erpId,
    this.garageNumber,
    required this.id,
    this.inventoryNumber,
    this.modification,
    this.registrationNumber,
    this.updatedAt,
    this.vin,
    this.$__typename = 'ResourceItem',
  });

  factory Fragment$CarFragment.fromJson(Map<String, dynamic> json) {
    final l$createdAt = json.containsKey('createdAt')
        ? json['createdAt']
        : null;
    final l$description = json.containsKey('description')
        ? json['description']
        : null;
    final l$erpId = json.containsKey('erpId') ? json['erpId'] : null;
    final l$garageNumber = json.containsKey('garageNumber')
        ? json['garageNumber']
        : null;
    final l$id = json['id'];
    final l$inventoryNumber = json.containsKey('inventoryNumber')
        ? json['inventoryNumber']
        : null;
    final l$modification = json.containsKey('modification')
        ? json['modification']
        : null;
    final l$registrationNumber = json.containsKey('registrationNumber')
        ? json['registrationNumber']
        : null;
    final l$updatedAt = json.containsKey('updatedAt')
        ? json['updatedAt']
        : null;
    final l$vin = json.containsKey('vin') ? json['vin'] : null;
    final l$$__typename = json['__typename'];
    return Fragment$CarFragment(
      createdAt: (l$createdAt as String?),
      description: (l$description as String?),
      erpId: (l$erpId as String?),
      garageNumber: (l$garageNumber as String?),
      id: (l$id as String),
      inventoryNumber: (l$inventoryNumber as String?),
      modification: (l$modification as String?),
      registrationNumber: (l$registrationNumber as String?),
      updatedAt: (l$updatedAt as String?),
      vin: (l$vin as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? createdAt;

  final String? description;

  final String? erpId;

  final String? garageNumber;

  final String id;

  final String? inventoryNumber;

  final String? modification;

  final String? registrationNumber;

  final String? updatedAt;

  final String? vin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$erpId = erpId;
    _resultData['erpId'] = l$erpId;
    final l$garageNumber = garageNumber;
    _resultData['garageNumber'] = l$garageNumber;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$inventoryNumber = inventoryNumber;
    _resultData['inventoryNumber'] = l$inventoryNumber;
    final l$modification = modification;
    _resultData['modification'] = l$modification;
    final l$registrationNumber = registrationNumber;
    _resultData['registrationNumber'] = l$registrationNumber;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$description = description;
    final l$erpId = erpId;
    final l$garageNumber = garageNumber;
    final l$id = id;
    final l$inventoryNumber = inventoryNumber;
    final l$modification = modification;
    final l$registrationNumber = registrationNumber;
    final l$updatedAt = updatedAt;
    final l$vin = vin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$description,
      l$erpId,
      l$garageNumber,
      l$id,
      l$inventoryNumber,
      l$modification,
      l$registrationNumber,
      l$updatedAt,
      l$vin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CarFragment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$erpId = erpId;
    final lOther$erpId = other.erpId;
    if (l$erpId != lOther$erpId) {
      return false;
    }
    final l$garageNumber = garageNumber;
    final lOther$garageNumber = other.garageNumber;
    if (l$garageNumber != lOther$garageNumber) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inventoryNumber = inventoryNumber;
    final lOther$inventoryNumber = other.inventoryNumber;
    if (l$inventoryNumber != lOther$inventoryNumber) {
      return false;
    }
    final l$modification = modification;
    final lOther$modification = other.modification;
    if (l$modification != lOther$modification) {
      return false;
    }
    final l$registrationNumber = registrationNumber;
    final lOther$registrationNumber = other.registrationNumber;
    if (l$registrationNumber != lOther$registrationNumber) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
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

extension UtilityExtension$Fragment$CarFragment on Fragment$CarFragment {
  CopyWith$Fragment$CarFragment<Fragment$CarFragment> get copyWith =>
      CopyWith$Fragment$CarFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$CarFragment<TRes> {
  factory CopyWith$Fragment$CarFragment(
    Fragment$CarFragment instance,
    TRes Function(Fragment$CarFragment) then,
  ) = _CopyWithImpl$Fragment$CarFragment;

  factory CopyWith$Fragment$CarFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CarFragment;

  TRes call({
    String? createdAt,
    String? description,
    String? erpId,
    String? garageNumber,
    String? id,
    String? inventoryNumber,
    String? modification,
    String? registrationNumber,
    String? updatedAt,
    String? vin,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CarFragment<TRes>
    implements CopyWith$Fragment$CarFragment<TRes> {
  _CopyWithImpl$Fragment$CarFragment(this._instance, this._then);

  final Fragment$CarFragment _instance;

  final TRes Function(Fragment$CarFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? description = _undefined,
    Object? erpId = _undefined,
    Object? garageNumber = _undefined,
    Object? id = _undefined,
    Object? inventoryNumber = _undefined,
    Object? modification = _undefined,
    Object? registrationNumber = _undefined,
    Object? updatedAt = _undefined,
    Object? vin = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CarFragment(
      createdAt: createdAt == _undefined
          ? _instance.createdAt
          : (createdAt as String?),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      erpId: erpId == _undefined ? _instance.erpId : (erpId as String?),
      garageNumber: garageNumber == _undefined
          ? _instance.garageNumber
          : (garageNumber as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      inventoryNumber: inventoryNumber == _undefined
          ? _instance.inventoryNumber
          : (inventoryNumber as String?),
      modification: modification == _undefined
          ? _instance.modification
          : (modification as String?),
      registrationNumber: registrationNumber == _undefined
          ? _instance.registrationNumber
          : (registrationNumber as String?),
      updatedAt: updatedAt == _undefined
          ? _instance.updatedAt
          : (updatedAt as String?),
      vin: vin == _undefined ? _instance.vin : (vin as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$CarFragment<TRes>
    implements CopyWith$Fragment$CarFragment<TRes> {
  _CopyWithStubImpl$Fragment$CarFragment(this._res);

  TRes _res;

  call({
    String? createdAt,
    String? description,
    String? erpId,
    String? garageNumber,
    String? id,
    String? inventoryNumber,
    String? modification,
    String? registrationNumber,
    String? updatedAt,
    String? vin,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionCarFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CarFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'ResourceItem'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'erpId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'garageNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'inventoryNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'modification'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
      ),
      FieldNode(
        name: NameNode(value: 'registrationNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vin'),
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
const documentNodeFragmentCarFragment = DocumentNode(
  definitions: [fragmentDefinitionCarFragment],
);
const possibleTypesMap = <String, Set<String>>{};
