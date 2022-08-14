import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/errors.dart';
import 'package:graphql_codegen/src/printer/context.dart';

Field printClassProperty(
  PrintContext context,
  ContextProperty property,
) {
  final classPropertyTypeT = printClassPropertyType(
    context,
    property,
  );
  return Field(
    (b) => b
      ..modifier = FieldModifier.final$
      ..name = context.namePrinter.printPropertyName(property.name)
      ..type = classPropertyTypeT,
  );
}

TypeReference printClassPropertyType(
  PrintContext context,
  ContextProperty property,
) {
  final typeNode = property.type;
  return _printTypeNode(
    context,
    typeNode,
    propertyContext: property.path,
  );
}

TypeReference _printTypeNode(
  PrintContext context,
  TypeNode typeNode, {
  Name? propertyContext,
}) {
  if (typeNode is NamedTypeNode) {
    return _printNamedTypeNode(
      context,
      typeNode,
      propertyContext: propertyContext,
    );
  }
  if (typeNode is ListTypeNode) {
    return _printListTypeNode(
      context,
      typeNode,
      propertyContext: propertyContext,
    );
  }
  throw StateError("Unsupported node");
}

TypeReference _printListTypeNode(
  PrintContext context,
  ListTypeNode typeNode, {
  Name? propertyContext,
}) {
  final innerRef = _asList(_printTypeNode(
    context,
    typeNode.type,
    propertyContext: propertyContext,
  ));
  return typeNode.isNonNull ? innerRef : _asNullable(innerRef);
}

TypeReference _printNamedTypeNode(
  PrintContext context,
  NamedTypeNode typeNode, {
  Name? propertyContext,
}) {
  final typeDefinition =
      context.context.schema.lookupTypeDefinitionFromTypeNode(
    typeNode,
  );
  if (typeDefinition == null) {
    throw PrinterError(
      "Failed to find type definition for type ${typeNode.name.value}",
    );
  }
  final replacementContext = propertyContext != null
      ? context.context
              .lookupContext(propertyContext)
              ?.replacementContext
              ?.path ??
          propertyContext
      : null;
  if (replacementContext != null) {
    context.addDependency(replacementContext);
  }

  TypeReference reference;
  if (typeDefinition is ScalarTypeDefinitionNode) {
    reference = _printScalarType(context, typeDefinition);
  } else if (typeDefinition is EnumTypeDefinitionNode &&
      propertyContext != null) {
    reference = _printEnumType(context, propertyContext);
  } else if (replacementContext != null) {
    reference = TypeReference(
      (b) => b..symbol = context.namePrinter.printClassName(replacementContext),
    );
  } else {
    throw StateError("Failed to generate type.");
  }
  if (typeNode.isNonNull) {
    return reference;
  }
  return _asNullable(reference);
}

TypeReference _printEnumType(
  PrintContext context,
  Name name,
) {
  final typeName = context.namePrinter.printClassName(name);
  return TypeReference((b) => b..symbol = typeName);
}

Map<String, GraphQLCodegenConfigScalar> scalarConfigs(PrintContext context) {
  return {
    'Int': const GraphQLCodegenConfigScalar(type: 'int'),
    'Boolean': const GraphQLCodegenConfigScalar(type: 'bool'),
    'String': const GraphQLCodegenConfigScalar(type: 'String'),
    'ID': const GraphQLCodegenConfigScalar(type: 'String'),
    'Float': const GraphQLCodegenConfigScalar(type: 'double'),
    ...context.context.config.scalars,
  };
}

GraphQLCodegenConfigScalar scalarConfigFromScalarDefinition(
  PrintContext context,
  ScalarTypeDefinitionNode node,
) {
  final scalars = scalarConfigs(context);

  final ref = scalars[node.name.value] ??
      const GraphQLCodegenConfigScalar(type: 'String');
  if (!scalars.containsKey(node.name.value)) {
    context.markScalarAsBad(node.name.value);
  }
  final import = ref.import;
  if (import != null) {
    context.addPackage(import);
  }
  return ref;
}

TypeReference _printScalarType(
  PrintContext context,
  ScalarTypeDefinitionNode node,
) {
  final ref = scalarConfigFromScalarDefinition(context, node);
  return TypeReference((b) => b..symbol = ref.type);
}

TypeReference _asNullable(TypeReference reference) => TypeReference(
      (b) => b
        ..isNullable = true
        ..symbol = reference.symbol
        ..types = reference.types.toBuilder(),
    );

TypeReference _asList(TypeReference reference) => TypeReference(
      (b) => b
        ..symbol = 'List'
        ..types = ListBuilder([reference]),
    );
