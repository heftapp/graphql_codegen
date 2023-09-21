import 'dart:collection';

import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context/schema.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/printer/base/utils.dart';
import 'package:graphql_codegen/src/transform/add_typename_transforming_visitor.dart';

import 'name.dart';

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
        directives: [],
        fieldDirectives: [],
        hasDefaultValue: false,
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

class ContextProperty {
  final TypeNode type;
  final NameNode _name;
  final NameNode? alias;
  final Name? path;
  final List<DirectiveNode> directives;
  final List<DirectiveNode> fieldDirectives;
  final bool hasDefaultValue;

  TypeNode get nullableTypeOnDefaultValue =>
      hasDefaultValue ? typeNodeAsNullable(type) : type;

  NameNode get name => alias ?? _name;

  ContextProperty({
    this.path,
    this.alias,
    required this.type,
    required NameNode name,
    required this.directives,
    required this.fieldDirectives,
    required this.hasDefaultValue,
  }) : _name = name;

  ContextProperty.fromFieldNode(
    FieldNode node, {
    this.path,
    required this.type,
    required FieldDefinitionNode fieldDefinition,
  })  : _name = node.name,
        alias = node.alias,
        directives = node.directives,
        fieldDirectives = fieldDefinition.directives,
        hasDefaultValue = false;

  ContextProperty.fromInputValueDefinitionNode(
    InputValueDefinitionNode node, {
    this.path,
  })  : _name = node.name,
        type = node.type,
        alias = null,
        directives = node.directives,
        fieldDirectives = [],
        hasDefaultValue = node.defaultValue != null;

  ContextProperty.fromVariableDefinitionNode(
    VariableDefinitionNode node, {
    this.path,
  })  : _name = node.variable.name,
        type = node.type,
        alias = null,
        directives = node.directives,
        fieldDirectives = [],
        hasDefaultValue = node.defaultValue?.value != null;

  ContextProperty merge(ContextProperty other) => ContextProperty(
        type: _mergeTypes(type, other.type),
        name: name,
        path: path,
        directives: directives,
        fieldDirectives: fieldDirectives,
        hasDefaultValue: hasDefaultValue,
      );

  String get _key => name.value;

  bool get isTypenameField => _name.value == "__typename";

  bool get isRequired => isNonNull && !hasDefaultValue;

  bool get isNonNull => type.isNonNull;

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
  final Map<String, ContextProperty> _ownProperties = {};
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
    return _fragments.map((e) {
      final context = _allContexts[e];
      if (context == null) {
        throw StateError('Failed to find context for fragment ${e}');
      }
      return context;
    }).whereType<ContextFragment<TKey>>();
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
    return extendsContextOperation ?? extendsContextFragment;
  }

  void _addContext(Context<TKey, TypeDefinitionNode> c) {
    _contexts[c.path] = c;
    _allContexts[c.path] = c;
    _childContexts[c.path] = c;
  }

  bool hasContextFragment(Name name) => _lookupAllContextFragment(name) != null;

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
    if (_properties[property._key] == null) {
      _properties[property._key] = property;
    }
    if (_ownProperties[property._key] == null && _inFragment.isEmpty) {
      _ownProperties[property._key] = property;
    }
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

  Iterable<ContextProperty> get ownProperties => _ownProperties.values;

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
    if (config.disableContextReplacement) return null;
    if (isDefinitionContext) return null;
    final parentReplace = parent?.replacementContext;
    if (parentReplace != null) {
      final newName = parentReplace.path.withSegment(path.segments.last);
      final replacement = _lookupAllContext(newName);
      return replacement?.resolvedContext;
    }
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
      schema
          .lookupDocument(key)
          ?.definitions
          .whereType<OperationDefinitionNode>() ??
      <OperationDefinitionNode>[];

  bool get isMainContext {
    return schema.mainKey == key;
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

  List<EnumValueDefinitionNode> get values =>
      schema.lookupEnumValueDefinitions(currentType);
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
