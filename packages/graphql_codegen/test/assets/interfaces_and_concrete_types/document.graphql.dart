import 'package:gql/ast.dart';

class Query$FetchI {
  Query$FetchI({
    this.i1,
    required this.$__typename,
  });

  factory Query$FetchI.fromJson(Map<String, dynamic> json) {
    final l$i1 = json['i1'];
    final l$$__typename = json['__typename'];
    return Query$FetchI(
      i1: l$i1 == null
          ? null
          : Query$FetchI$i1.fromJson((l$i1 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchI$i1? i1;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i1 = i1;
    _resultData['i1'] = l$i1?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i1 = i1;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$i1,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i1 = i1;
    final lOther$i1 = other.i1;
    if (l$i1 != lOther$i1) {
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

extension UtilityExtension$Query$FetchI on Query$FetchI {
  CopyWith$Query$FetchI<Query$FetchI> get copyWith => CopyWith$Query$FetchI(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI<TRes> {
  factory CopyWith$Query$FetchI(
    Query$FetchI instance,
    TRes Function(Query$FetchI) then,
  ) = _CopyWithImpl$Query$FetchI;

  factory CopyWith$Query$FetchI.stub(TRes res) = _CopyWithStubImpl$Query$FetchI;

  TRes call({
    Query$FetchI$i1? i1,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1<TRes> get i1;
}

class _CopyWithImpl$Query$FetchI<TRes> implements CopyWith$Query$FetchI<TRes> {
  _CopyWithImpl$Query$FetchI(
    this._instance,
    this._then,
  );

  final Query$FetchI _instance;

  final TRes Function(Query$FetchI) _then;

  static const _undefined = {};

  TRes call({
    Object? i1 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI(
        i1: i1 == _undefined ? _instance.i1 : (i1 as Query$FetchI$i1?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1<TRes> get i1 {
    final local$i1 = _instance.i1;
    return local$i1 == null
        ? CopyWith$Query$FetchI$i1.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1(local$i1, (e) => call(i1: e));
  }
}

class _CopyWithStubImpl$Query$FetchI<TRes>
    implements CopyWith$Query$FetchI<TRes> {
  _CopyWithStubImpl$Query$FetchI(this._res);

  TRes _res;

  call({
    Query$FetchI$i1? i1,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1<TRes> get i1 => CopyWith$Query$FetchI$i1.stub(_res);
}

const documentNodeQueryFetchI = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchI'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'i1'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'i2'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'field'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'T1'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'i2c'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'field'),
                    alias: null,
                    arguments: [],
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
                name: NameNode(value: 'i2'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'field'),
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
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'T2'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'field'),
                        alias: null,
                        arguments: [],
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

class Query$FetchI$i1 {
  Query$FetchI$i1({
    this.i2,
    required this.$__typename,
  });

  factory Query$FetchI$i1.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return Query$FetchI$i1$$T1.fromJson(json);

      default:
        final l$i2 = json['i2'];
        final l$$__typename = json['__typename'];
        return Query$FetchI$i1(
          i2: l$i2 == null
              ? null
              : Query$FetchI$i1$i2.fromJson((l$i2 as Map<String, dynamic>)),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final Query$FetchI$i1$i2? i2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i2 = i2;
    _resultData['i2'] = l$i2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$i2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i2 = i2;
    final lOther$i2 = other.i2;
    if (l$i2 != lOther$i2) {
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

extension UtilityExtension$Query$FetchI$i1 on Query$FetchI$i1 {
  CopyWith$Query$FetchI$i1<Query$FetchI$i1> get copyWith =>
      CopyWith$Query$FetchI$i1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1<TRes> {
  factory CopyWith$Query$FetchI$i1(
    Query$FetchI$i1 instance,
    TRes Function(Query$FetchI$i1) then,
  ) = _CopyWithImpl$Query$FetchI$i1;

  factory CopyWith$Query$FetchI$i1.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1;

  TRes call({
    Query$FetchI$i1$i2? i2,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1$i2<TRes> get i2;
}

class _CopyWithImpl$Query$FetchI$i1<TRes>
    implements CopyWith$Query$FetchI$i1<TRes> {
  _CopyWithImpl$Query$FetchI$i1(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1 _instance;

  final TRes Function(Query$FetchI$i1) _then;

  static const _undefined = {};

  TRes call({
    Object? i2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1(
        i2: i2 == _undefined ? _instance.i2 : (i2 as Query$FetchI$i1$i2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1$i2<TRes> get i2 {
    final local$i2 = _instance.i2;
    return local$i2 == null
        ? CopyWith$Query$FetchI$i1$i2.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$i2(local$i2, (e) => call(i2: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1<TRes>
    implements CopyWith$Query$FetchI$i1<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$i2? i2,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$i2<TRes> get i2 =>
      CopyWith$Query$FetchI$i1$i2.stub(_res);
}

class Query$FetchI$i1$i2 {
  Query$FetchI$i1$i2({
    this.field,
    required this.$__typename,
  });

  factory Query$FetchI$i1$i2.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$i2(
      field: l$field == null
          ? null
          : Query$FetchI$i1$i2$field.fromJson(
              (l$field as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchI$i1$i2$field? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$field,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$i2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

extension UtilityExtension$Query$FetchI$i1$i2 on Query$FetchI$i1$i2 {
  CopyWith$Query$FetchI$i1$i2<Query$FetchI$i1$i2> get copyWith =>
      CopyWith$Query$FetchI$i1$i2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1$i2<TRes> {
  factory CopyWith$Query$FetchI$i1$i2(
    Query$FetchI$i1$i2 instance,
    TRes Function(Query$FetchI$i1$i2) then,
  ) = _CopyWithImpl$Query$FetchI$i1$i2;

  factory CopyWith$Query$FetchI$i1$i2.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$i2;

  TRes call({
    Query$FetchI$i1$i2$field? field,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1$i2$field<TRes> get field;
}

class _CopyWithImpl$Query$FetchI$i1$i2<TRes>
    implements CopyWith$Query$FetchI$i1$i2<TRes> {
  _CopyWithImpl$Query$FetchI$i1$i2(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$i2 _instance;

  final TRes Function(Query$FetchI$i1$i2) _then;

  static const _undefined = {};

  TRes call({
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$i2(
        field: field == _undefined
            ? _instance.field
            : (field as Query$FetchI$i1$i2$field?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1$i2$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$FetchI$i1$i2$field.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$i2$field(local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1$i2<TRes>
    implements CopyWith$Query$FetchI$i1$i2<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$i2(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$i2$field? field,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$i2$field<TRes> get field =>
      CopyWith$Query$FetchI$i1$i2$field.stub(_res);
}

class Query$FetchI$i1$i2$field {
  Query$FetchI$i1$i2$field({
    this.name,
    required this.$__typename,
  });

  factory Query$FetchI$i1$i2$field.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$i2$field(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
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
    if (!(other is Query$FetchI$i1$i2$field) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchI$i1$i2$field
    on Query$FetchI$i1$i2$field {
  CopyWith$Query$FetchI$i1$i2$field<Query$FetchI$i1$i2$field> get copyWith =>
      CopyWith$Query$FetchI$i1$i2$field(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1$i2$field<TRes> {
  factory CopyWith$Query$FetchI$i1$i2$field(
    Query$FetchI$i1$i2$field instance,
    TRes Function(Query$FetchI$i1$i2$field) then,
  ) = _CopyWithImpl$Query$FetchI$i1$i2$field;

  factory CopyWith$Query$FetchI$i1$i2$field.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$i2$field;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchI$i1$i2$field<TRes>
    implements CopyWith$Query$FetchI$i1$i2$field<TRes> {
  _CopyWithImpl$Query$FetchI$i1$i2$field(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$i2$field _instance;

  final TRes Function(Query$FetchI$i1$i2$field) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$i2$field(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchI$i1$i2$field<TRes>
    implements CopyWith$Query$FetchI$i1$i2$field<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$i2$field(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchI$i1$$T1 implements Query$FetchI$i1 {
  Query$FetchI$i1$$T1({
    this.i2,
    required this.$__typename,
    this.i2c,
  });

  factory Query$FetchI$i1$$T1.fromJson(Map<String, dynamic> json) {
    final l$i2 = json['i2'];
    final l$$__typename = json['__typename'];
    final l$i2c = json['i2c'];
    return Query$FetchI$i1$$T1(
      i2: l$i2 == null
          ? null
          : Query$FetchI$i1$$T1$i2.fromJson((l$i2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      i2c: l$i2c == null
          ? null
          : Query$FetchI$i1$$T1$i2c.fromJson((l$i2c as Map<String, dynamic>)),
    );
  }

  final Query$FetchI$i1$$T1$i2? i2;

  final String $__typename;

  final Query$FetchI$i1$$T1$i2c? i2c;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i2 = i2;
    _resultData['i2'] = l$i2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$i2c = i2c;
    _resultData['i2c'] = l$i2c?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i2 = i2;
    final l$$__typename = $__typename;
    final l$i2c = i2c;
    return Object.hashAll([
      l$i2,
      l$$__typename,
      l$i2c,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i2 = i2;
    final lOther$i2 = other.i2;
    if (l$i2 != lOther$i2) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$i2c = i2c;
    final lOther$i2c = other.i2c;
    if (l$i2c != lOther$i2c) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchI$i1$$T1 on Query$FetchI$i1$$T1 {
  CopyWith$Query$FetchI$i1$$T1<Query$FetchI$i1$$T1> get copyWith =>
      CopyWith$Query$FetchI$i1$$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1$$T1<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1(
    Query$FetchI$i1$$T1 instance,
    TRes Function(Query$FetchI$i1$$T1) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1;

  factory CopyWith$Query$FetchI$i1$$T1.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1;

  TRes call({
    Query$FetchI$i1$$T1$i2? i2,
    String? $__typename,
    Query$FetchI$i1$$T1$i2c? i2c,
  });
  CopyWith$Query$FetchI$i1$$T1$i2<TRes> get i2;
  CopyWith$Query$FetchI$i1$$T1$i2c<TRes> get i2c;
}

class _CopyWithImpl$Query$FetchI$i1$$T1<TRes>
    implements CopyWith$Query$FetchI$i1$$T1<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1 _instance;

  final TRes Function(Query$FetchI$i1$$T1) _then;

  static const _undefined = {};

  TRes call({
    Object? i2 = _undefined,
    Object? $__typename = _undefined,
    Object? i2c = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1(
        i2: i2 == _undefined ? _instance.i2 : (i2 as Query$FetchI$i1$$T1$i2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        i2c: i2c == _undefined
            ? _instance.i2c
            : (i2c as Query$FetchI$i1$$T1$i2c?),
      ));
  CopyWith$Query$FetchI$i1$$T1$i2<TRes> get i2 {
    final local$i2 = _instance.i2;
    return local$i2 == null
        ? CopyWith$Query$FetchI$i1$$T1$i2.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$$T1$i2(local$i2, (e) => call(i2: e));
  }

  CopyWith$Query$FetchI$i1$$T1$i2c<TRes> get i2c {
    final local$i2c = _instance.i2c;
    return local$i2c == null
        ? CopyWith$Query$FetchI$i1$$T1$i2c.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$$T1$i2c(local$i2c, (e) => call(i2c: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1<TRes>
    implements CopyWith$Query$FetchI$i1$$T1<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$$T1$i2? i2,
    String? $__typename,
    Query$FetchI$i1$$T1$i2c? i2c,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$$T1$i2<TRes> get i2 =>
      CopyWith$Query$FetchI$i1$$T1$i2.stub(_res);
  CopyWith$Query$FetchI$i1$$T1$i2c<TRes> get i2c =>
      CopyWith$Query$FetchI$i1$$T1$i2c.stub(_res);
}

class Query$FetchI$i1$$T1$i2c {
  Query$FetchI$i1$$T1$i2c({
    this.field,
    required this.$__typename,
  });

  factory Query$FetchI$i1$$T1$i2c.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$$T1$i2c(
      field: l$field == null
          ? null
          : Query$FetchI$i1$$T1$i2c$field.fromJson(
              (l$field as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchI$i1$$T1$i2c$field? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$field,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$$T1$i2c) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2c on Query$FetchI$i1$$T1$i2c {
  CopyWith$Query$FetchI$i1$$T1$i2c<Query$FetchI$i1$$T1$i2c> get copyWith =>
      CopyWith$Query$FetchI$i1$$T1$i2c(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2c<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2c(
    Query$FetchI$i1$$T1$i2c instance,
    TRes Function(Query$FetchI$i1$$T1$i2c) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2c;

  factory CopyWith$Query$FetchI$i1$$T1$i2c.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c;

  TRes call({
    Query$FetchI$i1$$T1$i2c$field? field,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> get field;
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2c<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2c<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2c(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2c _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2c) _then;

  static const _undefined = {};

  TRes call({
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2c(
        field: field == _undefined
            ? _instance.field
            : (field as Query$FetchI$i1$$T1$i2c$field?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$FetchI$i1$$T1$i2c$field.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$$T1$i2c$field(
            local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2c<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$$T1$i2c$field? field,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> get field =>
      CopyWith$Query$FetchI$i1$$T1$i2c$field.stub(_res);
}

class Query$FetchI$i1$$T1$i2c$field {
  Query$FetchI$i1$$T1$i2c$field({
    this.age,
    required this.$__typename,
  });

  factory Query$FetchI$i1$$T1$i2c$field.fromJson(Map<String, dynamic> json) {
    final l$age = json['age'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$$T1$i2c$field(
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
    if (!(other is Query$FetchI$i1$$T1$i2c$field) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2c$field
    on Query$FetchI$i1$$T1$i2c$field {
  CopyWith$Query$FetchI$i1$$T1$i2c$field<Query$FetchI$i1$$T1$i2c$field>
      get copyWith => CopyWith$Query$FetchI$i1$$T1$i2c$field(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2c$field(
    Query$FetchI$i1$$T1$i2c$field instance,
    TRes Function(Query$FetchI$i1$$T1$i2c$field) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2c$field;

  factory CopyWith$Query$FetchI$i1$$T1$i2c$field.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c$field;

  TRes call({
    int? age,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2c$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2c$field(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2c$field _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2c$field) _then;

  static const _undefined = {};

  TRes call({
    Object? age = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2c$field(
        age: age == _undefined ? _instance.age : (age as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2c$field<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2c$field(this._res);

  TRes _res;

  call({
    int? age,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchI$i1$$T1$i2 implements Query$FetchI$i1$i2 {
  Query$FetchI$i1$$T1$i2({
    this.field,
    required this.$__typename,
  });

  factory Query$FetchI$i1$$T1$i2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T2":
        return Query$FetchI$i1$$T1$i2$$T2.fromJson(json);

      default:
        final l$field = json['field'];
        final l$$__typename = json['__typename'];
        return Query$FetchI$i1$$T1$i2(
          field: l$field == null
              ? null
              : Query$FetchI$i1$$T1$i2$field.fromJson(
                  (l$field as Map<String, dynamic>)),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final Query$FetchI$i1$$T1$i2$field? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$field,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$$T1$i2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2 on Query$FetchI$i1$$T1$i2 {
  CopyWith$Query$FetchI$i1$$T1$i2<Query$FetchI$i1$$T1$i2> get copyWith =>
      CopyWith$Query$FetchI$i1$$T1$i2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2(
    Query$FetchI$i1$$T1$i2 instance,
    TRes Function(Query$FetchI$i1$$T1$i2) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2;

  factory CopyWith$Query$FetchI$i1$$T1$i2.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2;

  TRes call({
    Query$FetchI$i1$$T1$i2$field? field,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> get field;
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2 _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2) _then;

  static const _undefined = {};

  TRes call({
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2(
        field: field == _undefined
            ? _instance.field
            : (field as Query$FetchI$i1$$T1$i2$field?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$FetchI$i1$$T1$i2$field.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$$T1$i2$field(
            local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$$T1$i2$field? field,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> get field =>
      CopyWith$Query$FetchI$i1$$T1$i2$field.stub(_res);
}

class Query$FetchI$i1$$T1$i2$field implements Query$FetchI$i1$i2$field {
  Query$FetchI$i1$$T1$i2$field({
    this.name,
    required this.$__typename,
  });

  factory Query$FetchI$i1$$T1$i2$field.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$$T1$i2$field(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
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
    if (!(other is Query$FetchI$i1$$T1$i2$field) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2$field
    on Query$FetchI$i1$$T1$i2$field {
  CopyWith$Query$FetchI$i1$$T1$i2$field<Query$FetchI$i1$$T1$i2$field>
      get copyWith => CopyWith$Query$FetchI$i1$$T1$i2$field(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2$field(
    Query$FetchI$i1$$T1$i2$field instance,
    TRes Function(Query$FetchI$i1$$T1$i2$field) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2$field;

  factory CopyWith$Query$FetchI$i1$$T1$i2$field.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$field;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2$field(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2$field _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2$field) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2$field(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$field<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$field(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchI$i1$$T1$i2$$T2 implements Query$FetchI$i1$$T1$i2 {
  Query$FetchI$i1$$T1$i2$$T2({
    this.field,
    required this.$__typename,
  });

  factory Query$FetchI$i1$$T1$i2$$T2.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Query$FetchI$i1$$T1$i2$$T2(
      field: l$field == null
          ? null
          : Query$FetchI$i1$$T1$i2$$T2$field.fromJson(
              (l$field as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchI$i1$$T1$i2$$T2$field? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$field,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$$T1$i2$$T2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

extension UtilityExtension$Query$FetchI$i1$$T1$i2$$T2
    on Query$FetchI$i1$$T1$i2$$T2 {
  CopyWith$Query$FetchI$i1$$T1$i2$$T2<Query$FetchI$i1$$T1$i2$$T2>
      get copyWith => CopyWith$Query$FetchI$i1$$T1$i2$$T2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2$$T2<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2$$T2(
    Query$FetchI$i1$$T1$i2$$T2 instance,
    TRes Function(Query$FetchI$i1$$T1$i2$$T2) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2;

  factory CopyWith$Query$FetchI$i1$$T1$i2$$T2.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2;

  TRes call({
    Query$FetchI$i1$$T1$i2$$T2$field? field,
    String? $__typename,
  });
  CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> get field;
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$$T2<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2$$T2 _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2$$T2) _then;

  static const _undefined = {};

  TRes call({
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2$$T2(
        field: field == _undefined
            ? _instance.field
            : (field as Query$FetchI$i1$$T1$i2$$T2$field?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$FetchI$i1$$T1$i2$$T2$field.stub(_then(_instance))
        : CopyWith$Query$FetchI$i1$$T1$i2$$T2$field(
            local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$$T2<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2(this._res);

  TRes _res;

  call({
    Query$FetchI$i1$$T1$i2$$T2$field? field,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> get field =>
      CopyWith$Query$FetchI$i1$$T1$i2$$T2$field.stub(_res);
}

class Query$FetchI$i1$$T1$i2$$T2$field implements Query$FetchI$i1$$T1$i2$field {
  Query$FetchI$i1$$T1$i2$$T2$field({
    this.name,
    required this.$__typename,
    this.age,
  });

  factory Query$FetchI$i1$$T1$i2$$T2$field.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$age = json['age'];
    return Query$FetchI$i1$$T1$i2$$T2$field(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
      age: (l$age as int?),
    );
  }

  final String? name;

  final String $__typename;

  final int? age;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$age = age;
    _resultData['age'] = l$age;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$age = age;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$age,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchI$i1$$T1$i2$$T2$field) ||
        runtimeType != other.runtimeType) {
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchI$i1$$T1$i2$$T2$field
    on Query$FetchI$i1$$T1$i2$$T2$field {
  CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<Query$FetchI$i1$$T1$i2$$T2$field>
      get copyWith => CopyWith$Query$FetchI$i1$$T1$i2$$T2$field(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> {
  factory CopyWith$Query$FetchI$i1$$T1$i2$$T2$field(
    Query$FetchI$i1$$T1$i2$$T2$field instance,
    TRes Function(Query$FetchI$i1$$T1$i2$$T2$field) then,
  ) = _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2$field;

  factory CopyWith$Query$FetchI$i1$$T1$i2$$T2$field.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2$field;

  TRes call({
    String? name,
    String? $__typename,
    int? age,
  });
}

class _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> {
  _CopyWithImpl$Query$FetchI$i1$$T1$i2$$T2$field(
    this._instance,
    this._then,
  );

  final Query$FetchI$i1$$T1$i2$$T2$field _instance;

  final TRes Function(Query$FetchI$i1$$T1$i2$$T2$field) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? age = _undefined,
  }) =>
      _then(Query$FetchI$i1$$T1$i2$$T2$field(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        age: age == _undefined ? _instance.age : (age as int?),
      ));
}

class _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2$field<TRes>
    implements CopyWith$Query$FetchI$i1$$T1$i2$$T2$field<TRes> {
  _CopyWithStubImpl$Query$FetchI$i1$$T1$i2$$T2$field(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    int? age,
  }) =>
      _res;
}

const possibleTypesMap = {
  'IField': {'TField'},
  'I1': {'T1'},
  'I2': {'T2'},
};
