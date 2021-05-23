import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen_config/config.dart';

class ContextFragment<TKey> extends Context<TKey, TypeDefinitionNode> {
  final FragmentDefinitionNode? fragment;
  final Name path;

  ContextFragment({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    required Name path,
    required TypeDefinitionNode currentType,
    required Map<String, Context> contexts,
    FragmentDefinitionNode? fragment,
  })  : this.fragment = fragment,
        this.path = path,
        super(
          key: key,
          config: config,
          schema: schema,
          currentType: currentType,
          contexts: contexts,
        );

  @override
  ContextFragment<TKey> withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? inFragment,
    Name? possibleTypeOf,
  }) {
    final c = ContextFragment(
      key: key,
      config: config,
      schema: schema,
      path: path.withSegment(name),
      currentType: currentType,
      contexts: _contexts,
    );
    _addContext(c);
    return c;
  }
}

const _BUILT_IN_SCALARS = const DocumentNode(definitions: [
  ScalarTypeDefinitionNode(name: NameNode(value: 'Int')),
  ScalarTypeDefinitionNode(name: NameNode(value: 'String')),
  ScalarTypeDefinitionNode(name: NameNode(value: 'Float')),
  ScalarTypeDefinitionNode(name: NameNode(value: 'Boolean')),
  ScalarTypeDefinitionNode(name: NameNode(value: 'ID')),
]);

const _INTROSPECTION_FIELDS = const <FieldDefinitionNode>[
  FieldDefinitionNode(
    name: NameNode(value: "__typename"),
    type: NamedTypeNode(
      name: NameNode(value: "String"),
      isNonNull: true,
    ),
  ),
];

class Schema<TKey> {
  final BuiltMap<TKey, DocumentNode> entries;
  Iterable<DefinitionNode>? _cachedDefinitions;
  final String Function(TKey) lookupPath;

  Schema(
    this.entries,
    this.lookupPath,
  );

  Iterable<DefinitionNode> get definitions {
    final lCached = _cachedDefinitions;
    if (lCached != null) return lCached;
    final defs = [
      ...entries.values.expand((element) => element.definitions),
      ..._BUILT_IN_SCALARS.definitions,
    ];
    _cachedDefinitions = defs;
    return defs;
  }

  FragmentDefinitionNode? lookupFragment(NameNode name) {
    return definitions.whereType<FragmentDefinitionNode?>().firstWhere(
          (element) => element != null && element.name.value == name.value,
          orElse: () => null,
        );
  }

  OperationDefinitionNode? lookupOperationDefinition(NameNode name) {
    return definitions.whereType<OperationDefinitionNode?>().firstWhere(
          (element) => element != null && element.name?.value == name.value,
          orElse: () => null,
        );
  }

  String? lookupPathFromName(NameNode node) {
    for (final entry in entries.entries) {
      for (final definition in entry.value.definitions) {
        NameNode name;
        if (definition is FragmentDefinitionNode) {
          name = definition.name;
        } else if (definition is OperationDefinitionNode) {
          name = definition.name!;
        } else if (definition is EnumTypeDefinitionNode) {
          name = definition.name;
        } else if (definition is InputObjectTypeDefinitionNode) {
          name = definition.name;
        } else {
          continue;
        }
        if (name.value == node.value) {
          return lookupPath(entry.key);
        }
      }
    }
    return null;
  }

  TypeDefinitionNode? lookupType(NameNode name) {
    return definitions
        .whereType<TypeDefinitionNode>()
        .map<TypeDefinitionNode?>((e) => e)
        .firstWhere(
          (element) => element != null && element.name.value == name.value,
          orElse: () => null,
        );
  }

  NameNode _operationTypeToDefaultClass(OperationType operationType) {
    switch (operationType) {
      case OperationType.mutation:
        return const NameNode(value: 'Mutation');
      case OperationType.subscription:
        return const NameNode(value: 'Subscription');
      case OperationType.query:
        return const NameNode(value: 'Query');
    }
  }

