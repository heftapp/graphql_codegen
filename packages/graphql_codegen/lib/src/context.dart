import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/transform/add_typename_transforming_visitor.dart';

class ContextFragment<TKey extends Object>
    extends Context<TKey, TypeDefinitionNode> {
  final FragmentDefinitionNode? fragment;
  final Name path;

  ContextFragment({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    required Name path,
    required Context<TKey, TypeDefinitionNode> parent,
    required TypeDefinitionNode currentType,
    required Map<Name, Context<TKey, TypeDefinitionNode>> contexts,
    required Map<Name, Context<TKey, TypeDefinitionNode>> allContexts,
    required Map<String, ContextProperty> variables,
    required Set<FragmentDefinitionNode> fragmentDependencies,
    FragmentDefinitionNode? fragment,
    Queue<Name>? inFragments,
    Name? extendsName,
  })  : this.fragment = fragment,
        this.path = path,
        super(
          key: key,
          config: config,
          schema: schema,
          currentType: currentType,
          contexts: contexts,
          inFragment: inFragments,
          extendsName: extendsName,
          allContexts: allContexts,
          variables: variables,
          fragmentDependencies: fragmentDependencies,
          parent: parent,
        );

  @override
  ContextFragment<TKey> withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? inFragment,
    Name? extendsName,
  }) {
    final path = this.path.withSegment(name);
    final existingContext = _lookupContextFragment(path);
    if (existingContext != null) {
      existingContext._inFragment = ListQueue.of([
        ..._inFragment.map((e) => e.withSegment(name)),
        if (inFragment != null) inFragment,
      ]);
      return existingContext;
    }
    final newInFragment = Queue.of(
      [
        ..._inFragment.map((e) => e.withSegment(name)),
        if (inFragment != null) inFragment,
      ],
    );
    final c = ContextFragment<TKey>(
      parent: this,
      key: key,
      config: config,
      schema: schema,
      path: path,
      currentType: currentType,
      allContexts: _allContexts,
      contexts: _contexts,
      inFragments: newInFragment,
      extendsName: extendsName,
      variables: _variables,
      fragmentDependencies: _fragmentDependencies,
    );
    _addContext(c);
    return c;
  }

  @override
  Iterable<ContextProperty> get variables =>
      fragment == null ? [] : _variables.values;

  void _addArgumentVariable(VariableNode argument, TypeNode type) {
    final fieldType = schema.lookupTypeDefinitionFromTypeNode(type);
    Name? path = null;
    if (fieldType == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find type-definition for variable ${argument.name.value}",
      );
    }
    if (fieldType is InputObjectTypeDefinitionNode) {
      path = Name.fromSegment(InputNameSegment(fieldType));
    } else if (fieldType is EnumTypeDefinitionNode) {
      path = Name.fromSegment(EnumNameSegment(fieldType));
    }
    addVariable(
      ContextProperty(
        type: type,
        name: argument.name,
        path: path,
      ),
    );
  }

  @override
  void addArgument(ValueNode argument, TypeNode type) {
    if (argument is VariableNode) {
      _addArgumentVariable(argument, type);
      return;
    }
    if (argument is ListValueNode && type is ListTypeNode) {
      for (final v in argument.values) {
        addArgument(v, type.type);
      }
      return;
    }
    if (type is ListTypeNode) {
      addArgument(argument, type.type);
      return;
    }
    if (argument is ObjectValueNode && type is NamedTypeNode) {
      final typeDef =
          schema.lookupType<InputObjectTypeDefinitionNode>(type.name);
      final fields = typeDef?.fields ?? [];
      for (final f in argument.fields) {
        final fieldType = fields
            .whereType<InputValueDefinitionNode?>()
            .firstWhere(
              (element) => element?.name.value == f.name.value,
              orElse: () => null,
            )
            ?.type;
        if (fieldType == null) continue;
        addArgument(f.value, fieldType);
      }
    }
  }

  @override
  NameNode get currentTypeName => currentType.name;

  bool get isDefinitionContext => fragment != null;
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

class Schema<TKey extends Object> {
  final BuiltMap<TKey, DocumentNode> entries;
  Iterable<DefinitionNode>? _cachedDefinitions;
  Map<String, TypeDefinitionNode>? _cachedTypeDefinitionsMap;
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

