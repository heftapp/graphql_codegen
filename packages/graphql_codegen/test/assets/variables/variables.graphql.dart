import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'variables.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$HiBob {
  Variables$Query$HiBob({required this.i});

  @override
  factory Variables$Query$HiBob.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HiBobFromJson(json);

  final Input$I1 i;

  Map<String, dynamic> toJson() => _$Variables$Query$HiBobToJson(this);
  int get hashCode {
    final l$i = i;
    return Object.hashAll([l$i]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HiBob) || runtimeType != other.runtimeType)
      return false;
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) return false;
    return true;
  }

  CopyWith$Variables$Query$HiBob<Variables$Query$HiBob> get copyWith =>
      CopyWith$Variables$Query$HiBob(this, (i) => i);
}

abstract class CopyWith$Variables$Query$HiBob<TRes> {
  factory CopyWith$Variables$Query$HiBob(Variables$Query$HiBob instance,
          TRes Function(Variables$Query$HiBob) then) =
      _CopyWithImpl$Variables$Query$HiBob;

  TRes call({Input$I1? i});
}

class _CopyWithImpl$Variables$Query$HiBob<TRes>
    implements CopyWith$Variables$Query$HiBob<TRes> {
  _CopyWithImpl$Variables$Query$HiBob(this._instance, this._then);

  final Variables$Query$HiBob _instance;

  final TRes Function(Variables$Query$HiBob) _then;

  static const _undefined = {};

  TRes call({Object? i = _undefined}) => _then(Variables$Query$HiBob(
      i: i == _undefined ? _instance.i : (i as Input$I1)));
}

@JsonSerializable(explicitToJson: true)
class Query$HiBob {
  Query$HiBob({this.field});

  @override
  factory Query$HiBob.fromJson(Map<String, dynamic> json) =>
      _$Query$HiBobFromJson(json);

  final Query$HiBob$field? field;

  Map<String, dynamic> toJson() => _$Query$HiBobToJson(this);
  int get hashCode {
    final l$field = field;
    return Object.hashAll([l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HiBob) || runtimeType != other.runtimeType)
      return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

extension UtilityExtension$Query$HiBob on Query$HiBob {
  CopyWith$Query$HiBob<Query$HiBob> get copyWith =>
      CopyWith$Query$HiBob(this, (i) => i);
}

abstract class CopyWith$Query$HiBob<TRes> {
  factory CopyWith$Query$HiBob(
          Query$HiBob instance, TRes Function(Query$HiBob) then) =
      _CopyWithImpl$Query$HiBob;

  TRes call({Query$HiBob$field? field});
}

class _CopyWithImpl$Query$HiBob<TRes> implements CopyWith$Query$HiBob<TRes> {
  _CopyWithImpl$Query$HiBob(this._instance, this._then);

  final Query$HiBob _instance;

  final TRes Function(Query$HiBob) _then;

  static const _undefined = {};

  TRes call({Object? field = _undefined}) => _then(Query$HiBob(
      field: field == _undefined
          ? _instance.field
          : (field as Query$HiBob$field?)));
}

const documentNodeQueryHiBob = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HiBob'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'i')),
            type: NamedTypeNode(name: NameNode(value: 'I1'), isNonNull: true),
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
                  value: VariableNode(name: NameNode(value: 'i'))),
              ArgumentNode(
                  name: NameNode(value: 'b'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
]);

@JsonSerializable(explicitToJson: true)
class Query$HiBob$field {
  Query$HiBob$field({required this.value});

  @override
  factory Query$HiBob$field.fromJson(Map<String, dynamic> json) =>
      _$Query$HiBob$fieldFromJson(json);

  final String value;

  Map<String, dynamic> toJson() => _$Query$HiBob$fieldToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HiBob$field) || runtimeType != other.runtimeType)
      return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

extension UtilityExtension$Query$HiBob$field on Query$HiBob$field {
  CopyWith$Query$HiBob$field<Query$HiBob$field> get copyWith =>
      CopyWith$Query$HiBob$field(this, (i) => i);
}

abstract class CopyWith$Query$HiBob$field<TRes> {
  factory CopyWith$Query$HiBob$field(
          Query$HiBob$field instance, TRes Function(Query$HiBob$field) then) =
      _CopyWithImpl$Query$HiBob$field;

  TRes call({String? value});
}

class _CopyWithImpl$Query$HiBob$field<TRes>
    implements CopyWith$Query$HiBob$field<TRes> {
  _CopyWithImpl$Query$HiBob$field(this._instance, this._then);

  final Query$HiBob$field _instance;

  final TRes Function(Query$HiBob$field) _then;

  static const _undefined = {};

  TRes call({Object? value = _undefined}) => _then(Query$HiBob$field(
      value: value == _undefined ? _instance.value : (value as String)));
}
