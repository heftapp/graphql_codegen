import 'package:gql/ast.dart';

abstract class Input$Input {
  factory Input$Input({String? field, bool? flag}) =>
      _Impl$Input$Input({'field': field, 'flag': flag});

  factory Input$Input.withoutNulls({String? field, bool? flag}) {
    final l$data = <String, dynamic>{};
    if (field != null) l$data['field'] = field;
    if (flag != null) l$data['flag'] = flag;
    return _Impl$Input$Input(l$data);
  }

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
    return _Impl$Input$Input(result$data);
  }

  String? get field;
  bool? get flag;
  Map<String, dynamic> toJson();
  CopyWith$Input$Input<Input$Input> get copyWith;
  _Impl$Input$Input get $impl;
}

class _Impl$Input$Input implements Input$Input {
  _Impl$Input$Input(this.$data);

  final Map<String, dynamic> $data;

  String? get field => ($data['field'] as String?);
  bool? get flag => ($data['flag'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('field')) {
      final l$field = field;
      result$data['field'] = l$field;
    }
    if ($data.containsKey('flag')) {
      final l$flag = flag;
      result$data['flag'] = l$flag;
    }
    return result$data;
  }

  CopyWith$Input$Input<Input$Input> get copyWith =>
      CopyWith$Input$Input(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Input$Input) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if ($data.containsKey('field') != other.$data.containsKey('field')) {
      return false;
    }
    if (l$field != lOther$field) {
      return false;
    }
    final l$flag = flag;
    final lOther$flag = other.flag;
    if ($data.containsKey('flag') != other.$data.containsKey('flag')) {
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
      $data.containsKey('field') ? l$field : const {},
      $data.containsKey('flag') ? l$flag : const {}
    ]);
  }

  _Impl$Input$Input get $impl => this;
}

abstract class CopyWith$Input$Input<TRes> {
  factory CopyWith$Input$Input(
          Input$Input instance, TRes Function(Input$Input) then) =>
      _CopyWithImpl$Input$Input(instance.$impl, then);

  factory CopyWith$Input$Input.stub(TRes res) = _CopyWithStubImpl$Input$Input;

  TRes call({String? field, bool? flag});
}

class _CopyWithImpl$Input$Input<TRes> implements CopyWith$Input$Input<TRes> {
  _CopyWithImpl$Input$Input(this._instance, this._then);

  final _Impl$Input$Input _instance;

  final TRes Function(_Impl$Input$Input) _then;

  static const _undefined = {};

  TRes call({Object? field = _undefined, Object? flag = _undefined}) =>
      _then(_Impl$Input$Input({
        ..._instance.$data,
        if (field != _undefined) 'field': (field as String?),
        if (flag != _undefined) 'flag': (flag as bool?),
      }));
}

class _CopyWithStubImpl$Input$Input<TRes>
    implements CopyWith$Input$Input<TRes> {
  _CopyWithStubImpl$Input$Input(this._res);

  TRes _res;

  call({String? field, bool? flag}) => _res;
}

abstract class Variables$Query$Q1 {
  factory Variables$Query$Q1({Input$Input? input}) =>
      _Impl$Variables$Query$Q1({'input': input});

  factory Variables$Query$Q1.withoutNulls({Input$Input? input}) {
    final l$data = <String, dynamic>{};
    if (input != null) l$data['input'] = input;
    return _Impl$Variables$Query$Q1(l$data);
  }

  factory Variables$Query$Q1.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$Input.fromJson((l$input as Map<String, dynamic>));
    }
    return _Impl$Variables$Query$Q1(result$data);
  }

  Input$Input? get input;
  Map<String, dynamic> toJson();
  CopyWith$Variables$Query$Q1<Variables$Query$Q1> get copyWith;
  _Impl$Variables$Query$Q1 get $impl;
}

class _Impl$Variables$Query$Q1 implements Variables$Query$Q1 {
  _Impl$Variables$Query$Q1(this.$data);

  final Map<String, dynamic> $data;

  Input$Input? get input => ($data['input'] as Input$Input?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if ($data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Q1<Variables$Query$Q1> get copyWith =>
      CopyWith$Variables$Query$Q1(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is _Impl$Variables$Query$Q1) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if ($data.containsKey('input') != other.$data.containsKey('input')) {
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
    return Object.hashAll([$data.containsKey('input') ? l$input : const {}]);
  }

  _Impl$Variables$Query$Q1 get $impl => this;
}

abstract class CopyWith$Variables$Query$Q1<TRes> {
  factory CopyWith$Variables$Query$Q1(Variables$Query$Q1 instance,
          TRes Function(Variables$Query$Q1) then) =>
      _CopyWithImpl$Variables$Query$Q1(instance.$impl, then);

  factory CopyWith$Variables$Query$Q1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Q1;

  TRes call({Input$Input? input});
  CopyWith$Input$Input<TRes> get input;
}

class _CopyWithImpl$Variables$Query$Q1<TRes>
    implements CopyWith$Variables$Query$Q1<TRes> {
  _CopyWithImpl$Variables$Query$Q1(this._instance, this._then);

  final _Impl$Variables$Query$Q1 _instance;

  final TRes Function(_Impl$Variables$Query$Q1) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(_Impl$Variables$Query$Q1({
        ..._instance.$data,
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
  Query$Q1({this.field, required this.$__typename});

  factory Query$Q1.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$$__typename = json['__typename'];
    return Query$Q1(
        field: (l$field as String?), $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$field, l$$__typename]);
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
  CopyWith$Query$Q1<Query$Q1> get copyWith => CopyWith$Query$Q1(this, (i) => i);
}

abstract class CopyWith$Query$Q1<TRes> {
  factory CopyWith$Query$Q1(Query$Q1 instance, TRes Function(Query$Q1) then) =>
      _CopyWithImpl$Query$Q1(instance, then);

  factory CopyWith$Query$Q1.stub(TRes res) = _CopyWithStubImpl$Query$Q1;

  TRes call({String? field, String? $__typename});
}

class _CopyWithImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithImpl$Query$Q1(this._instance, this._then);

  final Query$Q1 _instance;

  final TRes Function(Query$Q1) _then;

  static const _undefined = {};

  TRes call({Object? field = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Q1(
          field: field == _undefined ? _instance.field : (field as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q1<TRes> implements CopyWith$Query$Q1<TRes> {
  _CopyWithStubImpl$Query$Q1(this._res);

  TRes _res;

  call({String? field, String? $__typename}) => _res;
}

const documentNodeQueryQ1 = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q1'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type:
                NamedTypeNode(name: NameNode(value: 'Input'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'field'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
const possibleTypesMap = {};