  FragmentDefinitionNode lookupFragmentEnforced(NameNode name) {
    final fragmentDef = lookupFragment(name);
    if (fragmentDef == null) {
      throw InvalidGraphQLDocumentError(
        "Failed to find fragment definition for ${name.value}",
      );
    }
    return fragmentDef;
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

  TType? lookupType<TType extends TypeDefinitionNode>(NameNode name) {
    var defs = _cachedTypeDefinitionsMap;
    if (defs == null) {
      defs = _cachedTypeDefinitionsMap = Map.fromEntries(
        definitions
            .whereType<TypeDefinitionNode>()
            .map((e) => MapEntry(e.name.value, e)),
      );
    }

    final def = defs[name.value];
    if (def == null || !(def is TType)) {
      return null;
    }
    return def;
  }

  Iterable<ObjectTypeDefinitionNode> lookupConcreteTypes(NameNode name) {
    final typeDefinition = lookupType(name);
    if (typeDefinition is ObjectTypeDefinitionNode) {
      return [typeDefinition];
    }
    if (typeDefinition is UnionTypeDefinitionNode) {
      return typeDefinition.types.expand((e) => lookupConcreteTypes(e.name));
    }

    if (typeDefinition is InterfaceTypeDefinitionNode) {
      return definitions.whereType<ObjectTypeDefinitionNode>().where(
            (element) => element.interfaces
                .where((element) => element.name.value == name.value)
                .isNotEmpty,
          );
    }

    return [];
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
    return lookupFieldDefinitionNode(onType, node)?.type;
  }

  FieldDefinitionNode? lookupFieldDefinitionNode(
      TypeDefinitionNode onType, NameNode field) {
    List<FieldDefinitionNode> fields;
    if (onType is ObjectTypeDefinitionNode) {
      fields = onType.fields;
    } else if (onType is InterfaceTypeDefinitionNode) {
      fields = onType.fields;
    } else if (onType is UnionTypeDefinitionNode) {
      fields = [];
    } else {
      return null;
    }
    final currentFieldDefinition = [...fields, ..._INTROSPECTION_FIELDS]
        .whereType<FieldDefinitionNode?>()
        .firstWhere(
          (element) => element != null && element.name.value == field.value,
          orElse: () => null,
        );
    return currentFieldDefinition;
  }

  TypeNode? lookupTypeNodeForArgument(
    TypeDefinitionNode onType,
    NameNode field,
    ArgumentNode argument,
  ) {
    final fieldDefinition = lookupFieldDefinitionNode(onType, field);
    if (fieldDefinition == null) {
      return null;
    }
    return fieldDefinition.args
        .whereType<InputValueDefinitionNode?>()
        .firstWhere(
          (element) => element?.name.value == argument.name.value,
          orElse: () => null,
        )
        ?.type;
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

  ContextProperty merge(ContextProperty other) => ContextProperty(
        type: _mergeTypes(type, other.type),
        name: name,
        path: path,
      );

  String get _key => name.value;

  bool get isTypenameField => _name.value == "__typename";

  bool get isRequired => type.isNonNull;

  static TypeNode _mergeTypes(TypeNode t1, TypeNode t2) {
    if (t1 is ListTypeNode && t2 is ListTypeNode) {
      return ListTypeNode(
        type: _mergeTypes(t1.type, t2.type),
        isNonNull: t1.isNonNull || t2.isNonNull,
      );
    }
    if (t1 is ListTypeNode) {
      return _mergeTypes(t1.type, t2);
    }
    if (t2 is ListTypeNode) {
      return _mergeTypes(t1, t2.type);
    }
    if (t1 is! NamedTypeNode) {
      return t1;
    }
    return NamedTypeNode(
      name: t1.name,
      isNonNull: t1.isNonNull || t2.isNonNull,
    );
  }
}

abstract class Context<TKey extends Object, TType extends TypeDefinitionNode> {
  Context({
    required this.key,
    required this.config,
    required this.schema,
    this.parent,
    Map<Name, Context<TKey, TypeDefinitionNode>>? contexts,
    required Map<Name, Context<TKey, TypeDefinitionNode>> allContexts,
    TType? currentType,
    this.extendsName,
    Map<String, ContextProperty>? variables,
    Queue<Name>? inFragment,
    Set<FragmentDefinitionNode>? fragmentDependencies,
  })  : _currentType = currentType,
        _contexts = contexts ?? {},
        _allContexts = allContexts,
        _variables = variables ?? {},
        _inFragment = inFragment ?? ListQueue(),
        _fragmentDependencies = fragmentDependencies ?? {};
  final TKey key;
  final GraphQLCodegenConfig config;
  final Schema<TKey> schema;
  final Map<Name, Context<TKey, TypeDefinitionNode>> _contexts;
  final Map<Name, Context<TKey, TypeDefinitionNode>> _allContexts;
  final Map<Name, Context<TKey, TypeDefinitionNode>> _childContexts = {};
  final Context<TKey, TypeDefinitionNode>? parent;

  final TType? _currentType;

  final Name? extendsName;

  Queue<Name> _inFragment;

  final Set<Name> _fragments = {};
  final Set<Context<TKey, TypeDefinitionNode>> _possibleTypes = {};
  final Map<String, ContextProperty> _properties = {};
  final Map<String, ContextProperty> _variables;
  final Set<FragmentDefinitionNode> _fragmentDependencies;
  final Set<SelectionNode> _selections = {};

  TType get currentType {
    final lt = _currentType;
    if (lt != null) {
      return lt;
    }
    throw StateError("Missing current type");
  }

  NameNode get currentTypeName;

  String get filePath => schema.lookupPath(key);

  Iterable<ContextFragment<TKey>> get fragments {
    return _fragments
        .map((e) => _allContexts[e]!)
        .whereType<ContextFragment<TKey>>();
  }

  ContextOperation<TKey>? get extendsContextOperation {
    final pt = extendsName;
    return pt == null ? null : _lookupContextOperation(pt);
  }

  ContextFragment<TKey>? get extendsContextFragment {
    final pt = extendsName;
    return pt == null ? null : _lookupContextFragment(pt);
  }

  Context<TKey, TypeDefinitionNode>? get extendsContext {
    return (extendsContextOperation ?? extendsContextFragment)?.resolvedContext;
  }

  void _addContext(Context<TKey, TypeDefinitionNode> c) {
    _contexts[c.path] = c;
    _allContexts[c.path] = c;
    _childContexts[c.path] = c;
  }

  bool hasContextFragment(Name name) => _lookupContextFragment(name) != null;

  Name contextFragmentNameOrFallback(Name name, Name fallback) =>
      hasContextFragment(name) ? name : fallback;

  ContextRoot<TKey> rootContext() => ContextRoot<TKey>(
        key: key,
        config: config,
        schema: schema,
        allContexts: _allContexts,
      );

  ContextFragment withFragmentAndType(
    FragmentDefinitionNode node,
    TypeDefinitionNode type,
  ) {
    final path = Name.fromSegment(FragmentNameSegment(node));
    final c = ContextFragment(
      parent: this,
      key: key,
      schema: schema,
      config: config,
      path: path,
      currentType: type,
      contexts: _contexts,
      allContexts: _allContexts,
      fragment: node,
      variables: {},
      fragmentDependencies: {},
    );
    _addContext(c);
    return c;
  }

  ContextEnum<TKey> withEnum(EnumTypeDefinitionNode type) {
    final c = ContextEnum(
      parent: this,
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
      parent: this,
      key: key,
      config: config,
      schema: schema,
      type: input,
      contexts: _contexts,
      allContexts: _allContexts,
    );
    _addContext(c);
    return c;
  }

  ContextOperation withOperationAndType(
    OperationDefinitionNode node,
    TypeDefinitionNode type,
  ) {
    final c = ContextOperation(
      parent: this,
      key: key,
      config: config,
      path: Name.fromSegment(OperationNameSegment(node)),
      currentType: type,
      allContexts: _allContexts,
      schema: schema,
      contexts: _contexts,
      fragmentDependencies: {},
    );
    _addContext(c);
    return c;
  }

  ContextOperation<TKey>? _lookupContextOperation(Name path) {
    final c = _contexts[path];
    if (c == null) return null;
    return c is ContextOperation<TKey> ? c : null;
  }

  ContextFragment<TKey>? _lookupContextFragment(Name path) {
    final c = _contexts[path];
    if (c == null) return null;
    return c is ContextFragment<TKey> ? c : null;
  }

  ContextFragment<TKey>? _lookupAllContextFragment(Name path) {
    final c = _allContexts[path];
    if (c == null) return null;
    return c is ContextFragment<TKey> ? c : null;
  }

  Context<TKey, TypeDefinitionNode>? _lookupAllContext(Name path) {
    return _allContexts[path];
  }

  Context<TKey, TypeDefinitionNode>? lookupContext(Name path) {
    return _contexts[path];
  }

  void addFragment(Name fragment) {
    _fragments.add(fragment);
  }

  void addPossibleTypeName(Context<TKey, TypeDefinitionNode> c) {
    _possibleTypes.add(c);
  }

  void addProperty(ContextProperty property) {
    if (_properties[property._key] != null) {
      return;
    }
    _properties[property._key] = property;
  }

  void addVariable(ContextProperty property) {
    _variables[property._key] =
        _variables[property._key]?.merge(property) ?? property;
  }

  void addArgument(ValueNode argument, TypeNode argumentType) {}

  void visitInFragment(
    Name fragmentName,
    void Function() visitor,
  ) {
    this._inFragment.addLast(fragmentName);
    visitor();
    this._inFragment.removeLast();
  }

  void addFragmentsFromInFragment() {
    _fragments.addAll(_inFragment);
  }

  void addFragmentDependency(FragmentDefinitionNode fragmentDefinitionNode) {
    _fragmentDependencies.add(fragmentDefinitionNode);
  }

  bool get isDefinitionContext;

  Iterable<ContextProperty> get properties => _properties.values;

  Iterable<ContextProperty> get variables => _variables.values;

  bool get hasVariables => variables.isNotEmpty;

  bool get isVariablesRequired =>
      variables.whereType<ContextProperty?>().firstWhere(
            (e) => e?.isRequired == true,
            orElse: () => null,
          ) !=
      null;

  Name get path => throw StateError("Path not available");

  Context withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? extendsName,
    Name? inFragment,
  }) {
    throw new StateError('withNameAndType not supported');
  }

