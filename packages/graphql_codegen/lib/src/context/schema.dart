import 'package:built_collection/built_collection.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql_codegen/src/errors.dart';

const _INTROSPECTION_FIELDS = const <FieldDefinitionNode>[
  FieldDefinitionNode(
    name: NameNode(value: "__typename"),
    type: NamedTypeNode(
      name: NameNode(value: "String"),
      isNonNull: true,
    ),
  ),
];

const _QUERY_INTROSPECTION_FIELDS = const <FieldDefinitionNode>[
  FieldDefinitionNode(
    name: NameNode(value: "__schema"),
    type: NamedTypeNode(
      name: NameNode(value: "__Schema"),
      isNonNull: true,
    ),
  ),
  FieldDefinitionNode(
    name: NameNode(value: "__type"),
    type: NamedTypeNode(
      name: NameNode(value: "__Type"),
      isNonNull: false,
    ),
    args: [
      InputValueDefinitionNode(
        name: NameNode(value: "name"),
        type: NamedTypeNode(
          name: NameNode(value: "String"),
          isNonNull: true,
        ),
      ),
    ],
  ),
];

final _buildInSchema = parseString("""
scalar Int
scalar String
scalar Float
scalar Boolean
scalar ID

type __Schema {
  description: String
  types: [__Type!]!
  queryType: __Type!
  mutationType: __Type
  subscriptionType: __Type
  directives: [__Directive!]!
}

type __Type {
  kind: __TypeKind!
  name: String
  description: String
  # must be non-null for OBJECT and INTERFACE, otherwise null.
  fields(includeDeprecated: Boolean = false): [__Field!]
  # must be non-null for OBJECT and INTERFACE, otherwise null.
  interfaces: [__Type!]
  # must be non-null for INTERFACE and UNION, otherwise null.
  possibleTypes: [__Type!]
  # must be non-null for ENUM, otherwise null.
  enumValues(includeDeprecated: Boolean = false): [__EnumValue!]
  # must be non-null for INPUT_OBJECT, otherwise null.
  inputFields: [__InputValue!]
  # must be non-null for NON_NULL and LIST, otherwise null.
  ofType: __Type
  # may be non-null for custom SCALAR, otherwise null.
  specifiedByURL: String
}

enum __TypeKind {
  SCALAR
  OBJECT
  INTERFACE
  UNION
  ENUM
  INPUT_OBJECT
  LIST
  NON_NULL
}

type __Field {
  name: String!
  description: String
  args: [__InputValue!]!
  type: __Type!
  isDeprecated: Boolean!
  deprecationReason: String
}

type __InputValue {
  name: String!
  description: String
  type: __Type!
  defaultValue: String
}

type __EnumValue {
  name: String!
  description: String
  isDeprecated: Boolean!
  deprecationReason: String
}

type __Directive {
  name: String!
  description: String
  locations: [__DirectiveLocation!]!
  args: [__InputValue!]!
  isRepeatable: Boolean!
}

enum __DirectiveLocation {
  QUERY
  MUTATION
  SUBSCRIPTION
  FIELD
  FRAGMENT_DEFINITION
  FRAGMENT_SPREAD
  INLINE_FRAGMENT
  VARIABLE_DEFINITION
  SCHEMA
  SCALAR
  OBJECT
  FIELD_DEFINITION
  ARGUMENT_DEFINITION
  INTERFACE
  UNION
  ENUM
  ENUM_VALUE
  INPUT_OBJECT
  INPUT_FIELD_DEFINITION
}
""");

class Schema<TKey extends Object> {
  final TKey mainKey;
  final BuiltMap<TKey, DocumentNode> _entries;
  Iterable<DefinitionNode>? _cachedDefinitions;
  Map<String, TypeDefinitionNode>? _cachedTypeDefinitionsMap;
  Map<DefinitionNode, TKey>? _cachedDefinitionNodeToKeyMap;
  Map<String, Map<String, FieldDefinitionNode>> _cachedFields = {};
  Map<OperationType, TypeDefinitionNode?> _cachedOperationTypeMap = {};
  Map<TKey, DocumentNode> _cachedDocumentNodes = {};
  final String Function(TKey) lookupPath;

  Schema(
    this.mainKey,
    this._entries,
    this.lookupPath,
  );

  Iterable<DefinitionNode> get definitions {
    final lCached = _cachedDefinitions;
    if (lCached != null) return lCached;
    return _cachedDefinitions = _entries.keys
        .expand<DefinitionNode>((e) => lookupDocument(e)?.definitions ?? []);
  }

