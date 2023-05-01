import 'package:gql/ast.dart';

class Fragment$F0 {
  Fragment$F0({this.name01});

  factory Fragment$F0.fromJson(Map<String, dynamic> json) {
    final l$name01 = json['name01'];
    return Fragment$F0(name01: (l$name01 as String?));
  }

  final String? name01;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name01 = name01;
    _resultData['name01'] = l$name01;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name01 = name01;
    return Object.hashAll([l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F0) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F0 on Fragment$F0 {
  CopyWith$Fragment$F0<Fragment$F0> get copyWith => CopyWith$Fragment$F0(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F0<TRes> {
  factory CopyWith$Fragment$F0(
    Fragment$F0 instance,
    TRes Function(Fragment$F0) then,
  ) = _CopyWithImpl$Fragment$F0;

  factory CopyWith$Fragment$F0.stub(TRes res) = _CopyWithStubImpl$Fragment$F0;

  TRes call({String? name01});
}

class _CopyWithImpl$Fragment$F0<TRes> implements CopyWith$Fragment$F0<TRes> {
  _CopyWithImpl$Fragment$F0(
    this._instance,
    this._then,
  );

  final Fragment$F0 _instance;

  final TRes Function(Fragment$F0) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name01 = _undefined}) => _then(Fragment$F0(
      name01: name01 == _undefined ? _instance.name01 : (name01 as String?)));
}

class _CopyWithStubImpl$Fragment$F0<TRes>
    implements CopyWith$Fragment$F0<TRes> {
  _CopyWithStubImpl$Fragment$F0(this._res);

  TRes _res;

  call({String? name01}) => _res;
}

const fragmentDefinitionF0 = FragmentDefinitionNode(
  name: NameNode(value: 'F0'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'I1'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'name01'),
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentF0 = DocumentNode(definitions: [
  fragmentDefinitionF0,
]);

class Fragment$F0$$T1 implements Fragment$F0 {
  Fragment$F0$$T1({this.name01});

  factory Fragment$F0$$T1.fromJson(Map<String, dynamic> json) {
    final l$name01 = json['name01'];
    return Fragment$F0$$T1(name01: (l$name01 as String?));
  }

  final String? name01;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name01 = name01;
    _resultData['name01'] = l$name01;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name01 = name01;
    return Object.hashAll([l$name01]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F0$$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F0$$T1 on Fragment$F0$$T1 {
  CopyWith$Fragment$F0$$T1<Fragment$F0$$T1> get copyWith =>
      CopyWith$Fragment$F0$$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F0$$T1<TRes> {
  factory CopyWith$Fragment$F0$$T1(
    Fragment$F0$$T1 instance,
    TRes Function(Fragment$F0$$T1) then,
  ) = _CopyWithImpl$Fragment$F0$$T1;

  factory CopyWith$Fragment$F0$$T1.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F0$$T1;

  TRes call({String? name01});
}

class _CopyWithImpl$Fragment$F0$$T1<TRes>
    implements CopyWith$Fragment$F0$$T1<TRes> {
  _CopyWithImpl$Fragment$F0$$T1(
    this._instance,
    this._then,
  );

  final Fragment$F0$$T1 _instance;

  final TRes Function(Fragment$F0$$T1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name01 = _undefined}) => _then(Fragment$F0$$T1(
      name01: name01 == _undefined ? _instance.name01 : (name01 as String?)));
}

class _CopyWithStubImpl$Fragment$F0$$T1<TRes>
    implements CopyWith$Fragment$F0$$T1<TRes> {
  _CopyWithStubImpl$Fragment$F0$$T1(this._res);

  TRes _res;

  call({String? name01}) => _res;
}

class Fragment$F1 {
  Fragment$F1({this.size2});

  factory Fragment$F1.fromJson(Map<String, dynamic> json) {
    final l$size2 = json['size2'];
    return Fragment$F1(size2: (l$size2 as int?));
  }

  final int? size2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size2 = size2;
    _resultData['size2'] = l$size2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size2 = size2;
    return Object.hashAll([l$size2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F1 on Fragment$F1 {
  CopyWith$Fragment$F1<Fragment$F1> get copyWith => CopyWith$Fragment$F1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1<TRes> {
  factory CopyWith$Fragment$F1(
    Fragment$F1 instance,
    TRes Function(Fragment$F1) then,
  ) = _CopyWithImpl$Fragment$F1;

  factory CopyWith$Fragment$F1.stub(TRes res) = _CopyWithStubImpl$Fragment$F1;

  TRes call({int? size2});
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(
    this._instance,
    this._then,
  );

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? size2 = _undefined}) => _then(Fragment$F1(
      size2: size2 == _undefined ? _instance.size2 : (size2 as int?)));
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({int? size2}) => _res;
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
  name: NameNode(value: 'F1'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'I2'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'size'),
      alias: NameNode(value: 'size2'),
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

class Fragment$F1$$T1 implements Fragment$F1 {
  Fragment$F1$$T1({this.size2});

  factory Fragment$F1$$T1.fromJson(Map<String, dynamic> json) {
    final l$size2 = json['size2'];
    return Fragment$F1$$T1(size2: (l$size2 as int?));
  }

  final int? size2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size2 = size2;
    _resultData['size2'] = l$size2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size2 = size2;
    return Object.hashAll([l$size2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1$$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F1$$T1 on Fragment$F1$$T1 {
  CopyWith$Fragment$F1$$T1<Fragment$F1$$T1> get copyWith =>
      CopyWith$Fragment$F1$$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1$$T1<TRes> {
  factory CopyWith$Fragment$F1$$T1(
    Fragment$F1$$T1 instance,
    TRes Function(Fragment$F1$$T1) then,
  ) = _CopyWithImpl$Fragment$F1$$T1;

  factory CopyWith$Fragment$F1$$T1.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F1$$T1;

  TRes call({int? size2});
}

class _CopyWithImpl$Fragment$F1$$T1<TRes>
    implements CopyWith$Fragment$F1$$T1<TRes> {
  _CopyWithImpl$Fragment$F1$$T1(
    this._instance,
    this._then,
  );

  final Fragment$F1$$T1 _instance;

  final TRes Function(Fragment$F1$$T1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? size2 = _undefined}) => _then(Fragment$F1$$T1(
      size2: size2 == _undefined ? _instance.size2 : (size2 as int?)));
}

class _CopyWithStubImpl$Fragment$F1$$T1<TRes>
    implements CopyWith$Fragment$F1$$T1<TRes> {
  _CopyWithStubImpl$Fragment$F1$$T1(this._res);

  TRes _res;

  call({int? size2}) => _res;
}

class Fragment$F2 {
  Fragment$F2({this.name2});

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$name2 = json['name2'];
    return Fragment$F2(name2: (l$name2 as String?));
  }

  final String? name2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name2 = name2;
    _resultData['name2'] = l$name2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name2 = name2;
    return Object.hashAll([l$name2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F2 on Fragment$F2 {
  CopyWith$Fragment$F2<Fragment$F2> get copyWith => CopyWith$Fragment$F2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F2<TRes> {
  factory CopyWith$Fragment$F2(
    Fragment$F2 instance,
    TRes Function(Fragment$F2) then,
  ) = _CopyWithImpl$Fragment$F2;

  factory CopyWith$Fragment$F2.stub(TRes res) = _CopyWithStubImpl$Fragment$F2;

  TRes call({String? name2});
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(
    this._instance,
    this._then,
  );

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name2 = _undefined}) => _then(Fragment$F2(
      name2: name2 == _undefined ? _instance.name2 : (name2 as String?)));
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({String? name2}) => _res;
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
  name: NameNode(value: 'F2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'T1'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'name2'),
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

class Fragment$F3 {
  Fragment$F3({this.value});

  factory Fragment$F3.fromJson(Map<String, dynamic> json) {
    final l$value = json['value'];
    return Fragment$F3(value: (l$value as num?)?.toDouble());
  }

  final double? value;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F3 on Fragment$F3 {
  CopyWith$Fragment$F3<Fragment$F3> get copyWith => CopyWith$Fragment$F3(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F3<TRes> {
  factory CopyWith$Fragment$F3(
    Fragment$F3 instance,
    TRes Function(Fragment$F3) then,
  ) = _CopyWithImpl$Fragment$F3;

  factory CopyWith$Fragment$F3.stub(TRes res) = _CopyWithStubImpl$Fragment$F3;

  TRes call({double? value});
}

class _CopyWithImpl$Fragment$F3<TRes> implements CopyWith$Fragment$F3<TRes> {
  _CopyWithImpl$Fragment$F3(
    this._instance,
    this._then,
  );

  final Fragment$F3 _instance;

  final TRes Function(Fragment$F3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Fragment$F3(
      value: value == _undefined ? _instance.value : (value as double?)));
}

class _CopyWithStubImpl$Fragment$F3<TRes>
    implements CopyWith$Fragment$F3<TRes> {
  _CopyWithStubImpl$Fragment$F3(this._res);

  TRes _res;

  call({double? value}) => _res;
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
  name: NameNode(value: 'F3'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'I3'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'value'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
]);

class Query$Q {
  Query$Q({this.field});

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    return Query$Q(
        field: l$field == null
            ? null
            : Query$Q$field.fromJson((l$field as Map<String, dynamic>)));
  }

  final Query$Q$field? field;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    return Object.hashAll([l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
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

  TRes call({Query$Q$field? field});
  CopyWith$Query$Q$field<TRes> get field;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? field = _undefined}) => _then(Query$Q(
      field:
          field == _undefined ? _instance.field : (field as Query$Q$field?)));
  CopyWith$Query$Q$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$Q$field.stub(_then(_instance))
        : CopyWith$Query$Q$field(local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Query$Q$field? field}) => _res;
  CopyWith$Query$Q$field<TRes> get field => CopyWith$Query$Q$field.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'field'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'I1'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: NameNode(value: 'name0'),
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'F0'),
            directives: [],
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'I2'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'size'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'I3'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'F1'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'F2'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'F3'),
            directives: [],
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionF0,
  fragmentDefinitionF1,
  fragmentDefinitionF2,
  fragmentDefinitionF3,
]);

class Query$Q$field implements Fragment$F0 {
  Query$Q$field({
    required this.$__typename,
    this.name0,
    this.name01,
  });

  factory Query$Q$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "T1":
        return Query$Q$field$$T1.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$name0 = json['name0'];
        final l$name01 = json['name01'];
        return Query$Q$field(
          $__typename: (l$$__typename as String),
          name0: (l$name0 as String?),
          name01: (l$name01 as String?),
        );
    }
  }

  final String $__typename;

  final String? name0;

  final String? name01;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name0 = name0;
    _resultData['name0'] = l$name0;
    final l$name01 = name01;
    _resultData['name01'] = l$name01;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name0 = name0;
    final l$name01 = name01;
    return Object.hashAll([
      l$$__typename,
      l$name0,
      l$name01,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$field) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$name0 = name0;
    final lOther$name0 = other.name0;
    if (l$name0 != lOther$name0) {
      return false;
    }
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$field on Query$Q$field {
  CopyWith$Query$Q$field<Query$Q$field> get copyWith => CopyWith$Query$Q$field(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Q$field$$T1) t1,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "T1":
        return t1(this as Query$Q$field$$T1);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Q$field$$T1)? t1,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "T1":
        if (t1 != null) {
          return t1(this as Query$Q$field$$T1);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Q$field<TRes> {
  factory CopyWith$Query$Q$field(
    Query$Q$field instance,
    TRes Function(Query$Q$field) then,
  ) = _CopyWithImpl$Query$Q$field;

  factory CopyWith$Query$Q$field.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$field;

  TRes call({
    String? $__typename,
    String? name0,
    String? name01,
  });
}

class _CopyWithImpl$Query$Q$field<TRes>
    implements CopyWith$Query$Q$field<TRes> {
  _CopyWithImpl$Query$Q$field(
    this._instance,
    this._then,
  );

  final Query$Q$field _instance;

  final TRes Function(Query$Q$field) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name0 = _undefined,
    Object? name01 = _undefined,
  }) =>
      _then(Query$Q$field(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name0: name0 == _undefined ? _instance.name0 : (name0 as String?),
        name01: name01 == _undefined ? _instance.name01 : (name01 as String?),
      ));
}

class _CopyWithStubImpl$Query$Q$field<TRes>
    implements CopyWith$Query$Q$field<TRes> {
  _CopyWithStubImpl$Query$Q$field(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name0,
    String? name01,
  }) =>
      _res;
}

class Query$Q$field$$T1
    implements Fragment$F0$$T1, Fragment$F1$$T1, Fragment$F2, Query$Q$field {
  Query$Q$field$$T1({
    this.size,
    this.name,
    this.$__typename = 'T1',
    this.name0,
    this.name01,
    this.size2,
    this.name2,
  });

  factory Query$Q$field$$T1.fromJson(Map<String, dynamic> json) {
    final l$size = json['size'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$name0 = json['name0'];
    final l$name01 = json['name01'];
    final l$size2 = json['size2'];
    final l$name2 = json['name2'];
    return Query$Q$field$$T1(
      size: (l$size as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
      name0: (l$name0 as String?),
      name01: (l$name01 as String?),
      size2: (l$size2 as int?),
      name2: (l$name2 as String?),
    );
  }

  final int? size;

  final String? name;

  final String $__typename;

  final String? name0;

  final String? name01;

  final int? size2;

  final String? name2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size = size;
    _resultData['size'] = l$size;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name0 = name0;
    _resultData['name0'] = l$name0;
    final l$name01 = name01;
    _resultData['name01'] = l$name01;
    final l$size2 = size2;
    _resultData['size2'] = l$size2;
    final l$name2 = name2;
    _resultData['name2'] = l$name2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size = size;
    final l$name = name;
    final l$$__typename = $__typename;
    final l$name0 = name0;
    final l$name01 = name01;
    final l$size2 = size2;
    final l$name2 = name2;
    return Object.hashAll([
      l$size,
      l$name,
      l$$__typename,
      l$name0,
      l$name01,
      l$size2,
      l$name2,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$field$$T1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
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
    final l$name0 = name0;
    final lOther$name0 = other.name0;
    if (l$name0 != lOther$name0) {
      return false;
    }
    final l$name01 = name01;
    final lOther$name01 = other.name01;
    if (l$name01 != lOther$name01) {
      return false;
    }
    final l$size2 = size2;
    final lOther$size2 = other.size2;
    if (l$size2 != lOther$size2) {
      return false;
    }
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$field$$T1 on Query$Q$field$$T1 {
  CopyWith$Query$Q$field$$T1<Query$Q$field$$T1> get copyWith =>
      CopyWith$Query$Q$field$$T1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$field$$T1<TRes> {
  factory CopyWith$Query$Q$field$$T1(
    Query$Q$field$$T1 instance,
    TRes Function(Query$Q$field$$T1) then,
  ) = _CopyWithImpl$Query$Q$field$$T1;

  factory CopyWith$Query$Q$field$$T1.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$field$$T1;

  TRes call({
    int? size,
    String? name,
    String? $__typename,
    String? name0,
    String? name01,
    int? size2,
    String? name2,
  });
}

class _CopyWithImpl$Query$Q$field$$T1<TRes>
    implements CopyWith$Query$Q$field$$T1<TRes> {
  _CopyWithImpl$Query$Q$field$$T1(
    this._instance,
    this._then,
  );

  final Query$Q$field$$T1 _instance;

  final TRes Function(Query$Q$field$$T1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? name0 = _undefined,
    Object? name01 = _undefined,
    Object? size2 = _undefined,
    Object? name2 = _undefined,
  }) =>
      _then(Query$Q$field$$T1(
        size: size == _undefined ? _instance.size : (size as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name0: name0 == _undefined ? _instance.name0 : (name0 as String?),
        name01: name01 == _undefined ? _instance.name01 : (name01 as String?),
        size2: size2 == _undefined ? _instance.size2 : (size2 as int?),
        name2: name2 == _undefined ? _instance.name2 : (name2 as String?),
      ));
}

class _CopyWithStubImpl$Query$Q$field$$T1<TRes>
    implements CopyWith$Query$Q$field$$T1<TRes> {
  _CopyWithStubImpl$Query$Q$field$$T1(this._res);

  TRes _res;

  call({
    int? size,
    String? name,
    String? $__typename,
    String? name0,
    String? name01,
    int? size2,
    String? name2,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'I1': {'T1'},
  'I2': {'T1'},
};