  TypeDefinitionNode? lookupOperationType(OperationType operationType) {
    final opNode = definitions
        .whereType<SchemaDefinitionNode>()
        .map<SchemaDefinitionNode?>((e) => e)
        .firstWhere((element) => element != null, orElse: () => null)
        ?.operationTypes
        .map<OperationTypeDefinitionNode?>((e) => e)
        .firstWhere(
          (element) => element != null && element.operation == operationType,
          orElse: () => null,
        );

    final typeName =
        opNode?.type.name ?? _operationTypeToDefaultClass(operationType);

    return lookupType(typeName);
  }

  TypeNode? lookupTypeNodeFromField(
    TypeDefinitionNode onType,
    NameNode node,
  ) {
    List<FieldDefinitionNode> fields;
    if (onType is ObjectTypeDefinitionNode) {
      fields = onType.fields;
    } else if (onType is InterfaceTypeDefinitionNode) {
      fields = onType.fields;
    } else {
      return null;
    }
    final currentFieldDefinition = [...fields, ..._INTROSPECTION_FIELDS]
        .whereType<FieldDefinitionNode?>()
        .firstWhere(
          (element) => element != null && element.name.value == node.value,
          orElse: () => null,
        );
    return currentFieldDefinition?.type;
  }

  TypeDefinitionNode? lookupTypeDefinitionFromTypeNode(TypeNode node) {
    if (node is ListTypeNode) {
      return lookupTypeDefinitionFromTypeNode(node.type);
    }
    if (node is NamedTypeNode) {
      final type = lookupType(node.name);
      return type;
    }
    throw StateError("Invalid node type");
  }
}

class ContextProperty {
  final TypeNode type;
  final NameNode _name;
  final NameNode? alias;
  final Name? path;

  NameNode get name => alias ?? _name;

  ContextProperty({
    this.path,
    this.alias,
    required this.type,
    required NameNode name,
  }) : _name = name;

  ContextProperty.fromFieldNode(
    FieldNode node, {
    this.path,
    required this.type,
  })  : _name = node.name,
        alias = node.alias;

  ContextProperty.fromInputValueDefinitionNode(
    InputValueDefinitionNode node, {
    this.path,
  })  : _name = node.name,
        type = node.type,
        alias = null;

  ContextProperty.fromVariableDefinitionNode(
    VariableDefinitionNode node, {
    this.path,
  })  : _name = node.variable.name,
        type = node.type,
        alias = null;

  String get _key => name.value;

  bool get isTypenameField => _name.value == "__typename";

  bool get isRequired => type.isNonNull;
}

class TypedName {
  final Name name;
  final NameNode type;

  String get key => name._key;

  TypedName(this.name, this.type);
}

abstract class Context<TKey, TType extends TypeDefinitionNode> {
  Context({
    required this.key,
    required this.config,
    required this.schema,
    Map<String, Context>? contexts,
    TType? currentType,
    this.possibleTypeOf,
    Queue<Name>? inFragment,
  })  : _currentType = currentType,
        _contexts = contexts ?? {},
        _inFragment = inFragment ?? ListQueue();
  final TKey key;
  final GraphQLCodegenConfig config;
  final Schema<TKey> schema;
  final Map<String, Context> _contexts;
  final Map<String, Context> _childContexts = {};

  final TType? _currentType;

  final Name? possibleTypeOf;

  Queue<Name> _inFragment;

  final Map<String, Name> _fragments = {};
  final Map<String, TypedName> _possibleTypeNames = {};
  final Map<String, ContextProperty> _properties = {};
  final Map<String, ContextProperty> _variables = {};

  TType get currentType {
    final lt = _currentType;
    if (lt != null) {
      return lt;
    }
    throw StateError("Missing current type");
  }

  String get filePath => schema.lookupPath(key);

  Iterable<Name> get fragments => _fragments.values;

  Iterable<Name> get fragmentsRecursive => {
        ..._fragments.values,
        ..._childContexts.values.expand((c) => c.fragmentsRecursive),
      };

  ContextOperation<TKey>? get possibleTypeOfContext {
    final pt = possibleTypeOf;
    return pt == null ? null : _lookupContextOperation(pt);
  }

  void _addContext(Context c) {
    _contexts[c.path._key] = c;
    _childContexts[c.path._key] = c;
  }

