import 'package:gql/ast.dart';

class Input$Input {
  factory Input$Input({bool? inputField}) => Input$Input._({
        if (inputField != null) r'inputField': inputField,
      });

  Input$Input._(this._$data);

  factory Input$Input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('inputField')) {
      final l$inputField = data['inputField'];
      result$data['inputField'] = (l$inputField as bool?);
    }
    return Input$Input._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get inputField => (_$data['inputField'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('inputField')) {
      final l$inputField = inputField;
      result$data['inputField'] = l$inputField;
    }
    return result$data;
  }

  CopyWith$Input$Input<Input$Input> get copyWith => CopyWith$Input$Input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Input) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$inputField = inputField;
    final lOther$inputField = other.inputField;
    if (_$data.containsKey('inputField') !=
        other._$data.containsKey('inputField')) {
      return false;
    }
    if (l$inputField != lOther$inputField) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$inputField = inputField;
    return Object.hashAll(
        [_$data.containsKey('inputField') ? l$inputField : const {}]);
  }
}

abstract class CopyWith$Input$Input<TRes> {
  factory CopyWith$Input$Input(
    Input$Input instance,
    TRes Function(Input$Input) then,
  ) = _CopyWithImpl$Input$Input;

  factory CopyWith$Input$Input.stub(TRes res) = _CopyWithStubImpl$Input$Input;

  TRes call({bool? inputField});
}

class _CopyWithImpl$Input$Input<TRes> implements CopyWith$Input$Input<TRes> {
  _CopyWithImpl$Input$Input(
    this._instance,
    this._then,
  );

  final Input$Input _instance;

  final TRes Function(Input$Input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? inputField = _undefined}) => _then(Input$Input._({
        ..._instance._$data,
        if (inputField != _undefined) 'inputField': (inputField as bool?),
      }));
}

class _CopyWithStubImpl$Input$Input<TRes>
    implements CopyWith$Input$Input<TRes> {
  _CopyWithStubImpl$Input$Input(this._res);

  TRes _res;

  call({bool? inputField}) => _res;
}

class Variables$Fragment$F1 {
  factory Variables$Fragment$F1({
    bool? i,
    required String name,
  }) =>
      Variables$Fragment$F1._({
        if (i != null) r'i': i,
        r'name': name,
      });

  Variables$Fragment$F1._(this._$data);

  factory Variables$Fragment$F1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('i')) {
      final l$i = data['i'];
      result$data['i'] = (l$i as bool?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Fragment$F1._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get i => (_$data['i'] as bool?);
  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('i')) {
      final l$i = i;
      result$data['i'] = l$i;
    }
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Fragment$F1<Variables$Fragment$F1> get copyWith =>
      CopyWith$Variables$Fragment$F1(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$F1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (_$data.containsKey('i') != other._$data.containsKey('i')) {
      return false;
    }
    if (l$i != lOther$i) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('i') ? l$i : const {},
      l$name,
    ]);
  }
}

abstract class CopyWith$Variables$Fragment$F1<TRes> {
  factory CopyWith$Variables$Fragment$F1(
    Variables$Fragment$F1 instance,
    TRes Function(Variables$Fragment$F1) then,
  ) = _CopyWithImpl$Variables$Fragment$F1;

  factory CopyWith$Variables$Fragment$F1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F1;

  TRes call({
    bool? i,
    String? name,
  });
}

