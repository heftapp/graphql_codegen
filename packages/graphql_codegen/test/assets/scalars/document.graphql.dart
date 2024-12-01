import 'package:gql/ast.dart';
import 'scalar_import.dart';

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

class Query$FetchScalars {
  Query$FetchScalars({
    this.i,
    this.id,
    this.s,
    this.c1,
    this.c2,
    this.c3,
    this.c3s,
  });

  factory Query$FetchScalars.fromJson(Map<String, dynamic> json) {
    final l$i = json['i'];
    final l$id = json['id'];
    final l$s = json['s'];
    final l$c1 = json['c1'];
    final l$c2 = json['c2'];
    final l$c3 = json['c3'];
    final l$c3s = json['c3s'];
    return Query$FetchScalars(
      i: (l$i as int?),
      id: (l$id as int?),
      s: (l$s as String?),
      c1: (l$c1 as String?),
      c2: l$c2 == null ? null : DateTime.parse((l$c2 as String)),
      c3: l$c3 == null ? null : fobbobFromJson(l$c3),
      c3s: (l$c3s as List<dynamic>?)
          ?.map((e) => e == null ? null : fobbobFromJson(e))
          .toList(),
    );
  }

  final int? i;

  final int? id;

  final String? s;

  final String? c1;

  final DateTime? c2;

  final Fobbob? c3;

  final List<Fobbob?>? c3s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$i = i;
    _resultData['i'] = l$i;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$s = s;
    _resultData['s'] = l$s;
    final l$c1 = c1;
    _resultData['c1'] = l$c1;
    final l$c2 = c2;
    _resultData['c2'] = l$c2?.toIso8601String();
    final l$c3 = c3;
    _resultData['c3'] = l$c3 == null ? null : fobbobToJson(l$c3);
    final l$c3s = c3s;
    _resultData['c3s'] =
        l$c3s?.map((e) => e == null ? null : fobbobToJson(e)).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$i = i;
    final l$id = id;
    final l$s = s;
    final l$c1 = c1;
    final l$c2 = c2;
    final l$c3 = c3;
    final l$c3s = c3s;
    return Object.hashAll([
      l$i,
      l$id,
      l$s,
      l$c1,
      l$c2,
      l$c3,
      l$c3s == null ? null : Object.hashAll(l$c3s.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchScalars || runtimeType != other.runtimeType) {
      return false;
    }
    final l$i = i;
    final lOther$i = other.i;
    if (l$i != lOther$i) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    final l$c1 = c1;
    final lOther$c1 = other.c1;
    if (l$c1 != lOther$c1) {
      return false;
    }
    final l$c2 = c2;
    final lOther$c2 = other.c2;
    if (l$c2 != lOther$c2) {
      return false;
    }
    final l$c3 = c3;
    final lOther$c3 = other.c3;
    if (l$c3 != lOther$c3) {
      return false;
    }
    final l$c3s = c3s;
    final lOther$c3s = other.c3s;
    if (l$c3s != null && lOther$c3s != null) {
      if (l$c3s.length != lOther$c3s.length) {
        return false;
      }
      for (int i = 0; i < l$c3s.length; i++) {
        final l$c3s$entry = l$c3s[i];
        final lOther$c3s$entry = lOther$c3s[i];
        if (l$c3s$entry != lOther$c3s$entry) {
          return false;
        }
      }
    } else if (l$c3s != lOther$c3s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchScalars on Query$FetchScalars {
  CopyWith$Query$FetchScalars<Query$FetchScalars> get copyWith =>
      CopyWith$Query$FetchScalars(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchScalars<TRes> {
  factory CopyWith$Query$FetchScalars(
    Query$FetchScalars instance,
    TRes Function(Query$FetchScalars) then,
  ) = _CopyWithImpl$Query$FetchScalars;

  factory CopyWith$Query$FetchScalars.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchScalars;

  TRes call({
    int? i,
    int? id,
    String? s,
    String? c1,
    DateTime? c2,
    Fobbob? c3,
    List<Fobbob?>? c3s,
  });
}

class _CopyWithImpl$Query$FetchScalars<TRes>
    implements CopyWith$Query$FetchScalars<TRes> {
  _CopyWithImpl$Query$FetchScalars(
    this._instance,
    this._then,
  );

  final Query$FetchScalars _instance;

  final TRes Function(Query$FetchScalars) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? i = _undefined,
    Object? id = _undefined,
    Object? s = _undefined,
    Object? c1 = _undefined,
    Object? c2 = _undefined,
    Object? c3 = _undefined,
    Object? c3s = _undefined,
  }) =>
      _then(Query$FetchScalars(
        i: i == _undefined ? _instance.i : (i as int?),
        id: id == _undefined ? _instance.id : (id as int?),
        s: s == _undefined ? _instance.s : (s as String?),
        c1: c1 == _undefined ? _instance.c1 : (c1 as String?),
        c2: c2 == _undefined ? _instance.c2 : (c2 as DateTime?),
        c3: c3 == _undefined ? _instance.c3 : (c3 as Fobbob?),
        c3s: c3s == _undefined ? _instance.c3s : (c3s as List<Fobbob?>?),
      ));
}

class _CopyWithStubImpl$Query$FetchScalars<TRes>
    implements CopyWith$Query$FetchScalars<TRes> {
  _CopyWithStubImpl$Query$FetchScalars(this._res);

  TRes _res;

  call({
    int? i,
    int? id,
    String? s,
    String? c1,
    DateTime? c2,
    Fobbob? c3,
    List<Fobbob?>? c3s,
  }) =>
      _res;
}

const documentNodeQueryFetchScalars = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchScalars'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'i'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'c1'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'c2'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'c3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'c3s'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
const possibleTypesMap = <String, Set<String>>{};
