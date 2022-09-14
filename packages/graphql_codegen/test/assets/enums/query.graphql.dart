import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Query$Foobar {
  Query$Foobar({
    this.field,
    this.fields,
  });

  factory Query$Foobar.fromJson(Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$fields = json['fields'];
    return Query$Foobar(
      field: l$field == null ? null : fromJson$Enum$Enum((l$field as String)),
      fields: (l$fields as List<dynamic>?)
          ?.map((e) => fromJson$Enum$Enum((e as String)))
          .toList(),
    );
  }

  final Enum$Enum? field;

  final List<Enum$Enum>? fields;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field == null ? null : toJson$Enum$Enum(l$field);
    final l$fields = fields;
    _resultData['fields'] = l$fields?.map((e) => toJson$Enum$Enum(e)).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$fields = fields;
    return Object.hashAll([
      l$field,
      l$fields == null ? null : Object.hashAll(l$fields.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Foobar) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields != null && lOther$fields != null) {
      if (l$fields.length != lOther$fields.length) {
        return false;
      }
      for (int i = 0; i < l$fields.length; i++) {
        final l$fields$entry = l$fields[i];
        final lOther$fields$entry = lOther$fields[i];
        if (l$fields$entry != lOther$fields$entry) {
          return false;
        }
      }
    } else if (l$fields != lOther$fields) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Foobar on Query$Foobar {
  CopyWith$Query$Foobar<Query$Foobar> get copyWith => CopyWith$Query$Foobar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Foobar<TRes> {
  factory CopyWith$Query$Foobar(
    Query$Foobar instance,
    TRes Function(Query$Foobar) then,
  ) = _CopyWithImpl$Query$Foobar;

  factory CopyWith$Query$Foobar.stub(TRes res) = _CopyWithStubImpl$Query$Foobar;

  TRes call({
    Enum$Enum? field,
    List<Enum$Enum>? fields,
  });
}

class _CopyWithImpl$Query$Foobar<TRes> implements CopyWith$Query$Foobar<TRes> {
  _CopyWithImpl$Query$Foobar(
    this._instance,
    this._then,
  );

  final Query$Foobar _instance;

  final TRes Function(Query$Foobar) _then;

  static const _undefined = {};

  TRes call({
    Object? field = _undefined,
    Object? fields = _undefined,
  }) =>
      _then(Query$Foobar(
        field: field == _undefined ? _instance.field : (field as Enum$Enum?),
        fields: fields == _undefined
            ? _instance.fields
            : (fields as List<Enum$Enum>?),
      ));
}

class _CopyWithStubImpl$Query$Foobar<TRes>
    implements CopyWith$Query$Foobar<TRes> {
  _CopyWithStubImpl$Query$Foobar(this._res);

  TRes _res;

  call({
    Enum$Enum? field,
    List<Enum$Enum>? fields,
  }) =>
      _res;
}

const documentNodeQueryFoobar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Foobar'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'field'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fields'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