class _CopyWithImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithImpl$Variables$Fragment$F1(
    this._instance,
    this._then,
  );

  final Variables$Fragment$F1 _instance;

  final TRes Function(Variables$Fragment$F1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? i = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Fragment$F1._({
        ..._instance._$data,
        if (i != _undefined) 'i': (i as bool?),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F1(this._res);

  TRes _res;

  call({
    bool? i,
    String? name,
  }) =>
      _res;
}

class Fragment$F1 {
  Fragment$F1({
    this.level1,
    this.$__typename = 'Query',
  });

  factory Fragment$F1.fromJson(Map<String, dynamic> json) {
    final l$level1 = json['level1'];
    final l$$__typename = json['__typename'];
    return Fragment$F1(
      level1: l$level1 == null
          ? null
          : Fragment$F1$level1.fromJson((l$level1 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F1$level1? level1;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level1 = level1;
    _resultData['level1'] = l$level1?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level1,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$level1 = level1;
    final lOther$level1 = other.level1;
    if (l$level1 != lOther$level1) {
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

  TRes call({
    Fragment$F1$level1? level1,
    String? $__typename,
  });
  CopyWith$Fragment$F1$level1<TRes> get level1;
}

class _CopyWithImpl$Fragment$F1<TRes> implements CopyWith$Fragment$F1<TRes> {
  _CopyWithImpl$Fragment$F1(
    this._instance,
    this._then,
  );

  final Fragment$F1 _instance;

  final TRes Function(Fragment$F1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level1 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F1(
        level1: level1 == _undefined
            ? _instance.level1
            : (level1 as Fragment$F1$level1?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F1$level1<TRes> get level1 {
    final local$level1 = _instance.level1;
    return local$level1 == null
        ? CopyWith$Fragment$F1$level1.stub(_then(_instance))
        : CopyWith$Fragment$F1$level1(local$level1, (e) => call(level1: e));
  }
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({
    Fragment$F1$level1? level1,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F1$level1<TRes> get level1 =>
      CopyWith$Fragment$F1$level1.stub(_res);
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
  name: NameNode(value: 'F1'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Query'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'level1'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'name'),
          value: VariableNode(name: NameNode(value: 'name')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'level2'),
          alias: null,
          arguments: [
            ArgumentNode(
              name: NameNode(value: 'list'),
              value: VariableNode(name: NameNode(value: 'name')),
            )
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'level3'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'i'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'inputField'),
                      value: VariableNode(name: NameNode(value: 'i')),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'level4'),
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
);
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
]);

class Fragment$F1$level1 {
  Fragment$F1$level1({
    this.level2,
    this.$__typename = 'Level1',
  });

  factory Fragment$F1$level1.fromJson(Map<String, dynamic> json) {
    final l$level2 = json['level2'];
    final l$$__typename = json['__typename'];
    return Fragment$F1$level1(
      level2: l$level2 == null
          ? null
          : Fragment$F1$level1$level2.fromJson(
              (l$level2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F1$level1$level2? level2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level2 = level2;
    _resultData['level2'] = l$level2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1$level1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$level2 = level2;
    final lOther$level2 = other.level2;
    if (l$level2 != lOther$level2) {
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

extension UtilityExtension$Fragment$F1$level1 on Fragment$F1$level1 {
  CopyWith$Fragment$F1$level1<Fragment$F1$level1> get copyWith =>
      CopyWith$Fragment$F1$level1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1$level1<TRes> {
  factory CopyWith$Fragment$F1$level1(
    Fragment$F1$level1 instance,
    TRes Function(Fragment$F1$level1) then,
  ) = _CopyWithImpl$Fragment$F1$level1;

  factory CopyWith$Fragment$F1$level1.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F1$level1;

  TRes call({
    Fragment$F1$level1$level2? level2,
    String? $__typename,
  });
  CopyWith$Fragment$F1$level1$level2<TRes> get level2;
}

class _CopyWithImpl$Fragment$F1$level1<TRes>
    implements CopyWith$Fragment$F1$level1<TRes> {
  _CopyWithImpl$Fragment$F1$level1(
    this._instance,
    this._then,
  );

  final Fragment$F1$level1 _instance;

  final TRes Function(Fragment$F1$level1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F1$level1(
        level2: level2 == _undefined
            ? _instance.level2
            : (level2 as Fragment$F1$level1$level2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F1$level1$level2<TRes> get level2 {
    final local$level2 = _instance.level2;
    return local$level2 == null
        ? CopyWith$Fragment$F1$level1$level2.stub(_then(_instance))
        : CopyWith$Fragment$F1$level1$level2(
            local$level2, (e) => call(level2: e));
  }
}

class _CopyWithStubImpl$Fragment$F1$level1<TRes>
    implements CopyWith$Fragment$F1$level1<TRes> {
  _CopyWithStubImpl$Fragment$F1$level1(this._res);

  TRes _res;

  call({
    Fragment$F1$level1$level2? level2,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F1$level1$level2<TRes> get level2 =>
      CopyWith$Fragment$F1$level1$level2.stub(_res);
}

class Fragment$F1$level1$level2 {
  Fragment$F1$level1$level2({
    this.level3,
    this.$__typename = 'Level2',
  });

  factory Fragment$F1$level1$level2.fromJson(Map<String, dynamic> json) {
    final l$level3 = json['level3'];
    final l$$__typename = json['__typename'];
    return Fragment$F1$level1$level2(
      level3: l$level3 == null
          ? null
          : Fragment$F1$level1$level2$level3.fromJson(
              (l$level3 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F1$level1$level2$level3? level3;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level3 = level3;
    _resultData['level3'] = l$level3?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level3,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1$level1$level2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$level3 = level3;
    final lOther$level3 = other.level3;
    if (l$level3 != lOther$level3) {
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

extension UtilityExtension$Fragment$F1$level1$level2
    on Fragment$F1$level1$level2 {
  CopyWith$Fragment$F1$level1$level2<Fragment$F1$level1$level2> get copyWith =>
      CopyWith$Fragment$F1$level1$level2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F1$level1$level2<TRes> {
  factory CopyWith$Fragment$F1$level1$level2(
    Fragment$F1$level1$level2 instance,
    TRes Function(Fragment$F1$level1$level2) then,
  ) = _CopyWithImpl$Fragment$F1$level1$level2;

  factory CopyWith$Fragment$F1$level1$level2.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F1$level1$level2;

  TRes call({
    Fragment$F1$level1$level2$level3? level3,
    String? $__typename,
  });
  CopyWith$Fragment$F1$level1$level2$level3<TRes> get level3;
}

class _CopyWithImpl$Fragment$F1$level1$level2<TRes>
    implements CopyWith$Fragment$F1$level1$level2<TRes> {
  _CopyWithImpl$Fragment$F1$level1$level2(
    this._instance,
    this._then,
  );

  final Fragment$F1$level1$level2 _instance;

  final TRes Function(Fragment$F1$level1$level2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level3 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F1$level1$level2(
        level3: level3 == _undefined
            ? _instance.level3
            : (level3 as Fragment$F1$level1$level2$level3?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F1$level1$level2$level3<TRes> get level3 {
    final local$level3 = _instance.level3;
    return local$level3 == null
        ? CopyWith$Fragment$F1$level1$level2$level3.stub(_then(_instance))
        : CopyWith$Fragment$F1$level1$level2$level3(
            local$level3, (e) => call(level3: e));
  }
}

class _CopyWithStubImpl$Fragment$F1$level1$level2<TRes>
    implements CopyWith$Fragment$F1$level1$level2<TRes> {
  _CopyWithStubImpl$Fragment$F1$level1$level2(this._res);

  TRes _res;

  call({
    Fragment$F1$level1$level2$level3? level3,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F1$level1$level2$level3<TRes> get level3 =>
      CopyWith$Fragment$F1$level1$level2$level3.stub(_res);
}

class Fragment$F1$level1$level2$level3 {
  Fragment$F1$level1$level2$level3({
    this.level4,
    this.$__typename = 'Level3',
  });

  factory Fragment$F1$level1$level2$level3.fromJson(Map<String, dynamic> json) {
    final l$level4 = json['level4'];
    final l$$__typename = json['__typename'];
    return Fragment$F1$level1$level2$level3(
      level4: (l$level4 as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? level4;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level4 = level4;
    _resultData['level4'] = l$level4;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level4,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F1$level1$level2$level3) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$level4 = level4;
    final lOther$level4 = other.level4;
    if (l$level4 != lOther$level4) {
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

extension UtilityExtension$Fragment$F1$level1$level2$level3
    on Fragment$F1$level1$level2$level3 {
  CopyWith$Fragment$F1$level1$level2$level3<Fragment$F1$level1$level2$level3>
      get copyWith => CopyWith$Fragment$F1$level1$level2$level3(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$F1$level1$level2$level3<TRes> {
  factory CopyWith$Fragment$F1$level1$level2$level3(
    Fragment$F1$level1$level2$level3 instance,
    TRes Function(Fragment$F1$level1$level2$level3) then,
  ) = _CopyWithImpl$Fragment$F1$level1$level2$level3;

  factory CopyWith$Fragment$F1$level1$level2$level3.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F1$level1$level2$level3;

  TRes call({
    int? level4,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F1$level1$level2$level3<TRes>
    implements CopyWith$Fragment$F1$level1$level2$level3<TRes> {
  _CopyWithImpl$Fragment$F1$level1$level2$level3(
    this._instance,
    this._then,
  );

  final Fragment$F1$level1$level2$level3 _instance;

  final TRes Function(Fragment$F1$level1$level2$level3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level4 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F1$level1$level2$level3(
        level4: level4 == _undefined ? _instance.level4 : (level4 as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F1$level1$level2$level3<TRes>
    implements CopyWith$Fragment$F1$level1$level2$level3<TRes> {
  _CopyWithStubImpl$Fragment$F1$level1$level2$level3(this._res);

  TRes _res;

  call({
    int? level4,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Fragment$F2 {
  factory Variables$Fragment$F2({
    bool? i,
    String? name,
  }) =>
      Variables$Fragment$F2._({
        if (i != null) r'i': i,
        if (name != null) r'name': name,
      });

  Variables$Fragment$F2._(this._$data);

  factory Variables$Fragment$F2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('i')) {
      final l$i = data['i'];
      result$data['i'] = (l$i as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Fragment$F2._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get i => (_$data['i'] as bool?);
  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('i')) {
      final l$i = i;
      result$data['i'] = l$i;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$F2<Variables$Fragment$F2> get copyWith =>
      CopyWith$Variables$Fragment$F2(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$F2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (_$data.containsKey('i') != other._$data.containsKey('i')) {
      return false;
    }
    if (l$i != lOther$i) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$i = i;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('i') ? l$i : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Fragment$F2<TRes> {
  factory CopyWith$Variables$Fragment$F2(
    Variables$Fragment$F2 instance,
    TRes Function(Variables$Fragment$F2) then,
  ) = _CopyWithImpl$Variables$Fragment$F2;

  factory CopyWith$Variables$Fragment$F2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F2;

  TRes call({
    bool? i,
    String? name,
  });
}

class _CopyWithImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithImpl$Variables$Fragment$F2(
    this._instance,
    this._then,
  );

  final Variables$Fragment$F2 _instance;

  final TRes Function(Variables$Fragment$F2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? i = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Fragment$F2._({
        ..._instance._$data,
        if (i != _undefined) 'i': (i as bool?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F2(this._res);

  TRes _res;

  call({
    bool? i,
    String? name,
  }) =>
      _res;
}

class Fragment$F2 {
  Fragment$F2({
    this.level1,
    this.$__typename = 'Query',
  });

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$level1 = json['level1'];
    final l$$__typename = json['__typename'];
    return Fragment$F2(
      level1: l$level1 == null
          ? null
          : Fragment$F21.fromJson((l$level1 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F21? level1;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level1 = level1;
    _resultData['level1'] = l$level1?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level1 = level1;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level1,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$level1 = level1;
    final lOther$level1 = other.level1;
    if (l$level1 != lOther$level1) {
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

  TRes call({
    Fragment$F21? level1,
    String? $__typename,
  });
  CopyWith$Fragment$F21<TRes> get level1;
}

class _CopyWithImpl$Fragment$F2<TRes> implements CopyWith$Fragment$F2<TRes> {
  _CopyWithImpl$Fragment$F2(
    this._instance,
    this._then,
  );

  final Fragment$F2 _instance;

  final TRes Function(Fragment$F2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level1 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F2(
        level1:
            level1 == _undefined ? _instance.level1 : (level1 as Fragment$F21?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F21<TRes> get level1 {
    final local$level1 = _instance.level1;
    return local$level1 == null
        ? CopyWith$Fragment$F21.stub(_then(_instance))
        : CopyWith$Fragment$F21(local$level1, (e) => call(level1: e));
  }
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({
    Fragment$F21? level1,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F21<TRes> get level1 => CopyWith$Fragment$F21.stub(_res);
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
  name: NameNode(value: 'F2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Query'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'level1'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'name'),
          value: VariableNode(name: NameNode(value: 'name')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'F21'),
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
);
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
  fragmentDefinitionF21,
]);

class Variables$Fragment$F21 {
  factory Variables$Fragment$F21({bool? i}) => Variables$Fragment$F21._({
        if (i != null) r'i': i,
      });

  Variables$Fragment$F21._(this._$data);

  factory Variables$Fragment$F21.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('i')) {
      final l$i = data['i'];
      result$data['i'] = (l$i as bool?);
    }
    return Variables$Fragment$F21._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get i => (_$data['i'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('i')) {
      final l$i = i;
      result$data['i'] = l$i;
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$F21<Variables$Fragment$F21> get copyWith =>
      CopyWith$Variables$Fragment$F21(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$F21) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (_$data.containsKey('i') != other._$data.containsKey('i')) {
      return false;
    }
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$i = i;
    return Object.hashAll([_$data.containsKey('i') ? l$i : const {}]);
  }
}

abstract class CopyWith$Variables$Fragment$F21<TRes> {
  factory CopyWith$Variables$Fragment$F21(
    Variables$Fragment$F21 instance,
    TRes Function(Variables$Fragment$F21) then,
  ) = _CopyWithImpl$Variables$Fragment$F21;

  factory CopyWith$Variables$Fragment$F21.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F21;

  TRes call({bool? i});
}

class _CopyWithImpl$Variables$Fragment$F21<TRes>
    implements CopyWith$Variables$Fragment$F21<TRes> {
  _CopyWithImpl$Variables$Fragment$F21(
    this._instance,
    this._then,
  );

  final Variables$Fragment$F21 _instance;

  final TRes Function(Variables$Fragment$F21) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? i = _undefined}) => _then(Variables$Fragment$F21._({
        ..._instance._$data,
        if (i != _undefined) 'i': (i as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F21<TRes>
    implements CopyWith$Variables$Fragment$F21<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F21(this._res);

  TRes _res;

  call({bool? i}) => _res;
}

class Fragment$F21 {
  Fragment$F21({
    this.level2,
    this.$__typename = 'Level1',
  });

  factory Fragment$F21.fromJson(Map<String, dynamic> json) {
    final l$level2 = json['level2'];
    final l$$__typename = json['__typename'];
    return Fragment$F21(
      level2: l$level2 == null
          ? null
          : Fragment$F21$level2.fromJson((l$level2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F21$level2? level2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level2 = level2;
    _resultData['level2'] = l$level2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level2 = level2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F21) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$level2 = level2;
    final lOther$level2 = other.level2;
    if (l$level2 != lOther$level2) {
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

extension UtilityExtension$Fragment$F21 on Fragment$F21 {
  CopyWith$Fragment$F21<Fragment$F21> get copyWith => CopyWith$Fragment$F21(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F21<TRes> {
  factory CopyWith$Fragment$F21(
    Fragment$F21 instance,
    TRes Function(Fragment$F21) then,
  ) = _CopyWithImpl$Fragment$F21;

  factory CopyWith$Fragment$F21.stub(TRes res) = _CopyWithStubImpl$Fragment$F21;

  TRes call({
    Fragment$F21$level2? level2,
    String? $__typename,
  });
  CopyWith$Fragment$F21$level2<TRes> get level2;
}

class _CopyWithImpl$Fragment$F21<TRes> implements CopyWith$Fragment$F21<TRes> {
  _CopyWithImpl$Fragment$F21(
    this._instance,
    this._then,
  );

  final Fragment$F21 _instance;

  final TRes Function(Fragment$F21) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F21(
        level2: level2 == _undefined
            ? _instance.level2
            : (level2 as Fragment$F21$level2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F21$level2<TRes> get level2 {
    final local$level2 = _instance.level2;
    return local$level2 == null
        ? CopyWith$Fragment$F21$level2.stub(_then(_instance))
        : CopyWith$Fragment$F21$level2(local$level2, (e) => call(level2: e));
  }
}

class _CopyWithStubImpl$Fragment$F21<TRes>
    implements CopyWith$Fragment$F21<TRes> {
  _CopyWithStubImpl$Fragment$F21(this._res);

  TRes _res;

  call({
    Fragment$F21$level2? level2,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F21$level2<TRes> get level2 =>
      CopyWith$Fragment$F21$level2.stub(_res);
}

const fragmentDefinitionF21 = FragmentDefinitionNode(
  name: NameNode(value: 'F21'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Level1'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'level2'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'list'),
          value: StringValueNode(
            value: 'foobar',
            isBlock: false,
          ),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'level3'),
          alias: null,
          arguments: [
            ArgumentNode(
              name: NameNode(value: 'i'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'inputField'),
                  value: VariableNode(name: NameNode(value: 'i')),
                )
              ]),
            )
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'level4'),
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
);
const documentNodeFragmentF21 = DocumentNode(definitions: [
  fragmentDefinitionF21,
]);

class Fragment$F21$level2 {
  Fragment$F21$level2({
    this.level3,
    this.$__typename = 'Level2',
  });

  factory Fragment$F21$level2.fromJson(Map<String, dynamic> json) {
    final l$level3 = json['level3'];
    final l$$__typename = json['__typename'];
    return Fragment$F21$level2(
      level3: l$level3 == null
          ? null
          : Fragment$F21$level2$level3.fromJson(
              (l$level3 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$F21$level2$level3? level3;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level3 = level3;
    _resultData['level3'] = l$level3?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level3 = level3;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level3,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F21$level2) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$level3 = level3;
    final lOther$level3 = other.level3;
    if (l$level3 != lOther$level3) {
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

extension UtilityExtension$Fragment$F21$level2 on Fragment$F21$level2 {
  CopyWith$Fragment$F21$level2<Fragment$F21$level2> get copyWith =>
      CopyWith$Fragment$F21$level2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F21$level2<TRes> {
  factory CopyWith$Fragment$F21$level2(
    Fragment$F21$level2 instance,
    TRes Function(Fragment$F21$level2) then,
  ) = _CopyWithImpl$Fragment$F21$level2;

  factory CopyWith$Fragment$F21$level2.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F21$level2;

  TRes call({
    Fragment$F21$level2$level3? level3,
    String? $__typename,
  });
  CopyWith$Fragment$F21$level2$level3<TRes> get level3;
}

class _CopyWithImpl$Fragment$F21$level2<TRes>
    implements CopyWith$Fragment$F21$level2<TRes> {
  _CopyWithImpl$Fragment$F21$level2(
    this._instance,
    this._then,
  );

  final Fragment$F21$level2 _instance;

  final TRes Function(Fragment$F21$level2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level3 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F21$level2(
        level3: level3 == _undefined
            ? _instance.level3
            : (level3 as Fragment$F21$level2$level3?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$F21$level2$level3<TRes> get level3 {
    final local$level3 = _instance.level3;
    return local$level3 == null
        ? CopyWith$Fragment$F21$level2$level3.stub(_then(_instance))
        : CopyWith$Fragment$F21$level2$level3(
            local$level3, (e) => call(level3: e));
  }
}

class _CopyWithStubImpl$Fragment$F21$level2<TRes>
    implements CopyWith$Fragment$F21$level2<TRes> {
  _CopyWithStubImpl$Fragment$F21$level2(this._res);

  TRes _res;

  call({
    Fragment$F21$level2$level3? level3,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$F21$level2$level3<TRes> get level3 =>
      CopyWith$Fragment$F21$level2$level3.stub(_res);
}

class Fragment$F21$level2$level3 {
  Fragment$F21$level2$level3({
    this.level4,
    this.$__typename = 'Level3',
  });

  factory Fragment$F21$level2$level3.fromJson(Map<String, dynamic> json) {
    final l$level4 = json['level4'];
    final l$$__typename = json['__typename'];
    return Fragment$F21$level2$level3(
      level4: (l$level4 as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? level4;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level4 = level4;
    _resultData['level4'] = l$level4;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level4 = level4;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level4,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F21$level2$level3) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$level4 = level4;
    final lOther$level4 = other.level4;
    if (l$level4 != lOther$level4) {
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

extension UtilityExtension$Fragment$F21$level2$level3
    on Fragment$F21$level2$level3 {
  CopyWith$Fragment$F21$level2$level3<Fragment$F21$level2$level3>
      get copyWith => CopyWith$Fragment$F21$level2$level3(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$F21$level2$level3<TRes> {
  factory CopyWith$Fragment$F21$level2$level3(
    Fragment$F21$level2$level3 instance,
    TRes Function(Fragment$F21$level2$level3) then,
  ) = _CopyWithImpl$Fragment$F21$level2$level3;

  factory CopyWith$Fragment$F21$level2$level3.stub(TRes res) =
      _CopyWithStubImpl$Fragment$F21$level2$level3;

  TRes call({
    int? level4,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F21$level2$level3<TRes>
    implements CopyWith$Fragment$F21$level2$level3<TRes> {
  _CopyWithImpl$Fragment$F21$level2$level3(
    this._instance,
    this._then,
  );

  final Fragment$F21$level2$level3 _instance;

  final TRes Function(Fragment$F21$level2$level3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level4 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F21$level2$level3(
        level4: level4 == _undefined ? _instance.level4 : (level4 as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F21$level2$level3<TRes>
    implements CopyWith$Fragment$F21$level2$level3<TRes> {
  _CopyWithStubImpl$Fragment$F21$level2$level3(this._res);

  TRes _res;

  call({
    int? level4,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
