import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$HiBob {
  factory Variables$Query$HiBob({required Input$I1 i}) =>
      Variables$Query$HiBob._({
        r'i': i,
      });

  Variables$Query$HiBob._(this._$data);

  factory Variables$Query$HiBob.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$i = data['i'];
    result$data['i'] = Input$I1.fromJson((l$i as Map<String, dynamic>));
    return Variables$Query$HiBob._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$I1 get i => (_$data['i'] as Input$I1);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$i = i;
    result$data['i'] = l$i.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$HiBob<Variables$Query$HiBob> get copyWith =>
      CopyWith$Variables$Query$HiBob(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$HiBob) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$HiBob<TRes> {
  factory CopyWith$Variables$Query$HiBob(
    Variables$Query$HiBob instance,
    TRes Function(Variables$Query$HiBob) then,
  ) = _CopyWithImpl$Variables$Query$HiBob;

  factory CopyWith$Variables$Query$HiBob.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HiBob;

  TRes call({Input$I1? i});
}

class _CopyWithImpl$Variables$Query$HiBob<TRes>
    implements CopyWith$Variables$Query$HiBob<TRes> {
  _CopyWithImpl$Variables$Query$HiBob(
    this._instance,
    this._then,
  );

  final Variables$Query$HiBob _instance;

  final TRes Function(Variables$Query$HiBob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? i = _undefined}) => _then(Variables$Query$HiBob._({
        ..._instance._$data,
        if (i != _undefined && i != null) 'i': (i as Input$I1),
      }));
}

class _CopyWithStubImpl$Variables$Query$HiBob<TRes>
    implements CopyWith$Variables$Query$HiBob<TRes> {
  _CopyWithStubImpl$Variables$Query$HiBob(this._res);

  TRes _res;

  call({Input$I1? i}) => _res;
}

class Query$HiBob {
  Query$HiBob({this.field});

  factory Query$HiBob.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    return Query$HiBob(
        field: l$field == null
            ? null
            : Query$HiBob$field.fromJson((l$field as Map<String, dynamic>)));
  }

  final Query$HiBob$field? field;

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
    if (!(other is Query$HiBob) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HiBob on Query$HiBob {
  CopyWith$Query$HiBob<Query$HiBob> get copyWith => CopyWith$Query$HiBob(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HiBob<TRes> {
  factory CopyWith$Query$HiBob(
    Query$HiBob instance,
    TRes Function(Query$HiBob) then,
  ) = _CopyWithImpl$Query$HiBob;

  factory CopyWith$Query$HiBob.stub(TRes res) = _CopyWithStubImpl$Query$HiBob;

  TRes call({Query$HiBob$field? field});
  CopyWith$Query$HiBob$field<TRes> get field;
}

class _CopyWithImpl$Query$HiBob<TRes> implements CopyWith$Query$HiBob<TRes> {
  _CopyWithImpl$Query$HiBob(
    this._instance,
    this._then,
  );

  final Query$HiBob _instance;

  final TRes Function(Query$HiBob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? field = _undefined}) => _then(Query$HiBob(
      field: field == _undefined
          ? _instance.field
          : (field as Query$HiBob$field?)));
  CopyWith$Query$HiBob$field<TRes> get field {
    final local$field = _instance.field;
    return local$field == null
        ? CopyWith$Query$HiBob$field.stub(_then(_instance))
        : CopyWith$Query$HiBob$field(local$field, (e) => call(field: e));
  }
}

class _CopyWithStubImpl$Query$HiBob<TRes>
    implements CopyWith$Query$HiBob<TRes> {
  _CopyWithStubImpl$Query$HiBob(this._res);

  TRes _res;

  call({Query$HiBob$field? field}) => _res;
  CopyWith$Query$HiBob$field<TRes> get field =>
      CopyWith$Query$HiBob$field.stub(_res);
}

const documentNodeQueryHiBob = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HiBob'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'i')),
        type: NamedTypeNode(
          name: NameNode(value: 'I1'),
          isNonNull: true,
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
            value: VariableNode(name: NameNode(value: 'i')),
          ),
          ArgumentNode(
            name: NameNode(value: 'b'),
            value: BooleanValueNode(value: true),
          ),
        ],
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
      )
    ]),
  ),
]);

class Query$HiBob$field {
  Query$HiBob$field({required this.value});

  factory Query$HiBob$field.fromJson(Map<String, dynamic> json) {
    final l$value = json['value'];
    return Query$HiBob$field(value: (l$value as String));
  }

  final String value;

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
    if (!(other is Query$HiBob$field) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HiBob$field on Query$HiBob$field {
  CopyWith$Query$HiBob$field<Query$HiBob$field> get copyWith =>
      CopyWith$Query$HiBob$field(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HiBob$field<TRes> {
  factory CopyWith$Query$HiBob$field(
    Query$HiBob$field instance,
    TRes Function(Query$HiBob$field) then,
  ) = _CopyWithImpl$Query$HiBob$field;

  factory CopyWith$Query$HiBob$field.stub(TRes res) =
      _CopyWithStubImpl$Query$HiBob$field;

  TRes call({String? value});
}

class _CopyWithImpl$Query$HiBob$field<TRes>
    implements CopyWith$Query$HiBob$field<TRes> {
  _CopyWithImpl$Query$HiBob$field(
    this._instance,
    this._then,
  );

  final Query$HiBob$field _instance;

  final TRes Function(Query$HiBob$field) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Query$HiBob$field(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String)));
}

class _CopyWithStubImpl$Query$HiBob$field<TRes>
    implements CopyWith$Query$HiBob$field<TRes> {
  _CopyWithStubImpl$Query$HiBob$field(this._res);

  TRes _res;

  call({String? value}) => _res;
}
