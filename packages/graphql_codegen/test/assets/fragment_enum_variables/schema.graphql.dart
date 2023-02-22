import 'package:gql/ast.dart';

class Input$I {
  factory Input$I({String? s}) => Input$I._({
        if (s != null) r's': s,
      });

  Input$I._(this._$data);

  factory Input$I.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('s')) {
      final l$s = data['s'];
      result$data['s'] = (l$s as String?);
    }
    return Input$I._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get s => (_$data['s'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('s')) {
      final l$s = s;
      result$data['s'] = l$s;
    }
    return result$data;
  }

  CopyWith$Input$I<Input$I> get copyWith => CopyWith$Input$I(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$I) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (_$data.containsKey('s') != other._$data.containsKey('s')) {
      return false;
    }
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([_$data.containsKey('s') ? l$s : const {}]);
  }
}

abstract class CopyWith$Input$I<TRes> {
  factory CopyWith$Input$I(
    Input$I instance,
    TRes Function(Input$I) then,
  ) = _CopyWithImpl$Input$I;

  factory CopyWith$Input$I.stub(TRes res) = _CopyWithStubImpl$Input$I;

  TRes call({String? s});
}

class _CopyWithImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithImpl$Input$I(
    this._instance,
    this._then,
  );

  final Input$I _instance;

  final TRes Function(Input$I) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(Input$I._({
        ..._instance._$data,
        if (s != _undefined) 's': (s as String?),
      }));
}

class _CopyWithStubImpl$Input$I<TRes> implements CopyWith$Input$I<TRes> {
  _CopyWithStubImpl$Input$I(this._res);

  TRes _res;

  call({String? s}) => _res;
}

enum Enum$Locale { da_DK, nb_NO, $unknown }

String toJson$Enum$Locale(Enum$Locale e) {
  switch (e) {
    case Enum$Locale.da_DK:
      return r'da_DK';
    case Enum$Locale.nb_NO:
      return r'nb_NO';
    case Enum$Locale.$unknown:
      return r'$unknown';
  }
}

Enum$Locale fromJson$Enum$Locale(String value) {
  switch (value) {
    case r'da_DK':
      return Enum$Locale.da_DK;
    case r'nb_NO':
      return Enum$Locale.nb_NO;
    default:
      return Enum$Locale.$unknown;
  }
}

class Variables$Fragment$F1 {
  factory Variables$Fragment$F1({required Enum$Locale locale}) =>
      Variables$Fragment$F1._({
        r'locale': locale,
      });

  Variables$Fragment$F1._(this._$data);

  factory Variables$Fragment$F1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$locale = data['locale'];
    result$data['locale'] = fromJson$Enum$Locale((l$locale as String));
    return Variables$Fragment$F1._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Locale get locale => (_$data['locale'] as Enum$Locale);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$locale = locale;
    result$data['locale'] = toJson$Enum$Locale(l$locale);
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
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }
}

abstract class CopyWith$Variables$Fragment$F1<TRes> {
  factory CopyWith$Variables$Fragment$F1(
    Variables$Fragment$F1 instance,
    TRes Function(Variables$Fragment$F1) then,
  ) = _CopyWithImpl$Variables$Fragment$F1;

  factory CopyWith$Variables$Fragment$F1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F1;