  ContextFragment withFragmentAndType(
    FragmentDefinitionNode node,
    TypeDefinitionNode type,
  ) {
    final c = ContextFragment(
      key: key,
      schema: schema,
      config: config,
      path: Name.fromSegment(FragmentNameSegment(node)),
      currentType: type,
      contexts: _contexts,
      fragment: node,
    );
    _addContext(c);
    return c;
  }

  ContextEnum<TKey> withEnum(EnumTypeDefinitionNode type) {
    final c = ContextEnum(
      key: key,
      config: config,
      schema: schema,
      en: type,
    );
    _addContext(c);
    return c;
  }

  ContextInput<TKey> withInput(InputObjectTypeDefinitionNode input) {
    final c = ContextInput(
      key: key,
      config: config,
      schema: schema,
      type: input,
    );
    _addContext(c);
    return c;
  }

  ContextOperation withOperationAndType(
    OperationDefinitionNode node,
    TypeDefinitionNode type,
  ) {
    final c = ContextOperation(
      key: key,
      config: config,
      path: Name.fromSegment(OperationNameSegment(node)),
      currentType: type,
      schema: schema,
      contexts: _contexts,
    );
    _addContext(c);
    return c;
  }

  ContextOperation<TKey>? _lookupContextOperation(Name path) {
    final c = _contexts[path._key];
    if (c == null) return null;
    return c is ContextOperation<TKey> ? c : null;
  }

  void addFragment(Name fragment) {
    _fragments[fragment._key] = fragment;
  }

  void addPossibleTypeName(Context c) {
    _possibleTypeNames[c.path._key] = TypedName(c.path, c.currentType.name);
  }

  void addProperty(ContextProperty property) {
    if (_properties[property._key] != null) {
      return;
    }
    _properties[property._key] = property;
  }

  void addVariable(ContextProperty property) {
    if (_variables[property._key] != null) {
      return;
    }
    _variables[property._key] = property;
  }

  void visitInFragment(
    FragmentDefinitionNode fragmentDef,
    void Function() visitor,
  ) {
    this
        ._inFragment
        .addLast(Name.fromSegment(FragmentNameSegment(fragmentDef)));
    visitor();
    this._inFragment.removeLast();
  }

  void addFragmentsFromInFragment() {
    _fragments.addEntries(_inFragment.map((e) => MapEntry(e._key, e)));
  }

  Iterable<ContextProperty> get properties => _properties.values;

  Iterable<ContextProperty> get variables => _variables.values;

  bool get hasVariables => _variables.isNotEmpty;

  bool get isVariablesRequired =>
      variables.whereType<ContextProperty?>().firstWhere(
            (e) => e?.isRequired == true,
            orElse: () => null,
          ) !=
      null;

  Iterable<ContextProperty> get publicProperties =>
      _properties.values.where((element) => !element._key.startsWith("_"));

  Name get path => throw StateError("Path not available");

  Context withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? possibleTypeOf,
    Name? inFragment,
  }) {
    throw new StateError('withNameAndType not supported');
  }
}

class ContextRoot<TKey> extends Context<TKey, TypeDefinitionNode> {
  ContextRoot({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
  }) : super(
          key: key,
          config: config,
          schema: schema,
          contexts: {},
        );
  Iterable<ContextOperation> get contextOperations =>
      _contexts.values.whereType<ContextOperation>();

  Iterable<ContextFragment> get contextFragments =>
      _contexts.values.whereType<ContextFragment>();

  Iterable<ContextEnum> get contextEnums =>
      _contexts.values.whereType<ContextEnum>();

  Iterable<ContextInput> get contextInputs =>
      _contexts.values.whereType<ContextInput>();

  Iterable<OperationDefinitionNode> get operations =>
      schema.entries[key]?.definitions.whereType<OperationDefinitionNode>() ??
      <OperationDefinitionNode>[];
}

class ContextEnum<TKey> extends Context<TKey, EnumTypeDefinitionNode> {
  final Name path;
  ContextEnum({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    required EnumTypeDefinitionNode en,
  })  : path = Name.fromSegment(EnumNameSegment(en)),
        super(
          key: key,
          config: config,
          schema: schema,
          currentType: en,
        );
}

