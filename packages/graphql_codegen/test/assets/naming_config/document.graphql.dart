import 'package:gql/ast.dart';

enum Enum___Status { Pending, Successful, Failure, InProgress, $unknown }

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
    if (!(other is Query___Q) || runtimeType != other.runtimeType) {
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
