import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Input$Input {
  Input$Input({this.field, this.flag});

  factory Input$Input.fromJson(Map<String, dynamic> json) =>
      _$Input$InputFromJson(json);

  final String? field;

  final bool? flag;

  Map<String, dynamic> toJson() => _$Input$InputToJson(this);
  @override
  int get hashCode {
    final l$field = field;
    final l$flag = flag;
    return Object.hashAll([l$field, l$flag]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$Input) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$flag = flag;
    final lOther$flag = other.flag;
    if (l$flag != lOther$flag) return false;
    return true;
  }

  CopyWith$Input$Input<Input$Input> get copyWith =>
      CopyWith$Input$Input(this, (i) => i);
}

abstract class CopyWith$Input$Input<TRes> {
  factory CopyWith$Input$Input(
          Input$Input instance, TRes Function(Input$Input) then) =
      _CopyWithImpl$Input$Input;

  factory CopyWith$Input$Input.stub(TRes res) = _CopyWithStubImpl$Input$Input;

  TRes call({String? field, bool? flag});
}

class _CopyWithImpl$Input$Input<TRes> implements CopyWith$Input$Input<TRes> {
  _CopyWithImpl$Input$Input(this._instance, this._then);

  final Input$Input _instance;

  final TRes Function(Input$Input) _then;

  static const _undefined = {};

  TRes call({Object? field = _undefined, Object? flag = _undefined}) =>
      _then(Input$Input(
          field: field == _undefined ? _instance.field : (field as String?),
          flag: flag == _undefined ? _instance.flag : (flag as bool?)));
}

class _CopyWithStubImpl$Input$Input<TRes>
    implements CopyWith$Input$Input<TRes> {
  _CopyWithStubImpl$Input$Input(this._res);

  TRes _res;

  call({String? field, bool? flag}) => _res;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Variables$Query$Q1 {
  Variables$Query$Q1({this.input});

  factory Variables$Query$Q1.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$Q1FromJson(json);

  final Input$Input? input;

  Map<String, dynamic> toJson() => _$Variables$Query$Q1ToJson(this);
  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$Q1) || runtimeType != other.runtimeType)
      return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Query$Q1<Variables$Query$Q1> get copyWith =>
      CopyWith$Variables$Query$Q1(this, (i) => i);
}

abstract class CopyWith$Variables$Query$Q1<TRes> {
  factory CopyWith$Variables$Query$Q1(
          Variables$Query$Q1 instance, TRes Function(Variables$Query$Q1) then) =
      _CopyWithImpl$Variables$Query$Q1;

  factory CopyWith$Variables$Query$Q1.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Q1;

  TRes call({Input$Input? input});
  CopyWith$Input$Input<TRes> get input;
}

class _CopyWithImpl$Variables$Query$Q1<TRes>
    implements CopyWith$Variables$Query$Q1<TRes> {
  _CopyWithImpl$Variables$Query$Q1(this._instance, this._then);

  final Variables$Query$Q1 _instance;

  final TRes Function(Variables$Query$Q1) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(Variables$Query$Q1(
      input: input == _undefined ? _instance.input : (input as Input$Input?)));
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

@JsonSerializable(explicitToJson: true)
class Query$Q1 {
  Query$Q1({this.field, required this.$__typename});

  factory Query$Q1.fromJson(Map<String, dynamic> json) =>
      _$Query$Q1FromJson(json);

  final String? field;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q1ToJson(this);
  @override
  int get hashCode {
    final l$field = field;
    final l$$__typename = $__typename;
    return Object.hashAll([l$field, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q1) || runtimeType != other.runtimeType) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q1 on Query$Q1 {
  CopyWith$Query$Q1<Query$Q1> get copyWith => CopyWith$Query$Q1(this, (i) => i);
}

abstract class CopyWith$Query$Q1<TRes> {
  factory CopyWith$Query$Q1(Query$Q1 instance, TRes Function(Query$Q1) then) =
      _CopyWithImpl$Query$Q1;

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