  ContextProperty? get typenameProperty =>
      properties.whereType<ContextProperty?>().firstWhere(
            (element) => element?.isTypenameField == true,
            orElse: () => null,
          );

  Iterable<Context> get possibleTypes => _possibleTypes;

  Iterable<FragmentDefinitionNode> get fragmentDependencies =>
      [..._fragmentDependencies];

  void addSelectionSet(SelectionSetNode node) {
    _selections.addAll(node.selections);
  }

  Context<TKey, TypeDefinitionNode> get resolvedContext =>
      replacementContext ?? this;

  Context<TKey, TypeDefinitionNode>? get replacementContext {
    if (isDefinitionContext) return null;
    final parentReplace = parent?.replacementContext;
    if (parentReplace != null) {
      final newName = parentReplace.path.withSegment(path.segments.last);
      final replacement = _lookupAllContext(newName);
      return replacement?.resolvedContext;
    }
    if (extendsContext != null) return null;
    if (_selections.whereType<InlineFragmentNode>().isNotEmpty) {
      return null;
    }
    final spreadNodes = _selections.whereType<FragmentSpreadNode>();
    Set<String> spreads = _selections
        .whereType<FragmentSpreadNode>()
        .map((e) => e.name.value)
        .toSet();
    if (spreads.length != 1) return null;
    Set<String> fields = _selections
        .whereType<FieldNode>()
        .map((e) => e.alias?.value ?? e.name.value)
        .toSet();
    if (fields.length > 1) return null;
    if (fields.length == 1 &&
        (!config.addTypename || fields.first != typenameFieldName)) {
      return null;
    }
    final fragmentDef = schema.lookupFragmentEnforced(spreadNodes.first.name);
    if (fragmentDef.typeCondition.on.name.value != currentTypeName.value) {
      return null;
    }
    final replacement = _lookupAllContextFragment(
      Name.fromSegment(FragmentNameSegment(fragmentDef)),
    );
    return replacement?.resolvedContext;
  }
}

