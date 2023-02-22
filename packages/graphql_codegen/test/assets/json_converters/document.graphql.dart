import 'package:gql/ast.dart';

class Query$Q {
  Query$Q({
    this.mFloat,
    required this.float,
    required this.$int,
    this.mInt,
    required this.dt,
    this.mDt,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$mFloat = json['mFloat'];
    final l$float = json['float'];
    final l$$int = json['int'];
    final l$mInt = json['mInt'];
    final l$dt = json['dt'];
    final l$mDt = json['mDt'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      mFloat: (l$mFloat as num?)?.toDouble(),
      float: (l$float as num).toDouble(),
      $int: (l$$int as int),
      mInt: (l$mInt as int?),
      dt: DateTime.parse((l$dt as String)),
      mDt: l$mDt == null ? null : DateTime.parse((l$mDt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double? mFloat;

  final double float;

  final int $int;

  final int? mInt;

  final DateTime dt;

  final DateTime? mDt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mFloat = mFloat;
    _resultData['mFloat'] = l$mFloat;
    final l$float = float;
    _resultData['float'] = l$float;
    final l$$int = $int;
    _resultData['int'] = l$$int;
    final l$mInt = mInt;
    _resultData['mInt'] = l$mInt;
    final l$dt = dt;
    _resultData['dt'] = l$dt.toIso8601String();
    final l$mDt = mDt;
    _resultData['mDt'] = l$mDt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mFloat = mFloat;
    final l$float = float;
    final l$$int = $int;
    final l$mInt = mInt;
    final l$dt = dt;
    final l$mDt = mDt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mFloat,
      l$float,
      l$$int,
      l$mInt,
      l$dt,
      l$mDt,
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
    final l$mFloat = mFloat;
    final lOther$mFloat = other.mFloat;
    if (l$mFloat != lOther$mFloat) {
      return false;
    }
    final l$float = float;
    final lOther$float = other.float;
    if (l$float != lOther$float) {
      return false;
    }
    final l$$int = $int;
    final lOther$$int = other.$int;
    if (l$$int != lOther$$int) {
      return false;
    }
    final l$mInt = mInt;
    final lOther$mInt = other.mInt;
    if (l$mInt != lOther$mInt) {
      return false;
    }
    final l$dt = dt;
    final lOther$dt = other.dt;
    if (l$dt != lOther$dt) {
      return false;
    }
    final l$mDt = mDt;
    final lOther$mDt = other.mDt;
    if (l$mDt != lOther$mDt) {
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
    double? mFloat,
    double? float,
    int? $int,
    int? mInt,
    DateTime? dt,
    DateTime? mDt,
    String? $__typename,
  });
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
    Object? mFloat = _undefined,
    Object? float = _undefined,
    Object? $int = _undefined,
    Object? mInt = _undefined,
    Object? dt = _undefined,
    Object? mDt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        mFloat: mFloat == _undefined ? _instance.mFloat : (mFloat as double?),
        float: float == _undefined || float == null
            ? _instance.float
            : (float as double),
        $int:
            $int == _undefined || $int == null ? _instance.$int : ($int as int),
        mInt: mInt == _undefined ? _instance.mInt : (mInt as int?),
        dt: dt == _undefined || dt == null ? _instance.dt : (dt as DateTime),
        mDt: mDt == _undefined ? _instance.mDt : (mDt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    double? mFloat,
    double? float,
    int? $int,
    int? mInt,
    DateTime? dt,
    DateTime? mDt,
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
        name: NameNode(value: 'mFloat'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'float'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'int'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'mInt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'mDt'),
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