  TRes call({Enum$Locale? locale});
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

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F1._({
        ..._instance._$data,
        if (locale != _undefined && locale != null)
          'locale': (locale as Enum$Locale),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F1<TRes>
    implements CopyWith$Variables$Fragment$F1<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F1(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

class Fragment$F1 implements Fragment$F2 {
  Fragment$F1({
    this.n2,
    this.$__typename = 'Node',
    this.n1,
  });

  factory Fragment$F1.fromJson(Map<String, dynamic> json) {
    final l$n2 = json['n2'];
    final l$$__typename = json['__typename'];
    final l$n1 = json['n1'];
    return Fragment$F1(
      n2: (l$n2 as String?),
      $__typename: (l$$__typename as String),
      n1: (l$n1 as String?),
    );
  }

  final String? n2;

  final String $__typename;

  final String? n1;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$n2 = n2;
    _resultData['n2'] = l$n2;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$n1 = n1;
    _resultData['n1'] = l$n1;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$n2 = n2;
    final l$$__typename = $__typename;
    final l$n1 = n1;
    return Object.hashAll([
      l$n2,
      l$$__typename,
      l$n1,
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
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$n1 = n1;
    final lOther$n1 = other.n1;
    if (l$n1 != lOther$n1) {
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
    String? n2,
    String? $__typename,
    String? n1,
  });
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
    Object? n2 = _undefined,
    Object? $__typename = _undefined,
    Object? n1 = _undefined,
  }) =>
      _then(Fragment$F1(
        n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        n1: n1 == _undefined ? _instance.n1 : (n1 as String?),
      ));
}

class _CopyWithStubImpl$Fragment$F1<TRes>
    implements CopyWith$Fragment$F1<TRes> {
  _CopyWithStubImpl$Fragment$F1(this._res);

  TRes _res;

  call({
    String? n2,
    String? $__typename,
    String? n1,
  }) =>
      _res;
}

const fragmentDefinitionF1 = FragmentDefinitionNode(
  name: NameNode(value: 'F1'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Node'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'F2'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'n1'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'locale'),
          value: VariableNode(name: NameNode(value: 'locale')),
        )
      ],
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
const documentNodeFragmentF1 = DocumentNode(definitions: [
  fragmentDefinitionF1,
  fragmentDefinitionF2,
]);

class Variables$Fragment$F2 {
  factory Variables$Fragment$F2({required Enum$Locale locale}) =>
      Variables$Fragment$F2._({
        r'locale': locale,
      });

  Variables$Fragment$F2._(this._$data);

  factory Variables$Fragment$F2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$locale = data['locale'];
    result$data['locale'] = fromJson$Enum$Locale((l$locale as String));
    return Variables$Fragment$F2._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Locale get locale => (_$data['locale'] as Enum$Locale);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$locale = locale;
    result$data['locale'] = toJson$Enum$Locale(l$locale);
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
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }
}

abstract class CopyWith$Variables$Fragment$F2<TRes> {
  factory CopyWith$Variables$Fragment$F2(
    Variables$Fragment$F2 instance,
    TRes Function(Variables$Fragment$F2) then,
  ) = _CopyWithImpl$Variables$Fragment$F2;

  factory CopyWith$Variables$Fragment$F2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F2;

  TRes call({Enum$Locale? locale});
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

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F2._({
        ..._instance._$data,
        if (locale != _undefined && locale != null)
          'locale': (locale as Enum$Locale),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F2<TRes>
    implements CopyWith$Variables$Fragment$F2<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F2(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

class Fragment$F2 {
  Fragment$F2({
    this.n2,
    this.$__typename = 'Node',
  });

  factory Fragment$F2.fromJson(Map<String, dynamic> json) {
    final l$n2 = json['n2'];
    final l$$__typename = json['__typename'];
    return Fragment$F2(
      n2: (l$n2 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? n2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$n2 = n2;
    _resultData['n2'] = l$n2;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$n2 = n2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$n2,
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
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) {
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
    String? n2,
    String? $__typename,
  });
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
    Object? n2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F2(
        n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F2<TRes>
    implements CopyWith$Fragment$F2<TRes> {
  _CopyWithStubImpl$Fragment$F2(this._res);

  TRes _res;

  call({
    String? n2,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionF2 = FragmentDefinitionNode(
  name: NameNode(value: 'F2'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Node'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'n2'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'locale'),
          value: VariableNode(name: NameNode(value: 'locale')),
        )
      ],
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
const documentNodeFragmentF2 = DocumentNode(definitions: [
  fragmentDefinitionF2,
]);

class Variables$Fragment$F3 {
  factory Variables$Fragment$F3({required Input$I i}) =>
      Variables$Fragment$F3._({
        r'i': i,
      });

  Variables$Fragment$F3._(this._$data);

  factory Variables$Fragment$F3.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$i = data['i'];
    result$data['i'] = Input$I.fromJson((l$i as Map<String, dynamic>));
    return Variables$Fragment$F3._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$I get i => (_$data['i'] as Input$I);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$i = i;
    result$data['i'] = l$i.toJson();
    return result$data;
  }

  CopyWith$Variables$Fragment$F3<Variables$Fragment$F3> get copyWith =>
      CopyWith$Variables$Fragment$F3(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$F3) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }
}

abstract class CopyWith$Variables$Fragment$F3<TRes> {
  factory CopyWith$Variables$Fragment$F3(
    Variables$Fragment$F3 instance,
    TRes Function(Variables$Fragment$F3) then,
  ) = _CopyWithImpl$Variables$Fragment$F3;

  factory CopyWith$Variables$Fragment$F3.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F3;

  TRes call({Input$I? i});
  CopyWith$Input$I<TRes> get i;
}

class _CopyWithImpl$Variables$Fragment$F3<TRes>
    implements CopyWith$Variables$Fragment$F3<TRes> {
  _CopyWithImpl$Variables$Fragment$F3(
    this._instance,
    this._then,
  );

  final Variables$Fragment$F3 _instance;

  final TRes Function(Variables$Fragment$F3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? i = _undefined}) => _then(Variables$Fragment$F3._({
        ..._instance._$data,
        if (i != _undefined && i != null) 'i': (i as Input$I),
      }));
  CopyWith$Input$I<TRes> get i {
    final local$i = _instance.i;
    return CopyWith$Input$I(local$i, (e) => call(i: e));
  }
}

class _CopyWithStubImpl$Variables$Fragment$F3<TRes>
    implements CopyWith$Variables$Fragment$F3<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F3(this._res);

  TRes _res;

  call({Input$I? i}) => _res;
  CopyWith$Input$I<TRes> get i => CopyWith$Input$I.stub(_res);
}

class Fragment$F3 {
  Fragment$F3({
    this.test,
    this.$__typename = 'Node',
  });

  factory Fragment$F3.fromJson(Map<String, dynamic> json) {
    final l$test = json['test'];
    final l$$__typename = json['__typename'];
    return Fragment$F3(
      test: (l$test as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? test;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$test = test;
    _resultData['test'] = l$test;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$test = test;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$test,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F3) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$test = test;
    final lOther$test = other.test;
    if (l$test != lOther$test) {
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

  TRes call({
    String? test,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F3<TRes> implements CopyWith$Fragment$F3<TRes> {
  _CopyWithImpl$Fragment$F3(
    this._instance,
    this._then,
  );

  final Fragment$F3 _instance;

  final TRes Function(Fragment$F3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? test = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F3(
        test: test == _undefined ? _instance.test : (test as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F3<TRes>
    implements CopyWith$Fragment$F3<TRes> {
  _CopyWithStubImpl$Fragment$F3(this._res);

  TRes _res;

  call({
    String? test,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionF3 = FragmentDefinitionNode(
  name: NameNode(value: 'F3'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Node'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'test'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'i'),
          value: VariableNode(name: NameNode(value: 'i')),
        )
      ],
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
const documentNodeFragmentF3 = DocumentNode(definitions: [
  fragmentDefinitionF3,
]);

class Variables$Fragment$F4 {
  factory Variables$Fragment$F4({required Enum$Locale locale}) =>
      Variables$Fragment$F4._({
        r'locale': locale,
      });

  Variables$Fragment$F4._(this._$data);

  factory Variables$Fragment$F4.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$locale = data['locale'];
    result$data['locale'] = fromJson$Enum$Locale((l$locale as String));
    return Variables$Fragment$F4._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Locale get locale => (_$data['locale'] as Enum$Locale);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$locale = locale;
    result$data['locale'] = toJson$Enum$Locale(l$locale);
    return result$data;
  }

  CopyWith$Variables$Fragment$F4<Variables$Fragment$F4> get copyWith =>
      CopyWith$Variables$Fragment$F4(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$F4) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$locale = locale;
    return Object.hashAll([l$locale]);
  }
}

abstract class CopyWith$Variables$Fragment$F4<TRes> {
  factory CopyWith$Variables$Fragment$F4(
    Variables$Fragment$F4 instance,
    TRes Function(Variables$Fragment$F4) then,
  ) = _CopyWithImpl$Variables$Fragment$F4;

  factory CopyWith$Variables$Fragment$F4.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$F4;

  TRes call({Enum$Locale? locale});
}

class _CopyWithImpl$Variables$Fragment$F4<TRes>
    implements CopyWith$Variables$Fragment$F4<TRes> {
  _CopyWithImpl$Variables$Fragment$F4(
    this._instance,
    this._then,
  );

  final Variables$Fragment$F4 _instance;

  final TRes Function(Variables$Fragment$F4) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? locale = _undefined}) => _then(Variables$Fragment$F4._({
        ..._instance._$data,
        if (locale != _undefined && locale != null)
          'locale': (locale as Enum$Locale),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$F4<TRes>
    implements CopyWith$Variables$Fragment$F4<TRes> {
  _CopyWithStubImpl$Variables$Fragment$F4(this._res);

  TRes _res;

  call({Enum$Locale? locale}) => _res;
}

class Fragment$F4 {
  Fragment$F4({
    this.n1,
    this.n2,
    this.$__typename = 'Node',
  });

  factory Fragment$F4.fromJson(Map<String, dynamic> json) {
    final l$n1 = json['n1'];
    final l$n2 = json['n2'];
    final l$$__typename = json['__typename'];
    return Fragment$F4(
      n1: (l$n1 as String?),
      n2: (l$n2 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? n1;

  final String? n2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$n1 = n1;
    _resultData['n1'] = l$n1;
    final l$n2 = n2;
    _resultData['n2'] = l$n2;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$n1 = n1;
    final l$n2 = n2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$n1,
      l$n2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F4) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$n1 = n1;
    final lOther$n1 = other.n1;
    if (l$n1 != lOther$n1) {
      return false;
    }
    final l$n2 = n2;
    final lOther$n2 = other.n2;
    if (l$n2 != lOther$n2) {
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

extension UtilityExtension$Fragment$F4 on Fragment$F4 {
  CopyWith$Fragment$F4<Fragment$F4> get copyWith => CopyWith$Fragment$F4(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F4<TRes> {
  factory CopyWith$Fragment$F4(
    Fragment$F4 instance,
    TRes Function(Fragment$F4) then,
  ) = _CopyWithImpl$Fragment$F4;

  factory CopyWith$Fragment$F4.stub(TRes res) = _CopyWithStubImpl$Fragment$F4;

  TRes call({
    String? n1,
    String? n2,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F4<TRes> implements CopyWith$Fragment$F4<TRes> {
  _CopyWithImpl$Fragment$F4(
    this._instance,
    this._then,
  );

  final Fragment$F4 _instance;

  final TRes Function(Fragment$F4) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? n1 = _undefined,
    Object? n2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F4(
        n1: n1 == _undefined ? _instance.n1 : (n1 as String?),
        n2: n2 == _undefined ? _instance.n2 : (n2 as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F4<TRes>
    implements CopyWith$Fragment$F4<TRes> {
  _CopyWithStubImpl$Fragment$F4(this._res);

  TRes _res;

  call({
    String? n1,
    String? n2,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionF4 = FragmentDefinitionNode(
  name: NameNode(value: 'F4'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Node'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'n1'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'locale'),
          value: VariableNode(name: NameNode(value: 'locale')),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: NameNode(value: 'n2'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'locale'),
          value: VariableNode(name: NameNode(value: 'locale')),
        )
      ],
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
const documentNodeFragmentF4 = DocumentNode(definitions: [
  fragmentDefinitionF4,
]);