class ContextRoot<TKey extends Object>
    extends Context<TKey, TypeDefinitionNode> {
  ContextRoot({
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    Map<Name, Context<TKey, TypeDefinitionNode>>? allContexts,
  }) : super(
          key: key,
          config: config,
          schema: schema,
          contexts: {},
          allContexts: allContexts ?? {},
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

  bool get isMainContext {
    final definingOperation = schema.lookupOperationType(OperationType.query) ??
        schema.lookupOperationType(OperationType.mutation) ??
        schema.lookupOperationType(OperationType.subscription);
    return schema.entries[key]?.definitions.contains(definingOperation) ??
        false;
  }

  final bool isDefinitionContext = false;

  Map<String, Set<String>> get possibleTypesMap {
    final possibleTypes = <String, Set<NameNode>>{};
    for (final definition in schema.definitions) {
      if (definition is UnionTypeDefinitionNode) {
        final types = possibleTypes[definition.name.value] ?? {};
        for (final tpe in definition.types) {
          types.add(tpe.name);
        }
        possibleTypes[definition.name.value] = types;
      } else if (definition is ObjectTypeDefinitionNode) {
        for (final tpe in definition.interfaces) {
          final types = possibleTypes[tpe.name.value] ?? {};
          types.add(definition.name);
          possibleTypes[tpe.name.value] = types;
        }
      }
    }
    return possibleTypes.map((key, value) => MapEntry<String, Set<String>>(
        key,
        value
            .expand<ObjectTypeDefinitionNode>(schema.lookupConcreteTypes)
            .map((e) => e.name.value)
            .toSet()));
  }

  @override
  NameNode get currentTypeName => currentType.name;
}

class ContextEnum<TKey extends Object>
    extends Context<TKey, EnumTypeDefinitionNode> {
  final Name path;
  ContextEnum({
    required Context<TKey, TypeDefinitionNode> parent,
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
          allContexts: {},
          parent: parent,
        );

  @override
  NameNode get currentTypeName => currentType.name;

  final bool isDefinitionContext = true;
}

class ContextInput<TKey extends Object>
    extends Context<TKey, InputObjectTypeDefinitionNode> {
  final Name path;
  ContextInput({
    required Context<TKey, TypeDefinitionNode> parent,
    required TKey key,
    required GraphQLCodegenConfig config,
    required Schema<TKey> schema,
    required InputObjectTypeDefinitionNode type,
    required Map<Name, Context<TKey, TypeDefinitionNode>> contexts,
    required Map<Name, Context<TKey, TypeDefinitionNode>> allContexts,
  })  : path = Name.fromSegment(InputNameSegment(type)),
        super(
          key: key,
          config: config,
          schema: schema,
          allContexts: allContexts,
          contexts: contexts,
          currentType: type,
          parent: parent,
        );
  @override
  NameNode get currentTypeName => currentType.name;

  final bool isDefinitionContext = true;
}

class ContextOperation<TKey extends Object>
    extends Context<TKey, TypeDefinitionNode> {
  final Name path;
  ContextOperation({
    required Context<TKey, TypeDefinitionNode> parent,
    required TKey key,
    required GraphQLCodegenConfig config,
    Queue<Name>? inFragment,
    required Name path,
    required Schema<TKey> schema,
    required Map<Name, Context<TKey, TypeDefinitionNode>> contexts,
    required Map<Name, Context<TKey, TypeDefinitionNode>> allContexts,
    required TypeDefinitionNode currentType,
    required Set<FragmentDefinitionNode> fragmentDependencies,
    Name? extendsName,
  })  : this.path = path,
        super(
          key: key,
          config: config,
          schema: schema,
          parent: parent,
          contexts: contexts,
          allContexts: allContexts,
          currentType: currentType,
          extendsName: extendsName,
          inFragment: inFragment,
          fragmentDependencies: fragmentDependencies,
        );

  ContextOperation<TKey> withNameAndType(
    NameSegment name,
    TypeDefinitionNode currentType, {
    Name? inFragment,
    Name? extendsName,
  }) {
    final path = this.path.withSegment(name);
    final existingContext = _lookupContextOperation(path);
    if (existingContext != null) {
      existingContext._inFragment = ListQueue.of([
        ..._inFragment.map((e) => e.withSegment(name)),
        if (inFragment != null) inFragment,
      ]);
      return existingContext;
    }
    final newInFragment = ListQueue.of(
      [
        ..._inFragment.map((e) => e.withSegment(name)),
        if (inFragment != null) inFragment,
      ],
    );
    final c = ContextOperation<TKey>(
      parent: this,
      key: key,
      config: config,
      path: path,
      schema: schema,
      contexts: _contexts,
      allContexts: _allContexts,
      currentType: currentType,
      extendsName: extendsName,
      inFragment: newInFragment,
      fragmentDependencies: _fragmentDependencies,
    );
    _addContext(c);
    return c;
  }

  OperationDefinitionNode? get operation {
    if (path.segments.length != 1) {
      return null;
    }
    final base = path.baseNameSegment;
    if (base is! OperationNameSegment) {
      return null;
    }
    return base.node;
  }

  @override
  NameNode get currentTypeName => currentType.name;

  bool get isDefinitionContext => operation != null;
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
  TypeNameSegment(NameNode typeCondition) : super(typeCondition);

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
