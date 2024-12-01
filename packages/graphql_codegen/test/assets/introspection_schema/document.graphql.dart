import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Fragment$FullType {
  Fragment$FullType({
    required this.kind,
    this.name,
    this.description,
    this.fields,
    this.inputFields,
    this.interfaces,
    this.enumValues,
    this.possibleTypes,
    this.$__typename = '__Type',
  });

  factory Fragment$FullType.fromJson(Map<String, dynamic> json) {
    final l$kind = json['kind'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$fields = json['fields'];
    final l$inputFields = json['inputFields'];
    final l$interfaces = json['interfaces'];
    final l$enumValues = json['enumValues'];
    final l$possibleTypes = json['possibleTypes'];
    final l$$__typename = json['__typename'];
    return Fragment$FullType(
      kind: fromJson$Enum$__TypeKind((l$kind as String)),
      name: (l$name as String?),
      description: (l$description as String?),
      fields: (l$fields as List<dynamic>?)
          ?.map((e) =>
              Fragment$FullType$fields.fromJson((e as Map<String, dynamic>)))
          .toList(),
      inputFields: (l$inputFields as List<dynamic>?)
          ?.map(
              (e) => Fragment$InputValue.fromJson((e as Map<String, dynamic>)))
          .toList(),
      interfaces: (l$interfaces as List<dynamic>?)
          ?.map((e) => Fragment$TypeRef.fromJson((e as Map<String, dynamic>)))
          .toList(),
      enumValues: (l$enumValues as List<dynamic>?)
          ?.map((e) => Fragment$FullType$enumValues.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      possibleTypes: (l$possibleTypes as List<dynamic>?)
          ?.map((e) => Fragment$TypeRef.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$__TypeKind kind;

  final String? name;

  final String? description;

  final List<Fragment$FullType$fields>? fields;

  final List<Fragment$InputValue>? inputFields;

  final List<Fragment$TypeRef>? interfaces;

  final List<Fragment$FullType$enumValues>? enumValues;

  final List<Fragment$TypeRef>? possibleTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kind = kind;
    _resultData['kind'] = toJson$Enum$__TypeKind(l$kind);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$fields = fields;
    _resultData['fields'] = l$fields?.map((e) => e.toJson()).toList();
    final l$inputFields = inputFields;
    _resultData['inputFields'] = l$inputFields?.map((e) => e.toJson()).toList();
    final l$interfaces = interfaces;
    _resultData['interfaces'] = l$interfaces?.map((e) => e.toJson()).toList();
    final l$enumValues = enumValues;
    _resultData['enumValues'] = l$enumValues?.map((e) => e.toJson()).toList();
    final l$possibleTypes = possibleTypes;
    _resultData['possibleTypes'] =
        l$possibleTypes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kind = kind;
    final l$name = name;
    final l$description = description;
    final l$fields = fields;
    final l$inputFields = inputFields;
    final l$interfaces = interfaces;
    final l$enumValues = enumValues;
    final l$possibleTypes = possibleTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kind,
      l$name,
      l$description,
      l$fields == null ? null : Object.hashAll(l$fields.map((v) => v)),
      l$inputFields == null
          ? null
          : Object.hashAll(l$inputFields.map((v) => v)),
      l$interfaces == null ? null : Object.hashAll(l$interfaces.map((v) => v)),
      l$enumValues == null ? null : Object.hashAll(l$enumValues.map((v) => v)),
      l$possibleTypes == null
          ? null
          : Object.hashAll(l$possibleTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullType || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$inputFields = inputFields;
    final lOther$inputFields = other.inputFields;
    if (l$inputFields != null && lOther$inputFields != null) {
      if (l$inputFields.length != lOther$inputFields.length) {
        return false;
      }
      for (int i = 0; i < l$inputFields.length; i++) {
        final l$inputFields$entry = l$inputFields[i];
        final lOther$inputFields$entry = lOther$inputFields[i];
        if (l$inputFields$entry != lOther$inputFields$entry) {
          return false;
        }
      }
    } else if (l$inputFields != lOther$inputFields) {
      return false;
    }
    final l$interfaces = interfaces;
    final lOther$interfaces = other.interfaces;
    if (l$interfaces != null && lOther$interfaces != null) {
      if (l$interfaces.length != lOther$interfaces.length) {
        return false;
      }
      for (int i = 0; i < l$interfaces.length; i++) {
        final l$interfaces$entry = l$interfaces[i];
        final lOther$interfaces$entry = lOther$interfaces[i];
        if (l$interfaces$entry != lOther$interfaces$entry) {
          return false;
        }
      }
    } else if (l$interfaces != lOther$interfaces) {
      return false;
    }
    final l$enumValues = enumValues;
    final lOther$enumValues = other.enumValues;
    if (l$enumValues != null && lOther$enumValues != null) {
      if (l$enumValues.length != lOther$enumValues.length) {
        return false;
      }
      for (int i = 0; i < l$enumValues.length; i++) {
        final l$enumValues$entry = l$enumValues[i];
        final lOther$enumValues$entry = lOther$enumValues[i];
        if (l$enumValues$entry != lOther$enumValues$entry) {
          return false;
        }
      }
    } else if (l$enumValues != lOther$enumValues) {
      return false;
    }
    final l$possibleTypes = possibleTypes;
    final lOther$possibleTypes = other.possibleTypes;
    if (l$possibleTypes != null && lOther$possibleTypes != null) {
      if (l$possibleTypes.length != lOther$possibleTypes.length) {
        return false;
      }
      for (int i = 0; i < l$possibleTypes.length; i++) {
        final l$possibleTypes$entry = l$possibleTypes[i];
        final lOther$possibleTypes$entry = lOther$possibleTypes[i];
        if (l$possibleTypes$entry != lOther$possibleTypes$entry) {
          return false;
        }
      }
    } else if (l$possibleTypes != lOther$possibleTypes) {
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

extension UtilityExtension$Fragment$FullType on Fragment$FullType {
  CopyWith$Fragment$FullType<Fragment$FullType> get copyWith =>
      CopyWith$Fragment$FullType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FullType<TRes> {
  factory CopyWith$Fragment$FullType(
    Fragment$FullType instance,
    TRes Function(Fragment$FullType) then,
  ) = _CopyWithImpl$Fragment$FullType;

  factory CopyWith$Fragment$FullType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullType;

  TRes call({
    Enum$__TypeKind? kind,
    String? name,
    String? description,
    List<Fragment$FullType$fields>? fields,
    List<Fragment$InputValue>? inputFields,
    List<Fragment$TypeRef>? interfaces,
    List<Fragment$FullType$enumValues>? enumValues,
    List<Fragment$TypeRef>? possibleTypes,
    String? $__typename,
  });
  TRes fields(
      Iterable<Fragment$FullType$fields>? Function(
              Iterable<
                  CopyWith$Fragment$FullType$fields<Fragment$FullType$fields>>?)
          _fn);
  TRes inputFields(
      Iterable<Fragment$InputValue>? Function(
              Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>?)
          _fn);
  TRes interfaces(
      Iterable<Fragment$TypeRef>? Function(
              Iterable<CopyWith$Fragment$TypeRef<Fragment$TypeRef>>?)
          _fn);
  TRes enumValues(
      Iterable<Fragment$FullType$enumValues>? Function(
              Iterable<
                  CopyWith$Fragment$FullType$enumValues<
                      Fragment$FullType$enumValues>>?)
          _fn);
  TRes possibleTypes(
      Iterable<Fragment$TypeRef>? Function(
              Iterable<CopyWith$Fragment$TypeRef<Fragment$TypeRef>>?)
          _fn);
}

class _CopyWithImpl$Fragment$FullType<TRes>
    implements CopyWith$Fragment$FullType<TRes> {
  _CopyWithImpl$Fragment$FullType(
    this._instance,
    this._then,
  );

  final Fragment$FullType _instance;

  final TRes Function(Fragment$FullType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kind = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? fields = _undefined,
    Object? inputFields = _undefined,
    Object? interfaces = _undefined,
    Object? enumValues = _undefined,
    Object? possibleTypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullType(
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$__TypeKind),
        name: name == _undefined ? _instance.name : (name as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        fields: fields == _undefined
            ? _instance.fields
            : (fields as List<Fragment$FullType$fields>?),
        inputFields: inputFields == _undefined
            ? _instance.inputFields
            : (inputFields as List<Fragment$InputValue>?),
        interfaces: interfaces == _undefined
            ? _instance.interfaces
            : (interfaces as List<Fragment$TypeRef>?),
        enumValues: enumValues == _undefined
            ? _instance.enumValues
            : (enumValues as List<Fragment$FullType$enumValues>?),
        possibleTypes: possibleTypes == _undefined
            ? _instance.possibleTypes
            : (possibleTypes as List<Fragment$TypeRef>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fields(
          Iterable<Fragment$FullType$fields>? Function(
                  Iterable<
                      CopyWith$Fragment$FullType$fields<
                          Fragment$FullType$fields>>?)
              _fn) =>
      call(
          fields: _fn(
              _instance.fields?.map((e) => CopyWith$Fragment$FullType$fields(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes inputFields(
          Iterable<Fragment$InputValue>? Function(
                  Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>?)
              _fn) =>
      call(
          inputFields: _fn(
              _instance.inputFields?.map((e) => CopyWith$Fragment$InputValue(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes interfaces(
          Iterable<Fragment$TypeRef>? Function(
                  Iterable<CopyWith$Fragment$TypeRef<Fragment$TypeRef>>?)
              _fn) =>
      call(
          interfaces:
              _fn(_instance.interfaces?.map((e) => CopyWith$Fragment$TypeRef(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes enumValues(
          Iterable<Fragment$FullType$enumValues>? Function(
                  Iterable<
                      CopyWith$Fragment$FullType$enumValues<
                          Fragment$FullType$enumValues>>?)
              _fn) =>
      call(
          enumValues: _fn(_instance.enumValues
              ?.map((e) => CopyWith$Fragment$FullType$enumValues(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes possibleTypes(
          Iterable<Fragment$TypeRef>? Function(
                  Iterable<CopyWith$Fragment$TypeRef<Fragment$TypeRef>>?)
              _fn) =>
      call(
          possibleTypes:
              _fn(_instance.possibleTypes?.map((e) => CopyWith$Fragment$TypeRef(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$FullType<TRes>
    implements CopyWith$Fragment$FullType<TRes> {
  _CopyWithStubImpl$Fragment$FullType(this._res);

  TRes _res;

  call({
    Enum$__TypeKind? kind,
    String? name,
    String? description,
    List<Fragment$FullType$fields>? fields,
    List<Fragment$InputValue>? inputFields,
    List<Fragment$TypeRef>? interfaces,
    List<Fragment$FullType$enumValues>? enumValues,
    List<Fragment$TypeRef>? possibleTypes,
    String? $__typename,
  }) =>
      _res;

  fields(_fn) => _res;

  inputFields(_fn) => _res;

  interfaces(_fn) => _res;

  enumValues(_fn) => _res;

  possibleTypes(_fn) => _res;
}

const fragmentDefinitionFullType = FragmentDefinitionNode(
  name: NameNode(value: 'FullType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: '__Type'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'kind'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fields'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'includeDeprecated'),
          value: BooleanValueNode(value: true),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'description'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'args'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'InputValue'),
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
          name: NameNode(value: 'type'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TypeRef'),
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
          name: NameNode(value: 'isDeprecated'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'deprecationReason'),
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
      name: NameNode(value: 'inputFields'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'InputValue'),
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
      name: NameNode(value: 'interfaces'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TypeRef'),
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
      name: NameNode(value: 'enumValues'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'includeDeprecated'),
          value: BooleanValueNode(value: true),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'description'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isDeprecated'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'deprecationReason'),
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
      name: NameNode(value: 'possibleTypes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TypeRef'),
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
const documentNodeFragmentFullType = DocumentNode(definitions: [
  fragmentDefinitionFullType,
  fragmentDefinitionInputValue,
  fragmentDefinitionTypeRef,
]);

class Fragment$FullType$fields {
  Fragment$FullType$fields({
    required this.name,
    this.description,
    required this.args,
    required this.type,
    required this.isDeprecated,
    this.deprecationReason,
    this.$__typename = '__Field',
  });

  factory Fragment$FullType$fields.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$args = json['args'];
    final l$type = json['type'];
    final l$isDeprecated = json['isDeprecated'];
    final l$deprecationReason = json['deprecationReason'];
    final l$$__typename = json['__typename'];
    return Fragment$FullType$fields(
      name: (l$name as String),
      description: (l$description as String?),
      args: (l$args as List<dynamic>)
          .map((e) => Fragment$InputValue.fromJson((e as Map<String, dynamic>)))
          .toList(),
      type: Fragment$TypeRef.fromJson((l$type as Map<String, dynamic>)),
      isDeprecated: (l$isDeprecated as bool),
      deprecationReason: (l$deprecationReason as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final List<Fragment$InputValue> args;

  final Fragment$TypeRef type;

  final bool isDeprecated;

  final String? deprecationReason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$args = args;
    _resultData['args'] = l$args.map((e) => e.toJson()).toList();
    final l$type = type;
    _resultData['type'] = l$type.toJson();
    final l$isDeprecated = isDeprecated;
    _resultData['isDeprecated'] = l$isDeprecated;
    final l$deprecationReason = deprecationReason;
    _resultData['deprecationReason'] = l$deprecationReason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$args = args;
    final l$type = type;
    final l$isDeprecated = isDeprecated;
    final l$deprecationReason = deprecationReason;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      Object.hashAll(l$args.map((v) => v)),
      l$type,
      l$isDeprecated,
      l$deprecationReason,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullType$fields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) {
      return false;
    }
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) {
        return false;
      }
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isDeprecated = isDeprecated;
    final lOther$isDeprecated = other.isDeprecated;
    if (l$isDeprecated != lOther$isDeprecated) {
      return false;
    }
    final l$deprecationReason = deprecationReason;
    final lOther$deprecationReason = other.deprecationReason;
    if (l$deprecationReason != lOther$deprecationReason) {
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

extension UtilityExtension$Fragment$FullType$fields
    on Fragment$FullType$fields {
  CopyWith$Fragment$FullType$fields<Fragment$FullType$fields> get copyWith =>
      CopyWith$Fragment$FullType$fields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FullType$fields<TRes> {
  factory CopyWith$Fragment$FullType$fields(
    Fragment$FullType$fields instance,
    TRes Function(Fragment$FullType$fields) then,
  ) = _CopyWithImpl$Fragment$FullType$fields;

  factory CopyWith$Fragment$FullType$fields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullType$fields;

  TRes call({
    String? name,
    String? description,
    List<Fragment$InputValue>? args,
    Fragment$TypeRef? type,
    bool? isDeprecated,
    String? deprecationReason,
    String? $__typename,
  });
  TRes args(
      Iterable<Fragment$InputValue> Function(
              Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>)
          _fn);
  CopyWith$Fragment$TypeRef<TRes> get type;
}

class _CopyWithImpl$Fragment$FullType$fields<TRes>
    implements CopyWith$Fragment$FullType$fields<TRes> {
  _CopyWithImpl$Fragment$FullType$fields(
    this._instance,
    this._then,
  );

  final Fragment$FullType$fields _instance;

  final TRes Function(Fragment$FullType$fields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? args = _undefined,
    Object? type = _undefined,
    Object? isDeprecated = _undefined,
    Object? deprecationReason = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullType$fields(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        args: args == _undefined || args == null
            ? _instance.args
            : (args as List<Fragment$InputValue>),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Fragment$TypeRef),
        isDeprecated: isDeprecated == _undefined || isDeprecated == null
            ? _instance.isDeprecated
            : (isDeprecated as bool),
        deprecationReason: deprecationReason == _undefined
            ? _instance.deprecationReason
            : (deprecationReason as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes args(
          Iterable<Fragment$InputValue> Function(
                  Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) => CopyWith$Fragment$InputValue(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$TypeRef<TRes> get type {
    final local$type = _instance.type;
    return CopyWith$Fragment$TypeRef(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Fragment$FullType$fields<TRes>
    implements CopyWith$Fragment$FullType$fields<TRes> {
  _CopyWithStubImpl$Fragment$FullType$fields(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    List<Fragment$InputValue>? args,
    Fragment$TypeRef? type,
    bool? isDeprecated,
    String? deprecationReason,
    String? $__typename,
  }) =>
      _res;

  args(_fn) => _res;

  CopyWith$Fragment$TypeRef<TRes> get type =>
      CopyWith$Fragment$TypeRef.stub(_res);
}

class Fragment$FullType$enumValues {
  Fragment$FullType$enumValues({
    required this.name,
    this.description,
    required this.isDeprecated,
    this.deprecationReason,
    this.$__typename = '__EnumValue',
  });

  factory Fragment$FullType$enumValues.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$isDeprecated = json['isDeprecated'];
    final l$deprecationReason = json['deprecationReason'];
    final l$$__typename = json['__typename'];
    return Fragment$FullType$enumValues(
      name: (l$name as String),
      description: (l$description as String?),
      isDeprecated: (l$isDeprecated as bool),
      deprecationReason: (l$deprecationReason as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final bool isDeprecated;

  final String? deprecationReason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isDeprecated = isDeprecated;
    _resultData['isDeprecated'] = l$isDeprecated;
    final l$deprecationReason = deprecationReason;
    _resultData['deprecationReason'] = l$deprecationReason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$isDeprecated = isDeprecated;
    final l$deprecationReason = deprecationReason;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      l$isDeprecated,
      l$deprecationReason,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullType$enumValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isDeprecated = isDeprecated;
    final lOther$isDeprecated = other.isDeprecated;
    if (l$isDeprecated != lOther$isDeprecated) {
      return false;
    }
    final l$deprecationReason = deprecationReason;
    final lOther$deprecationReason = other.deprecationReason;
    if (l$deprecationReason != lOther$deprecationReason) {
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

extension UtilityExtension$Fragment$FullType$enumValues
    on Fragment$FullType$enumValues {
  CopyWith$Fragment$FullType$enumValues<Fragment$FullType$enumValues>
      get copyWith => CopyWith$Fragment$FullType$enumValues(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullType$enumValues<TRes> {
  factory CopyWith$Fragment$FullType$enumValues(
    Fragment$FullType$enumValues instance,
    TRes Function(Fragment$FullType$enumValues) then,
  ) = _CopyWithImpl$Fragment$FullType$enumValues;

  factory CopyWith$Fragment$FullType$enumValues.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullType$enumValues;

  TRes call({
    String? name,
    String? description,
    bool? isDeprecated,
    String? deprecationReason,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullType$enumValues<TRes>
    implements CopyWith$Fragment$FullType$enumValues<TRes> {
  _CopyWithImpl$Fragment$FullType$enumValues(
    this._instance,
    this._then,
  );

  final Fragment$FullType$enumValues _instance;

  final TRes Function(Fragment$FullType$enumValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? isDeprecated = _undefined,
    Object? deprecationReason = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullType$enumValues(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isDeprecated: isDeprecated == _undefined || isDeprecated == null
            ? _instance.isDeprecated
            : (isDeprecated as bool),
        deprecationReason: deprecationReason == _undefined
            ? _instance.deprecationReason
            : (deprecationReason as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullType$enumValues<TRes>
    implements CopyWith$Fragment$FullType$enumValues<TRes> {
  _CopyWithStubImpl$Fragment$FullType$enumValues(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    bool? isDeprecated,
    String? deprecationReason,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$TypeRef {
  Fragment$TypeRef({
    required this.kind,
    this.name,
    this.$__typename = '__Type',
  });

  factory Fragment$TypeRef.fromJson(Map<String, dynamic> json) {
    final l$kind = json['kind'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$TypeRef(
      kind: fromJson$Enum$__TypeKind((l$kind as String)),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$__TypeKind kind;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kind = kind;
    _resultData['kind'] = toJson$Enum$__TypeKind(l$kind);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kind = kind;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kind,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TypeRef || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$TypeRef on Fragment$TypeRef {
  CopyWith$Fragment$TypeRef<Fragment$TypeRef> get copyWith =>
      CopyWith$Fragment$TypeRef(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TypeRef<TRes> {
  factory CopyWith$Fragment$TypeRef(
    Fragment$TypeRef instance,
    TRes Function(Fragment$TypeRef) then,
  ) = _CopyWithImpl$Fragment$TypeRef;

  factory CopyWith$Fragment$TypeRef.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TypeRef;

  TRes call({
    Enum$__TypeKind? kind,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TypeRef<TRes>
    implements CopyWith$Fragment$TypeRef<TRes> {
  _CopyWithImpl$Fragment$TypeRef(
    this._instance,
    this._then,
  );

  final Fragment$TypeRef _instance;

  final TRes Function(Fragment$TypeRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kind = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TypeRef(
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$__TypeKind),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TypeRef<TRes>
    implements CopyWith$Fragment$TypeRef<TRes> {
  _CopyWithStubImpl$Fragment$TypeRef(this._res);

  TRes _res;

  call({
    Enum$__TypeKind? kind,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTypeRef = FragmentDefinitionNode(
  name: NameNode(value: 'TypeRef'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: '__Type'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'kind'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
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
);
const documentNodeFragmentTypeRef = DocumentNode(definitions: [
  fragmentDefinitionTypeRef,
]);

class Fragment$InputValue {
  Fragment$InputValue({
    required this.name,
    this.description,
    required this.type,
    this.defaultValue,
    this.$__typename = '__InputValue',
  });

  factory Fragment$InputValue.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$defaultValue = json['defaultValue'];
    final l$$__typename = json['__typename'];
    return Fragment$InputValue(
      name: (l$name as String),
      description: (l$description as String?),
      type: Fragment$TypeRef.fromJson((l$type as Map<String, dynamic>)),
      defaultValue: (l$defaultValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final Fragment$TypeRef type;

  final String? defaultValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$type = type;
    _resultData['type'] = l$type.toJson();
    final l$defaultValue = defaultValue;
    _resultData['defaultValue'] = l$defaultValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$defaultValue = defaultValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      l$type,
      l$defaultValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$InputValue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$defaultValue = defaultValue;
    final lOther$defaultValue = other.defaultValue;
    if (l$defaultValue != lOther$defaultValue) {
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

extension UtilityExtension$Fragment$InputValue on Fragment$InputValue {
  CopyWith$Fragment$InputValue<Fragment$InputValue> get copyWith =>
      CopyWith$Fragment$InputValue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$InputValue<TRes> {
  factory CopyWith$Fragment$InputValue(
    Fragment$InputValue instance,
    TRes Function(Fragment$InputValue) then,
  ) = _CopyWithImpl$Fragment$InputValue;

  factory CopyWith$Fragment$InputValue.stub(TRes res) =
      _CopyWithStubImpl$Fragment$InputValue;

  TRes call({
    String? name,
    String? description,
    Fragment$TypeRef? type,
    String? defaultValue,
    String? $__typename,
  });
  CopyWith$Fragment$TypeRef<TRes> get type;
}

class _CopyWithImpl$Fragment$InputValue<TRes>
    implements CopyWith$Fragment$InputValue<TRes> {
  _CopyWithImpl$Fragment$InputValue(
    this._instance,
    this._then,
  );

  final Fragment$InputValue _instance;

  final TRes Function(Fragment$InputValue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? defaultValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$InputValue(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Fragment$TypeRef),
        defaultValue: defaultValue == _undefined
            ? _instance.defaultValue
            : (defaultValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TypeRef<TRes> get type {
    final local$type = _instance.type;
    return CopyWith$Fragment$TypeRef(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Fragment$InputValue<TRes>
    implements CopyWith$Fragment$InputValue<TRes> {
  _CopyWithStubImpl$Fragment$InputValue(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    Fragment$TypeRef? type,
    String? defaultValue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TypeRef<TRes> get type =>
      CopyWith$Fragment$TypeRef.stub(_res);
}

const fragmentDefinitionInputValue = FragmentDefinitionNode(
  name: NameNode(value: 'InputValue'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: '__InputValue'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TypeRef'),
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
      name: NameNode(value: 'defaultValue'),
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
);
const documentNodeFragmentInputValue = DocumentNode(definitions: [
  fragmentDefinitionInputValue,
  fragmentDefinitionTypeRef,
]);

class Query$Q {
  Query$Q({
    this.hello,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$hello = json['hello'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      hello: (l$hello as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? hello;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hello = hello;
    _resultData['hello'] = l$hello;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hello = hello;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hello,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Q || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hello = hello;
    final lOther$hello = other.hello;
    if (l$hello != lOther$hello) {
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

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({
    String? hello,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hello = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        hello: hello == _undefined ? _instance.hello : (hello as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    String? hello,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'hello'),
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
]);

class Query$Introspection {
  Query$Introspection({
    required this.$__schema,
    this.$__type,
    this.$__typename = 'Query',
  });

  factory Query$Introspection.fromJson(Map<String, dynamic> json) {
    final l$$__schema = json['__schema'];
    final l$$__type = json['__type'];
    final l$$__typename = json['__typename'];
    return Query$Introspection(
      $__schema: Query$Introspection$__schema.fromJson(
          (l$$__schema as Map<String, dynamic>)),
      $__type: l$$__type == null
          ? null
          : Fragment$FullType.fromJson((l$$__type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Introspection$__schema $__schema;

  final Fragment$FullType? $__type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__schema = $__schema;
    _resultData['__schema'] = l$$__schema.toJson();
    final l$$__type = $__type;
    _resultData['__type'] = l$$__type?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__schema = $__schema;
    final l$$__type = $__type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$__schema,
      l$$__type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__schema = $__schema;
    final lOther$$__schema = other.$__schema;
    if (l$$__schema != lOther$$__schema) {
      return false;
    }
    final l$$__type = $__type;
    final lOther$$__type = other.$__type;
    if (l$$__type != lOther$$__type) {
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

extension UtilityExtension$Query$Introspection on Query$Introspection {
  CopyWith$Query$Introspection<Query$Introspection> get copyWith =>
      CopyWith$Query$Introspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Introspection<TRes> {
  factory CopyWith$Query$Introspection(
    Query$Introspection instance,
    TRes Function(Query$Introspection) then,
  ) = _CopyWithImpl$Query$Introspection;

  factory CopyWith$Query$Introspection.stub(TRes res) =
      _CopyWithStubImpl$Query$Introspection;

  TRes call({
    Query$Introspection$__schema? $__schema,
    Fragment$FullType? $__type,
    String? $__typename,
  });
  CopyWith$Query$Introspection$__schema<TRes> get $__schema;
  CopyWith$Fragment$FullType<TRes> get $__type;
}

class _CopyWithImpl$Query$Introspection<TRes>
    implements CopyWith$Query$Introspection<TRes> {
  _CopyWithImpl$Query$Introspection(
    this._instance,
    this._then,
  );

  final Query$Introspection _instance;

  final TRes Function(Query$Introspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__schema = _undefined,
    Object? $__type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection(
        $__schema: $__schema == _undefined || $__schema == null
            ? _instance.$__schema
            : ($__schema as Query$Introspection$__schema),
        $__type: $__type == _undefined
            ? _instance.$__type
            : ($__type as Fragment$FullType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Introspection$__schema<TRes> get $__schema {
    final local$$__schema = _instance.$__schema;
    return CopyWith$Query$Introspection$__schema(
        local$$__schema, (e) => call($__schema: e));
  }

  CopyWith$Fragment$FullType<TRes> get $__type {
    final local$$__type = _instance.$__type;
    return local$$__type == null
        ? CopyWith$Fragment$FullType.stub(_then(_instance))
        : CopyWith$Fragment$FullType(local$$__type, (e) => call($__type: e));
  }
}

class _CopyWithStubImpl$Query$Introspection<TRes>
    implements CopyWith$Query$Introspection<TRes> {
  _CopyWithStubImpl$Query$Introspection(this._res);

  TRes _res;

  call({
    Query$Introspection$__schema? $__schema,
    Fragment$FullType? $__type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Introspection$__schema<TRes> get $__schema =>
      CopyWith$Query$Introspection$__schema.stub(_res);

  CopyWith$Fragment$FullType<TRes> get $__type =>
      CopyWith$Fragment$FullType.stub(_res);
}

const documentNodeQueryIntrospection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Introspection'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__schema'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'queryType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'mutationType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'subscriptionType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'types'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FullType'),
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
            name: NameNode(value: 'directives'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locations'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'args'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'InputValue'),
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
        name: NameNode(value: '__type'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: StringValueNode(
              value: 'Query',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'FullType'),
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
  ),
  fragmentDefinitionFullType,
  fragmentDefinitionInputValue,
  fragmentDefinitionTypeRef,
]);

class Query$Introspection$__schema {
  Query$Introspection$__schema({
    required this.queryType,
    this.mutationType,
    this.subscriptionType,
    required this.types,
    required this.directives,
    this.$__typename = '__Schema',
  });

  factory Query$Introspection$__schema.fromJson(Map<String, dynamic> json) {
    final l$queryType = json['queryType'];
    final l$mutationType = json['mutationType'];
    final l$subscriptionType = json['subscriptionType'];
    final l$types = json['types'];
    final l$directives = json['directives'];
    final l$$__typename = json['__typename'];
    return Query$Introspection$__schema(
      queryType: Query$Introspection$__schema$queryType.fromJson(
          (l$queryType as Map<String, dynamic>)),
      mutationType: l$mutationType == null
          ? null
          : Query$Introspection$__schema$mutationType.fromJson(
              (l$mutationType as Map<String, dynamic>)),
      subscriptionType: l$subscriptionType == null
          ? null
          : Query$Introspection$__schema$subscriptionType.fromJson(
              (l$subscriptionType as Map<String, dynamic>)),
      types: (l$types as List<dynamic>)
          .map((e) => Fragment$FullType.fromJson((e as Map<String, dynamic>)))
          .toList(),
      directives: (l$directives as List<dynamic>)
          .map((e) => Query$Introspection$__schema$directives.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Introspection$__schema$queryType queryType;

  final Query$Introspection$__schema$mutationType? mutationType;

  final Query$Introspection$__schema$subscriptionType? subscriptionType;

  final List<Fragment$FullType> types;

  final List<Query$Introspection$__schema$directives> directives;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$queryType = queryType;
    _resultData['queryType'] = l$queryType.toJson();
    final l$mutationType = mutationType;
    _resultData['mutationType'] = l$mutationType?.toJson();
    final l$subscriptionType = subscriptionType;
    _resultData['subscriptionType'] = l$subscriptionType?.toJson();
    final l$types = types;
    _resultData['types'] = l$types.map((e) => e.toJson()).toList();
    final l$directives = directives;
    _resultData['directives'] = l$directives.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$queryType = queryType;
    final l$mutationType = mutationType;
    final l$subscriptionType = subscriptionType;
    final l$types = types;
    final l$directives = directives;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryType,
      l$mutationType,
      l$subscriptionType,
      Object.hashAll(l$types.map((v) => v)),
      Object.hashAll(l$directives.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection$__schema ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$queryType = queryType;
    final lOther$queryType = other.queryType;
    if (l$queryType != lOther$queryType) {
      return false;
    }
    final l$mutationType = mutationType;
    final lOther$mutationType = other.mutationType;
    if (l$mutationType != lOther$mutationType) {
      return false;
    }
    final l$subscriptionType = subscriptionType;
    final lOther$subscriptionType = other.subscriptionType;
    if (l$subscriptionType != lOther$subscriptionType) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (l$types.length != lOther$types.length) {
      return false;
    }
    for (int i = 0; i < l$types.length; i++) {
      final l$types$entry = l$types[i];
      final lOther$types$entry = lOther$types[i];
      if (l$types$entry != lOther$types$entry) {
        return false;
      }
    }
    final l$directives = directives;
    final lOther$directives = other.directives;
    if (l$directives.length != lOther$directives.length) {
      return false;
    }
    for (int i = 0; i < l$directives.length; i++) {
      final l$directives$entry = l$directives[i];
      final lOther$directives$entry = lOther$directives[i];
      if (l$directives$entry != lOther$directives$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Introspection$__schema
    on Query$Introspection$__schema {
  CopyWith$Query$Introspection$__schema<Query$Introspection$__schema>
      get copyWith => CopyWith$Query$Introspection$__schema(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Introspection$__schema<TRes> {
  factory CopyWith$Query$Introspection$__schema(
    Query$Introspection$__schema instance,
    TRes Function(Query$Introspection$__schema) then,
  ) = _CopyWithImpl$Query$Introspection$__schema;

  factory CopyWith$Query$Introspection$__schema.stub(TRes res) =
      _CopyWithStubImpl$Query$Introspection$__schema;

  TRes call({
    Query$Introspection$__schema$queryType? queryType,
    Query$Introspection$__schema$mutationType? mutationType,
    Query$Introspection$__schema$subscriptionType? subscriptionType,
    List<Fragment$FullType>? types,
    List<Query$Introspection$__schema$directives>? directives,
    String? $__typename,
  });
  CopyWith$Query$Introspection$__schema$queryType<TRes> get queryType;
  CopyWith$Query$Introspection$__schema$mutationType<TRes> get mutationType;
  CopyWith$Query$Introspection$__schema$subscriptionType<TRes>
      get subscriptionType;
  TRes types(
      Iterable<Fragment$FullType> Function(
              Iterable<CopyWith$Fragment$FullType<Fragment$FullType>>)
          _fn);
  TRes directives(
      Iterable<Query$Introspection$__schema$directives> Function(
              Iterable<
                  CopyWith$Query$Introspection$__schema$directives<
                      Query$Introspection$__schema$directives>>)
          _fn);
}

class _CopyWithImpl$Query$Introspection$__schema<TRes>
    implements CopyWith$Query$Introspection$__schema<TRes> {
  _CopyWithImpl$Query$Introspection$__schema(
    this._instance,
    this._then,
  );

  final Query$Introspection$__schema _instance;

  final TRes Function(Query$Introspection$__schema) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? queryType = _undefined,
    Object? mutationType = _undefined,
    Object? subscriptionType = _undefined,
    Object? types = _undefined,
    Object? directives = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection$__schema(
        queryType: queryType == _undefined || queryType == null
            ? _instance.queryType
            : (queryType as Query$Introspection$__schema$queryType),
        mutationType: mutationType == _undefined
            ? _instance.mutationType
            : (mutationType as Query$Introspection$__schema$mutationType?),
        subscriptionType: subscriptionType == _undefined
            ? _instance.subscriptionType
            : (subscriptionType
                as Query$Introspection$__schema$subscriptionType?),
        types: types == _undefined || types == null
            ? _instance.types
            : (types as List<Fragment$FullType>),
        directives: directives == _undefined || directives == null
            ? _instance.directives
            : (directives as List<Query$Introspection$__schema$directives>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Introspection$__schema$queryType<TRes> get queryType {
    final local$queryType = _instance.queryType;
    return CopyWith$Query$Introspection$__schema$queryType(
        local$queryType, (e) => call(queryType: e));
  }

  CopyWith$Query$Introspection$__schema$mutationType<TRes> get mutationType {
    final local$mutationType = _instance.mutationType;
    return local$mutationType == null
        ? CopyWith$Query$Introspection$__schema$mutationType.stub(
            _then(_instance))
        : CopyWith$Query$Introspection$__schema$mutationType(
            local$mutationType, (e) => call(mutationType: e));
  }

  CopyWith$Query$Introspection$__schema$subscriptionType<TRes>
      get subscriptionType {
    final local$subscriptionType = _instance.subscriptionType;
    return local$subscriptionType == null
        ? CopyWith$Query$Introspection$__schema$subscriptionType.stub(
            _then(_instance))
        : CopyWith$Query$Introspection$__schema$subscriptionType(
            local$subscriptionType, (e) => call(subscriptionType: e));
  }

  TRes types(
          Iterable<Fragment$FullType> Function(
                  Iterable<CopyWith$Fragment$FullType<Fragment$FullType>>)
              _fn) =>
      call(
          types: _fn(_instance.types.map((e) => CopyWith$Fragment$FullType(
                e,
                (i) => i,
              ))).toList());

  TRes directives(
          Iterable<Query$Introspection$__schema$directives> Function(
                  Iterable<
                      CopyWith$Query$Introspection$__schema$directives<
                          Query$Introspection$__schema$directives>>)
              _fn) =>
      call(
          directives: _fn(_instance.directives
              .map((e) => CopyWith$Query$Introspection$__schema$directives(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Introspection$__schema<TRes>
    implements CopyWith$Query$Introspection$__schema<TRes> {
  _CopyWithStubImpl$Query$Introspection$__schema(this._res);

  TRes _res;

  call({
    Query$Introspection$__schema$queryType? queryType,
    Query$Introspection$__schema$mutationType? mutationType,
    Query$Introspection$__schema$subscriptionType? subscriptionType,
    List<Fragment$FullType>? types,
    List<Query$Introspection$__schema$directives>? directives,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Introspection$__schema$queryType<TRes> get queryType =>
      CopyWith$Query$Introspection$__schema$queryType.stub(_res);

  CopyWith$Query$Introspection$__schema$mutationType<TRes> get mutationType =>
      CopyWith$Query$Introspection$__schema$mutationType.stub(_res);

  CopyWith$Query$Introspection$__schema$subscriptionType<TRes>
      get subscriptionType =>
          CopyWith$Query$Introspection$__schema$subscriptionType.stub(_res);

  types(_fn) => _res;

  directives(_fn) => _res;
}

class Query$Introspection$__schema$queryType {
  Query$Introspection$__schema$queryType({
    this.name,
    this.$__typename = '__Type',
  });

  factory Query$Introspection$__schema$queryType.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Introspection$__schema$queryType(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection$__schema$queryType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$Introspection$__schema$queryType
    on Query$Introspection$__schema$queryType {
  CopyWith$Query$Introspection$__schema$queryType<
          Query$Introspection$__schema$queryType>
      get copyWith => CopyWith$Query$Introspection$__schema$queryType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Introspection$__schema$queryType<TRes> {
  factory CopyWith$Query$Introspection$__schema$queryType(
    Query$Introspection$__schema$queryType instance,
    TRes Function(Query$Introspection$__schema$queryType) then,
  ) = _CopyWithImpl$Query$Introspection$__schema$queryType;

  factory CopyWith$Query$Introspection$__schema$queryType.stub(TRes res) =
      _CopyWithStubImpl$Query$Introspection$__schema$queryType;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Introspection$__schema$queryType<TRes>
    implements CopyWith$Query$Introspection$__schema$queryType<TRes> {
  _CopyWithImpl$Query$Introspection$__schema$queryType(
    this._instance,
    this._then,
  );

  final Query$Introspection$__schema$queryType _instance;

  final TRes Function(Query$Introspection$__schema$queryType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection$__schema$queryType(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Introspection$__schema$queryType<TRes>
    implements CopyWith$Query$Introspection$__schema$queryType<TRes> {
  _CopyWithStubImpl$Query$Introspection$__schema$queryType(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Introspection$__schema$mutationType {
  Query$Introspection$__schema$mutationType({
    this.name,
    this.$__typename = '__Type',
  });

  factory Query$Introspection$__schema$mutationType.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Introspection$__schema$mutationType(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection$__schema$mutationType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$Introspection$__schema$mutationType
    on Query$Introspection$__schema$mutationType {
  CopyWith$Query$Introspection$__schema$mutationType<
          Query$Introspection$__schema$mutationType>
      get copyWith => CopyWith$Query$Introspection$__schema$mutationType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Introspection$__schema$mutationType<TRes> {
  factory CopyWith$Query$Introspection$__schema$mutationType(
    Query$Introspection$__schema$mutationType instance,
    TRes Function(Query$Introspection$__schema$mutationType) then,
  ) = _CopyWithImpl$Query$Introspection$__schema$mutationType;

  factory CopyWith$Query$Introspection$__schema$mutationType.stub(TRes res) =
      _CopyWithStubImpl$Query$Introspection$__schema$mutationType;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Introspection$__schema$mutationType<TRes>
    implements CopyWith$Query$Introspection$__schema$mutationType<TRes> {
  _CopyWithImpl$Query$Introspection$__schema$mutationType(
    this._instance,
    this._then,
  );

  final Query$Introspection$__schema$mutationType _instance;

  final TRes Function(Query$Introspection$__schema$mutationType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection$__schema$mutationType(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Introspection$__schema$mutationType<TRes>
    implements CopyWith$Query$Introspection$__schema$mutationType<TRes> {
  _CopyWithStubImpl$Query$Introspection$__schema$mutationType(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Introspection$__schema$subscriptionType {
  Query$Introspection$__schema$subscriptionType({
    this.name,
    this.$__typename = '__Type',
  });

  factory Query$Introspection$__schema$subscriptionType.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Introspection$__schema$subscriptionType(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection$__schema$subscriptionType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$Introspection$__schema$subscriptionType
    on Query$Introspection$__schema$subscriptionType {
  CopyWith$Query$Introspection$__schema$subscriptionType<
          Query$Introspection$__schema$subscriptionType>
      get copyWith => CopyWith$Query$Introspection$__schema$subscriptionType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Introspection$__schema$subscriptionType<TRes> {
  factory CopyWith$Query$Introspection$__schema$subscriptionType(
    Query$Introspection$__schema$subscriptionType instance,
    TRes Function(Query$Introspection$__schema$subscriptionType) then,
  ) = _CopyWithImpl$Query$Introspection$__schema$subscriptionType;

  factory CopyWith$Query$Introspection$__schema$subscriptionType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Introspection$__schema$subscriptionType;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Introspection$__schema$subscriptionType<TRes>
    implements CopyWith$Query$Introspection$__schema$subscriptionType<TRes> {
  _CopyWithImpl$Query$Introspection$__schema$subscriptionType(
    this._instance,
    this._then,
  );

  final Query$Introspection$__schema$subscriptionType _instance;

  final TRes Function(Query$Introspection$__schema$subscriptionType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection$__schema$subscriptionType(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Introspection$__schema$subscriptionType<TRes>
    implements CopyWith$Query$Introspection$__schema$subscriptionType<TRes> {
  _CopyWithStubImpl$Query$Introspection$__schema$subscriptionType(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Introspection$__schema$directives {
  Query$Introspection$__schema$directives({
    required this.name,
    this.description,
    required this.locations,
    required this.args,
    this.$__typename = '__Directive',
  });

  factory Query$Introspection$__schema$directives.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$locations = json['locations'];
    final l$args = json['args'];
    final l$$__typename = json['__typename'];
    return Query$Introspection$__schema$directives(
      name: (l$name as String),
      description: (l$description as String?),
      locations: (l$locations as List<dynamic>)
          .map((e) => fromJson$Enum$__DirectiveLocation((e as String)))
          .toList(),
      args: (l$args as List<dynamic>)
          .map((e) => Fragment$InputValue.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final List<Enum$__DirectiveLocation> locations;

  final List<Fragment$InputValue> args;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$locations = locations;
    _resultData['locations'] =
        l$locations.map((e) => toJson$Enum$__DirectiveLocation(e)).toList();
    final l$args = args;
    _resultData['args'] = l$args.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$locations = locations;
    final l$args = args;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      Object.hashAll(l$locations.map((v) => v)),
      Object.hashAll(l$args.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Introspection$__schema$directives ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations.length != lOther$locations.length) {
      return false;
    }
    for (int i = 0; i < l$locations.length; i++) {
      final l$locations$entry = l$locations[i];
      final lOther$locations$entry = lOther$locations[i];
      if (l$locations$entry != lOther$locations$entry) {
        return false;
      }
    }
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) {
      return false;
    }
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Introspection$__schema$directives
    on Query$Introspection$__schema$directives {
  CopyWith$Query$Introspection$__schema$directives<
          Query$Introspection$__schema$directives>
      get copyWith => CopyWith$Query$Introspection$__schema$directives(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Introspection$__schema$directives<TRes> {
  factory CopyWith$Query$Introspection$__schema$directives(
    Query$Introspection$__schema$directives instance,
    TRes Function(Query$Introspection$__schema$directives) then,
  ) = _CopyWithImpl$Query$Introspection$__schema$directives;

  factory CopyWith$Query$Introspection$__schema$directives.stub(TRes res) =
      _CopyWithStubImpl$Query$Introspection$__schema$directives;

  TRes call({
    String? name,
    String? description,
    List<Enum$__DirectiveLocation>? locations,
    List<Fragment$InputValue>? args,
    String? $__typename,
  });
  TRes args(
      Iterable<Fragment$InputValue> Function(
              Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>)
          _fn);
}

class _CopyWithImpl$Query$Introspection$__schema$directives<TRes>
    implements CopyWith$Query$Introspection$__schema$directives<TRes> {
  _CopyWithImpl$Query$Introspection$__schema$directives(
    this._instance,
    this._then,
  );

  final Query$Introspection$__schema$directives _instance;

  final TRes Function(Query$Introspection$__schema$directives) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? locations = _undefined,
    Object? args = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Introspection$__schema$directives(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        locations: locations == _undefined || locations == null
            ? _instance.locations
            : (locations as List<Enum$__DirectiveLocation>),
        args: args == _undefined || args == null
            ? _instance.args
            : (args as List<Fragment$InputValue>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes args(
          Iterable<Fragment$InputValue> Function(
                  Iterable<CopyWith$Fragment$InputValue<Fragment$InputValue>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) => CopyWith$Fragment$InputValue(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$Introspection$__schema$directives<TRes>
    implements CopyWith$Query$Introspection$__schema$directives<TRes> {
  _CopyWithStubImpl$Query$Introspection$__schema$directives(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    List<Enum$__DirectiveLocation>? locations,
    List<Fragment$InputValue>? args,
    String? $__typename,
  }) =>
      _res;

  args(_fn) => _res;
}
