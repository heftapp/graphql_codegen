import 'package:gql/ast.dart';

enum Enum___Status {
  Pending,
  Successful,
  Failure,
  InProgress,
  $unknown;

  factory Enum___Status.fromJson(String value) =>
      fromJson___Enum___Status(value);

  String toJson() => toJson___Enum___Status(this);
}

String toJson___Enum___Status(Enum___Status e) {
  switch (e) {
    case Enum___Status.Pending:
      return r'Pending';
    case Enum___Status.Successful:
      return r'Successful';
    case Enum___Status.Failure:
      return r'Failure';
    case Enum___Status.InProgress:
      return r'InProgress';
    case Enum___Status.$unknown:
      return r'$unknown';
  }
}

Enum___Status fromJson___Enum___Status(String value) {
  switch (value) {
    case r'Pending':
      return Enum___Status.Pending;
    case r'Successful':
      return Enum___Status.Successful;
    case r'Failure':
      return Enum___Status.Failure;
    case r'InProgress':
      return Enum___Status.InProgress;
    default:
      return Enum___Status.$unknown;
  }
}

enum Enum_____TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum_____TypeKind.fromJson(String value) =>
      fromJson___Enum_____TypeKind(value);

  String toJson() => toJson___Enum_____TypeKind(this);
}

String toJson___Enum_____TypeKind(Enum_____TypeKind e) {
  switch (e) {
    case Enum_____TypeKind.SCALAR:
      return r'SCALAR';
    case Enum_____TypeKind.OBJECT:
      return r'OBJECT';
    case Enum_____TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum_____TypeKind.UNION:
      return r'UNION';
    case Enum_____TypeKind.ENUM:
      return r'ENUM';
    case Enum_____TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum_____TypeKind.LIST:
      return r'LIST';
    case Enum_____TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum_____TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum_____TypeKind fromJson___Enum_____TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum_____TypeKind.SCALAR;
    case r'OBJECT':
      return Enum_____TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum_____TypeKind.INTERFACE;
    case r'UNION':
      return Enum_____TypeKind.UNION;
    case r'ENUM':
      return Enum_____TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum_____TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum_____TypeKind.LIST;
    case r'NON_NULL':
      return Enum_____TypeKind.NON_NULL;
    default:
      return Enum_____TypeKind.$unknown;
  }
}

enum Enum_____DirectiveLocation {
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

  factory Enum_____DirectiveLocation.fromJson(String value) =>
      fromJson___Enum_____DirectiveLocation(value);

  String toJson() => toJson___Enum_____DirectiveLocation(this);
}

String toJson___Enum_____DirectiveLocation(Enum_____DirectiveLocation e) {
  switch (e) {
    case Enum_____DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum_____DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum_____DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum_____DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum_____DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum_____DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum_____DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum_____DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum_____DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum_____DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum_____DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum_____DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum_____DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum_____DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum_____DirectiveLocation.UNION:
      return r'UNION';
    case Enum_____DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum_____DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum_____DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum_____DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum_____DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum_____DirectiveLocation fromJson___Enum_____DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum_____DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum_____DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum_____DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum_____DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum_____DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum_____DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum_____DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum_____DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum_____DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum_____DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum_____DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum_____DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum_____DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum_____DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum_____DirectiveLocation.UNION;
    case r'ENUM':
      return Enum_____DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum_____DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum_____DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum_____DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum_____DirectiveLocation.$unknown;
  }
}

class Query___Q {
  Query___Q({
    this.status,
    this.$__typename = 'Query',
  });

  factory Query___Q.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query___Q(
      status: l$status == null
          ? null
          : fromJson___Enum___Status((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum___Status? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson___Enum___Status(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query___Q || runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension___Query___Q on Query___Q {
  CopyWith___Query___Q<Query___Q> get copyWith => CopyWith___Query___Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith___Query___Q<TRes> {
  factory CopyWith___Query___Q(
    Query___Q instance,
    TRes Function(Query___Q) then,
  ) = _CopyWithImpl___Query___Q;

  factory CopyWith___Query___Q.stub(TRes res) = _CopyWithStubImpl___Query___Q;

  TRes call({
    Enum___Status? status,
    String? $__typename,
  });
}

class _CopyWithImpl___Query___Q<TRes> implements CopyWith___Query___Q<TRes> {
  _CopyWithImpl___Query___Q(
    this._instance,
    this._then,
  );

  final Query___Q _instance;

  final TRes Function(Query___Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query___Q(
        status: status == _undefined
            ? _instance.status
            : (status as Enum___Status?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl___Query___Q<TRes>
    implements CopyWith___Query___Q<TRes> {
  _CopyWithStubImpl___Query___Q(this._res);

  TRes _res;

  call({
    Enum___Status? status,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'status'),
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
  ),
]);
const possibleTypesMap = <String, Set<String>>{};