class ContextInput<TKey> extends Context<TKey, InputObjectTypeDefinitionNode> {
  final Name path;
  ContextInput({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    required InputObjectTypeDefinitionNode type,
  })  : path = Name.fromSegment(InputNameSegment(type)),
        super(
          key: key,
          config: config,
          schema: schema,
          currentType: type,
        );
}

class ContextOperation<TKey> extends Context<TKey, TypeDefinitionNode> {
  final Name path;
  ContextOperation({
    required TKey key,
    required GraphQLCodegenConfig config,
    Queue<Name>? inFragment,
    required Name path,
    required Schema<TKey> schema,
    required Map<String, Context> contexts,
    required TypeDefinitionNode currentType,
    Name? possibleTypeOf,
  })  : this.path = path,
        super(
          key: key,
          config: config,
          schema: schema,
          contexts: contexts,
          currentType: currentType,
          possibleTypeOf: possibleTypeOf,
          inFragment: inFragment,
        );

  ContextOperation withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? inFragment,
    Name? possibleTypeOf,
  }) {
    final path = this.path.withSegment(name);
    final existingContext = _lookupContextOperation(path);
    if (existingContext != null) return existingContext;
    final newInFragment = ListQueue.of(
      [
        ..._inFragment.map((e) => e.withSegment(name)),
        if (inFragment != null) inFragment,
      ],
    );
    final c = ContextOperation(
      key: key,
      config: config,
      path: path,
      schema: schema,
      contexts: _contexts,
      currentType: currentType,
      possibleTypeOf: possibleTypeOf,
      inFragment: newInFragment,
    );
    _addContext(c);
    return c;
  }

  ContextProperty? get typenameProperty =>
      properties.whereType<ContextProperty?>().firstWhere(
            (element) => element?.isTypenameField == true,
            orElse: () => null,
          );

  Iterable<TypedName> get possibleTypes => _possibleTypeNames.values;

  OperationDefinitionNode? get operation => path.segments.length == 1
      ? schema.lookupOperationDefinition(path.baseNameSegment.name)
      : null;
}

class Name {
  final BuiltList<NameSegment> segments;
  final NameSegment baseNameSegment;

  Name(this.segments, this.baseNameSegment);

  factory Name.fromSegment(NameSegment segment) => Name(
        BuiltList.of([segment]),
        segment,
      );

  String get _key => segments.map((e) => e._key).join(r"$");

  Name withSegment(NameSegment segment) => Name(
        (segments.toBuilder()..add(segment)).build(),
        baseNameSegment,
      );

  bool get isRoot => segments.length == 1;

  bool operator ==(Object other) => other is Name && other._key == _key;
  @override
  int get hashCode => _key.hashCode;
}

abstract class NameSegment {
  final NameNode name;

  NameSegment(this.name);

  String get _key;

  bool operator ==(Object other) => other is NameSegment && other._key == _key;

  @override
  int get hashCode => _key.hashCode;
}

class EnumNameSegment extends NameSegment {
  EnumNameSegment(EnumTypeDefinitionNode tpe) : super(tpe.name);

  @override
  String get _key => "E${name.value}";
}

class InputNameSegment extends NameSegment {
  InputNameSegment(InputObjectTypeDefinitionNode tpe) : super(tpe.name);

  @override
  String get _key => "I${name.value}";
}

class FieldNameSegment extends NameSegment {
  FieldNameSegment(FieldNode name) : super(name.alias ?? name.name);

  @override
  String get _key => "f${name.value}";
}

class TypeNameSegment extends NameSegment {
  TypeNameSegment(TypeConditionNode typeCondition)
      : super(typeCondition.on.name);

  @override
  String get _key => "t${name.value}";
}

class OperationNameSegment extends NameSegment {
  final OperationDefinitionNode node;
  OperationNameSegment(OperationDefinitionNode name)
      : node = name,
        super(name.name!);

  @override
  String get _key {
    switch (node.type) {
      case OperationType.mutation:
        return "M${name.value}";
      case OperationType.query:
        return "Q${name.value}";
      case OperationType.subscription:
        return "S${name.value}";
    }
  }
}

class FragmentNameSegment extends NameSegment {
  FragmentNameSegment(FragmentDefinitionNode node) : super(node.name);

  @override
  String get _key => "F${name.value}";
}
