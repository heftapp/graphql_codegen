class Input$TemplateDisciplineTopicContentInput {
  factory Input$TemplateDisciplineTopicContentInput({
    required String howStudyIt,
    required List<Input$I1> infoContentBlocks,
    List<Input$I2>? taskContentBlocks,
    List<Input$I3>? testContentBlocks,
    required String whyStudyIt,
  }) =>
      Input$TemplateDisciplineTopicContentInput._({
        r'howStudyIt': howStudyIt,
        r'infoContentBlocks': infoContentBlocks,
        if (taskContentBlocks != null) r'taskContentBlocks': taskContentBlocks,
        if (testContentBlocks != null) r'testContentBlocks': testContentBlocks,
        r'whyStudyIt': whyStudyIt,
      });

  Input$TemplateDisciplineTopicContentInput._(this._$data);

  factory Input$TemplateDisciplineTopicContentInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$howStudyIt = data['howStudyIt'];
    result$data['howStudyIt'] = (l$howStudyIt as String);
    final l$infoContentBlocks = data['infoContentBlocks'];
    result$data['infoContentBlocks'] = (l$infoContentBlocks as List<dynamic>)
        .map((e) => Input$I1.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('taskContentBlocks')) {
      final l$taskContentBlocks = data['taskContentBlocks'];
      result$data['taskContentBlocks'] = (l$taskContentBlocks as List<dynamic>?)
          ?.map((e) => Input$I2.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('testContentBlocks')) {
      final l$testContentBlocks = data['testContentBlocks'];
      result$data['testContentBlocks'] = (l$testContentBlocks as List<dynamic>)
          .map((e) => Input$I3.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    final l$whyStudyIt = data['whyStudyIt'];
    result$data['whyStudyIt'] = (l$whyStudyIt as String);
    return Input$TemplateDisciplineTopicContentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get howStudyIt => (_$data['howStudyIt'] as String);

  List<Input$I1> get infoContentBlocks =>
      (_$data['infoContentBlocks'] as List<Input$I1>);

  List<Input$I2>? get taskContentBlocks =>
      (_$data['taskContentBlocks'] as List<Input$I2>?);

  List<Input$I3>? get testContentBlocks =>
      (_$data['testContentBlocks'] as List<Input$I3>?);

  String get whyStudyIt => (_$data['whyStudyIt'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$howStudyIt = howStudyIt;
    result$data['howStudyIt'] = l$howStudyIt;
    final l$infoContentBlocks = infoContentBlocks;
    result$data['infoContentBlocks'] =
        l$infoContentBlocks.map((e) => e.toJson()).toList();
    if (_$data.containsKey('taskContentBlocks')) {
      final l$taskContentBlocks = taskContentBlocks;
      result$data['taskContentBlocks'] =
          l$taskContentBlocks?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('testContentBlocks')) {
      final l$testContentBlocks = testContentBlocks;
      result$data['testContentBlocks'] = (l$testContentBlocks as List<Input$I3>)
          .map((e) => e.toJson())
          .toList();
    }
    final l$whyStudyIt = whyStudyIt;
    result$data['whyStudyIt'] = l$whyStudyIt;
    return result$data;
  }

  CopyWith$Input$TemplateDisciplineTopicContentInput<
          Input$TemplateDisciplineTopicContentInput>
      get copyWith => CopyWith$Input$TemplateDisciplineTopicContentInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TemplateDisciplineTopicContentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$howStudyIt = howStudyIt;
    final lOther$howStudyIt = other.howStudyIt;
    if (l$howStudyIt != lOther$howStudyIt) {
      return false;
    }
    final l$infoContentBlocks = infoContentBlocks;
    final lOther$infoContentBlocks = other.infoContentBlocks;
    if (l$infoContentBlocks.length != lOther$infoContentBlocks.length) {
      return false;
    }
    for (int i = 0; i < l$infoContentBlocks.length; i++) {
      final l$infoContentBlocks$entry = l$infoContentBlocks[i];
      final lOther$infoContentBlocks$entry = lOther$infoContentBlocks[i];
      if (l$infoContentBlocks$entry != lOther$infoContentBlocks$entry) {
        return false;
      }
    }
    final l$taskContentBlocks = taskContentBlocks;
    final lOther$taskContentBlocks = other.taskContentBlocks;
    if (_$data.containsKey('taskContentBlocks') !=
        other._$data.containsKey('taskContentBlocks')) {
      return false;
    }
    if (l$taskContentBlocks != null && lOther$taskContentBlocks != null) {
      if (l$taskContentBlocks.length != lOther$taskContentBlocks.length) {
        return false;
      }
      for (int i = 0; i < l$taskContentBlocks.length; i++) {
        final l$taskContentBlocks$entry = l$taskContentBlocks[i];
        final lOther$taskContentBlocks$entry = lOther$taskContentBlocks[i];
        if (l$taskContentBlocks$entry != lOther$taskContentBlocks$entry) {
          return false;
        }
      }
    } else if (l$taskContentBlocks != lOther$taskContentBlocks) {
      return false;
    }
    final l$testContentBlocks = testContentBlocks;
    final lOther$testContentBlocks = other.testContentBlocks;
    if (_$data.containsKey('testContentBlocks') !=
        other._$data.containsKey('testContentBlocks')) {
      return false;
    }
    if (l$testContentBlocks != null && lOther$testContentBlocks != null) {
      if (l$testContentBlocks.length != lOther$testContentBlocks.length) {
        return false;
      }
      for (int i = 0; i < l$testContentBlocks.length; i++) {
        final l$testContentBlocks$entry = l$testContentBlocks[i];
        final lOther$testContentBlocks$entry = lOther$testContentBlocks[i];
        if (l$testContentBlocks$entry != lOther$testContentBlocks$entry) {
          return false;
        }
      }
    } else if (l$testContentBlocks != lOther$testContentBlocks) {
      return false;
    }
    final l$whyStudyIt = whyStudyIt;
    final lOther$whyStudyIt = other.whyStudyIt;
    if (l$whyStudyIt != lOther$whyStudyIt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$howStudyIt = howStudyIt;
    final l$infoContentBlocks = infoContentBlocks;
    final l$taskContentBlocks = taskContentBlocks;
    final l$testContentBlocks = testContentBlocks;
    final l$whyStudyIt = whyStudyIt;
    return Object.hashAll([
      l$howStudyIt,
      Object.hashAll(l$infoContentBlocks.map((v) => v)),
      _$data.containsKey('taskContentBlocks')
          ? l$taskContentBlocks == null
              ? null
              : Object.hashAll(l$taskContentBlocks.map((v) => v))
          : const {},
      _$data.containsKey('testContentBlocks')
          ? l$testContentBlocks == null
              ? null
              : Object.hashAll(l$testContentBlocks.map((v) => v))
          : const {},
      l$whyStudyIt,
    ]);
  }
}

abstract class CopyWith$Input$TemplateDisciplineTopicContentInput<TRes> {
  factory CopyWith$Input$TemplateDisciplineTopicContentInput(
    Input$TemplateDisciplineTopicContentInput instance,
    TRes Function(Input$TemplateDisciplineTopicContentInput) then,
  ) = _CopyWithImpl$Input$TemplateDisciplineTopicContentInput;

  factory CopyWith$Input$TemplateDisciplineTopicContentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TemplateDisciplineTopicContentInput;

  TRes call({
    String? howStudyIt,
    List<Input$I1>? infoContentBlocks,
    List<Input$I2>? taskContentBlocks,
    List<Input$I3>? testContentBlocks,
    String? whyStudyIt,
  });
  TRes infoContentBlocks(
      Iterable<Input$I1> Function(Iterable<CopyWith$Input$I1<Input$I1>>) _fn);
  TRes taskContentBlocks(
      Iterable<Input$I2>? Function(Iterable<CopyWith$Input$I2<Input$I2>>?) _fn);
  TRes testContentBlocks(
      Iterable<Input$I3>? Function(Iterable<CopyWith$Input$I3<Input$I3>>?) _fn);
}

class _CopyWithImpl$Input$TemplateDisciplineTopicContentInput<TRes>
    implements CopyWith$Input$TemplateDisciplineTopicContentInput<TRes> {
  _CopyWithImpl$Input$TemplateDisciplineTopicContentInput(
    this._instance,
    this._then,
  );

  final Input$TemplateDisciplineTopicContentInput _instance;

  final TRes Function(Input$TemplateDisciplineTopicContentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? howStudyIt = _undefined,
    Object? infoContentBlocks = _undefined,
    Object? taskContentBlocks = _undefined,
    Object? testContentBlocks = _undefined,
    Object? whyStudyIt = _undefined,
  }) =>
      _then(Input$TemplateDisciplineTopicContentInput._({
        ..._instance._$data,
        if (howStudyIt != _undefined && howStudyIt != null)
          'howStudyIt': (howStudyIt as String),
        if (infoContentBlocks != _undefined && infoContentBlocks != null)
          'infoContentBlocks': (infoContentBlocks as List<Input$I1>),
        if (taskContentBlocks != _undefined)
          'taskContentBlocks': (taskContentBlocks as List<Input$I2>?),
        if (testContentBlocks != _undefined && testContentBlocks != null)
          'testContentBlocks': (testContentBlocks as List<Input$I3>),
        if (whyStudyIt != _undefined && whyStudyIt != null)
          'whyStudyIt': (whyStudyIt as String),
      }));

  TRes infoContentBlocks(
          Iterable<Input$I1> Function(Iterable<CopyWith$Input$I1<Input$I1>>)
              _fn) =>
      call(
          infoContentBlocks:
              _fn(_instance.infoContentBlocks.map((e) => CopyWith$Input$I1(
                    e,
                    (i) => i,
                  ))).toList());

  TRes taskContentBlocks(
          Iterable<Input$I2>? Function(Iterable<CopyWith$Input$I2<Input$I2>>?)
              _fn) =>
      call(
          taskContentBlocks:
              _fn(_instance.taskContentBlocks?.map((e) => CopyWith$Input$I2(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes testContentBlocks(
          Iterable<Input$I3>? Function(Iterable<CopyWith$Input$I3<Input$I3>>?)
              _fn) =>
      call(
          testContentBlocks:
              _fn(_instance.testContentBlocks?.map((e) => CopyWith$Input$I3(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TemplateDisciplineTopicContentInput<TRes>
    implements CopyWith$Input$TemplateDisciplineTopicContentInput<TRes> {
  _CopyWithStubImpl$Input$TemplateDisciplineTopicContentInput(this._res);

  TRes _res;

  call({
    String? howStudyIt,
    List<Input$I1>? infoContentBlocks,
    List<Input$I2>? taskContentBlocks,
    List<Input$I3>? testContentBlocks,
    String? whyStudyIt,
  }) =>
      _res;

  infoContentBlocks(_fn) => _res;

  taskContentBlocks(_fn) => _res;

  testContentBlocks(_fn) => _res;
}

class Input$I1 {
  factory Input$I1({String? data}) => Input$I1._({
        if (data != null) r'data': data,
      });

  Input$I1._(this._$data);

  factory Input$I1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    return Input$I1._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get data => (_$data['data'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    return result$data;
  }

  CopyWith$Input$I1<Input$I1> get copyWith => CopyWith$Input$I1(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I1 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([_$data.containsKey('data') ? l$data : const {}]);
  }
}

abstract class CopyWith$Input$I1<TRes> {
  factory CopyWith$Input$I1(
    Input$I1 instance,
    TRes Function(Input$I1) then,
  ) = _CopyWithImpl$Input$I1;

  factory CopyWith$Input$I1.stub(TRes res) = _CopyWithStubImpl$Input$I1;

  TRes call({String? data});
}

class _CopyWithImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithImpl$Input$I1(
    this._instance,
    this._then,
  );

  final Input$I1 _instance;

  final TRes Function(Input$I1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Input$I1._({
        ..._instance._$data,
        if (data != _undefined) 'data': (data as String?),
      }));
}

class _CopyWithStubImpl$Input$I1<TRes> implements CopyWith$Input$I1<TRes> {
  _CopyWithStubImpl$Input$I1(this._res);

  TRes _res;

  call({String? data}) => _res;
}

class Input$I2 {
  factory Input$I2({String? data}) => Input$I2._({
        if (data != null) r'data': data,
      });

  Input$I2._(this._$data);

  factory Input$I2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    return Input$I2._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get data => (_$data['data'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    return result$data;
  }

  CopyWith$Input$I2<Input$I2> get copyWith => CopyWith$Input$I2(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I2 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([_$data.containsKey('data') ? l$data : const {}]);
  }
}

abstract class CopyWith$Input$I2<TRes> {
  factory CopyWith$Input$I2(
    Input$I2 instance,
    TRes Function(Input$I2) then,
  ) = _CopyWithImpl$Input$I2;

  factory CopyWith$Input$I2.stub(TRes res) = _CopyWithStubImpl$Input$I2;

  TRes call({String? data});
}

class _CopyWithImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithImpl$Input$I2(
    this._instance,
    this._then,
  );

  final Input$I2 _instance;

  final TRes Function(Input$I2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Input$I2._({
        ..._instance._$data,
        if (data != _undefined) 'data': (data as String?),
      }));
}

class _CopyWithStubImpl$Input$I2<TRes> implements CopyWith$Input$I2<TRes> {
  _CopyWithStubImpl$Input$I2(this._res);

  TRes _res;

  call({String? data}) => _res;
}

class Input$I3 {
  factory Input$I3({String? data}) => Input$I3._({
        if (data != null) r'data': data,
      });

  Input$I3._(this._$data);

  factory Input$I3.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    return Input$I3._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get data => (_$data['data'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    return result$data;
  }

  CopyWith$Input$I3<Input$I3> get copyWith => CopyWith$Input$I3(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$I3 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([_$data.containsKey('data') ? l$data : const {}]);
  }
}

abstract class CopyWith$Input$I3<TRes> {
  factory CopyWith$Input$I3(
    Input$I3 instance,
    TRes Function(Input$I3) then,
  ) = _CopyWithImpl$Input$I3;

  factory CopyWith$Input$I3.stub(TRes res) = _CopyWithStubImpl$Input$I3;

  TRes call({String? data});
}

class _CopyWithImpl$Input$I3<TRes> implements CopyWith$Input$I3<TRes> {
  _CopyWithImpl$Input$I3(
    this._instance,
    this._then,
  );

  final Input$I3 _instance;

  final TRes Function(Input$I3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Input$I3._({
        ..._instance._$data,
        if (data != _undefined) 'data': (data as String?),
      }));
}

class _CopyWithStubImpl$Input$I3<TRes> implements CopyWith$Input$I3<TRes> {
  _CopyWithStubImpl$Input$I3(this._res);

  TRes _res;

  call({String? data}) => _res;
}

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

const possibleTypesMap = <String, Set<String>>{};
