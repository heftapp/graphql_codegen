import 'package:gql/ast.dart';

class Input$Input {
  factory Input$Input({
    String? field,
    bool? flag,
  }) =>
      Input$Input._({
        if (field != null) r'field': field,
        if (flag != null) r'flag': flag,
      });

  Input$Input._(this._$data);

  factory Input$Input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('field')) {
      final l$field = data['field'];
      result$data['field'] = (l$field as String?);
    }
    if (data.containsKey('flag')) {
      final l$flag = data['flag'];
      result$data['flag'] = (l$flag as bool?);
    }
    return Input$Input._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get field => (_$data['field'] as String?);
  bool? get flag => (_$data['flag'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('field')) {
      final l$field = field;
      result$data['field'] = l$field;
    }
    if (_$data.containsKey('flag')) {
      final l$flag = flag;
      result$data['flag'] = l$flag;
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
    final l$field = field;
    final lOther$field = other.field;
    if (_$data.containsKey('field') != other._$data.containsKey('field')) {
      return false;
    }
    if (l$field != lOther$field) {
      return false;
    }
    final l$flag = flag;
    final lOther$flag = other.flag;
    if (_$data.containsKey('flag') != other._$data.containsKey('flag')) {
      return false;
    }
    if (l$flag != lOther$flag) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$flag = flag;
    return Object.hashAll([
      _$data.containsKey('field') ? l$field : const {},
      _$data.containsKey('flag') ? l$flag : const {},
    ]);
  }
}

abstract class CopyWith$Input$Input<TRes> {
  factory CopyWith$Input$Input(
    Input$Input instance,
    TRes Function(Input$Input) then,
  ) = _CopyWithImpl$Input$Input;

  factory CopyWith$Input$Input.stub(TRes res) = _CopyWithStubImpl$Input$Input;

  TRes call({
    String? field,
    bool? flag,
  });
}

class _CopyWithImpl$Input$Input<TRes> implements CopyWith$Input$Input<TRes> {
  _CopyWithImpl$Input$Input(
    this._instance,
    this._then,
  );

  final Input$Input _instance;

  final TRes Function(Input$Input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? flag = _undefined,
  }) =>
      _then(Input$Input._({
        ..._instance._$data,
        if (field != _undefined) 'field': (field as String?),
        if (flag != _undefined) 'flag': (flag as bool?),
      }));
}

class _CopyWithStubImpl$Input$Input<TRes>
    implements CopyWith$Input$Input<TRes> {
  _CopyWithStubImpl$Input$Input(this._res);

  TRes _res;

  call({
    String? field,
    bool? flag,
  }) =>
      _res;
}

class Variables$Query$Q1 {
  factory Variables$Query$Q1({Input$Input? input}) => Variables$Query$Q1._({
        if (input != null) r'input': input,
      });

  Variables$Query$Q1._(this._$data);

  factory Variables$Query$Q1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$Input.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables$Query$Q1._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Input? get input => (_$data['input'] as Input$Input?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Q1<Variables$Query$Q1> get copyWith =>
      CopyWith$Variables$Query$Q1(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Q1) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Q1<TRes> {
  factory CopyWith$Variables$Query$Q1(
    Variables$Query$Q1 instance,
    TRes Function(Variables$Query$Q1) then,
  ) = _CopyWithImpl$Variables$Query$Q1;

  factory CopyWith$Variables$Query$Q1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Q1;

  TRes call({Input$Input? input});
  CopyWith$Input$Input<TRes> get input;
}

class _CopyWithImpl$Variables$Query$Q1<TRes>
    implements CopyWith$Variables$Query$Q1<TRes> {
  _CopyWithImpl$Variables$Query$Q1(
    this._instance,
    this._then,
  );

  final Variables$Query$Q1 _instance;

  final TRes Function(Variables$Query$Q1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Query$Q1._({
        ..._instance._$data,
        if (input != _undefined) 'input': (input as Input$Input?),
      }));
  CopyWith$Input$Input<TRes> get input {
    final local$input = _instance.input;
    return local$input == null
        ? CopyWith$Input$Input.stub(_then(_instance))
        : CopyWith$Input$Input(local$input, (e) => call(input: e));
  }
}

class _CopyWithStubImpl$Variables$Query$Q1<TRes>
    implements CopyWith$Variables$Query$Q1<TRes> {
  _CopyWithStubImpl$Variables$Query$Q1(this._res);

  TRes _res;

  call({Input$Input? input}) => _res;
  CopyWith$Input$Input<TRes> get input => CopyWith$Input$Input.stub(_res);
}

class Query$Q1 {
  Query$Q1({
    this.field,
    this.$__typename = 'Query',
  });

  factory Query$Q1.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Query$Q1(
      field: (l$field as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? field;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field;
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
    if (!(other is Query$Q1) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q1 on Query$Q1 {
  CopyWith$Query$Q1<Query$Q1> get copyWith => CopyWith$Query$Q1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q1<TRes> {
  factory CopyWith$Query$Q1(
    Query$Q1 instance,
    TRes Function(Query$Q1) then,
  ) = _CopyWithImpl$Query$Q1;

  factory CopyWith$Query$Q1.stub(TRes res) = _CopyWithStubImpl$Query$Q1;

  TRes call({
    String? field,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithImpl$Query$Q1(
    this._instance,
    this._then,
  );

  final Query$Q1 _instance;

  final TRes Function(Query$Q1) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q1(
        field: field == _undefined ? _instance.field : (field as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithStubImpl$Query$Q1(this._res);

  TRes _res;

  call({
    String? field,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ1 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q1'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Input'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'field'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
  ),
]);
const possibleTypesMap = <String, Set<String>>{};