  DocumentNode? lookupDocument(TKey key) {
    if (_cachedDocumentNodes.containsKey(key)) {
      return _cachedDocumentNodes[key];
    }
    final document = _entries[key];
    if (document == null) {
      return null;
    }
    return _cachedDocumentNodes[key] = key == mainKey
        ? DocumentNode(
            definitions: [
              ...document.definitions,
              ..._buildInSchema.definitions,
            ],
          )
        : document;
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

  String? lookupPathFromDefinitionNode(DefinitionNode node) {
    var lCached = _cachedDefinitionNodeToKeyMap;
    if (lCached == null) {
      lCached = _cachedDefinitionNodeToKeyMap = Map.identity();
      lCached.addEntries(
        _entries.entries.expand((element) {
          final document = lookupDocument(element.key);
          if (document == null) {
            return [];
          }
          return document.definitions.map((e) => MapEntry(e, element.key));
        }),
      );
    }
    final key = lCached[node];
    return key == null ? null : lookupPath(key);
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
    if (_cachedOperationTypeMap.containsKey(operationType)) {
      return _cachedOperationTypeMap[operationType];
    }
    final opNode = definitions.expand<OperationTypeDefinitionNode?>((e) {
      if (e is SchemaDefinitionNode) {
        return e.operationTypes;
      }
      if (e is SchemaExtensionNode) {
        return e.operationTypes;
      }
      return [];
    }).firstWhere(
      (element) => element != null && element.operation == operationType,
      orElse: () => null,
    );

    final typeName =
        opNode?.type.name ?? _operationTypeToDefaultClass(operationType);

    return _cachedOperationTypeMap[operationType] = lookupType(typeName);
  }

  TypeDefinitionNode? lookupTypeDefinitionNodeFromField(
    TypeDefinitionNode onType,
    NameNode node,
  ) {
    final type = lookupTypeNodeFromField(onType, node);
    if (type == null) {
      return null;
    }
    return lookupTypeDefinitionFromTypeNode(type);
  }

  TypeNode? lookupTypeNodeFromField(
    TypeDefinitionNode onType,
    NameNode node,
  ) {
    return lookupFieldDefinitionNode(onType, node)?.type;
  }

  List<FieldDefinitionNode> _listObjectTypeDefinitionFields(
    ObjectTypeDefinitionNode node,
  ) {
    return [
      ...node.fields,
      ...definitions
          .whereType<ObjectTypeExtensionNode>()
          .expand((element) => element.fields)
    ];
  }

  List<FieldDefinitionNode> _listInterfaceTypeDefinitionFields(
    InterfaceTypeDefinitionNode node,
  ) {
    return [
      ...node.fields,
      ...definitions
          .whereType<InterfaceTypeExtensionNode>()
          .expand((element) => element.fields)
    ];
  }

  Map<String, FieldDefinitionNode> _lookupFieldDefinitionsForTypeDefinitionNode(
    TypeDefinitionNode onType,
  ) {
    if (_cachedFields.containsKey(onType.name.value)) {
      return _cachedFields[onType.name.value] ?? {};
    }
    if (onType is! ObjectTypeDefinitionNode &&
        onType is! InterfaceTypeDefinitionNode &&
        onType is! UnionTypeDefinitionNode) {
      return _cachedFields[onType.name.value] = {};
    }
    final fieldMap = Map.fromEntries(
      [
        if (onType is ObjectTypeDefinitionNode)
          ..._listObjectTypeDefinitionFields(onType),
        if (onType is InterfaceTypeDefinitionNode)
          ..._listInterfaceTypeDefinitionFields(onType),
        if (onType == lookupOperationType(OperationType.query))
          ..._QUERY_INTROSPECTION_FIELDS,
        ..._INTROSPECTION_FIELDS,
      ].map(
        (e) => MapEntry(e.name.value, e),
      ),
    );
    _cachedFields[onType.name.value] = fieldMap;
    return fieldMap;
  }

  FieldDefinitionNode? lookupFieldDefinitionNode(
    TypeDefinitionNode onType,
    NameNode field,
  ) {
    return _lookupFieldDefinitionsForTypeDefinitionNode(onType)[field.value];
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

  List<EnumValueDefinitionNode> lookupEnumValueDefinitions(
      EnumTypeDefinitionNode node) {
    return [
      ...node.values,
      ...definitions
          .whereType<EnumTypeExtensionNode>()
          .expand((element) => element.values)
    ];
  }
}
