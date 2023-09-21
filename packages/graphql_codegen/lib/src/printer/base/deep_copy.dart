import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';

Method? printDeepCopyStub(PrintContext c, ContextProperty property) {
  {
    final propertyContext = _propertyContext(c, property);
    if (propertyContext == null) return null;
    final copyClassName = c.namePrinter.printCopyWithClassName(
      c.namePrinter.printClassName(propertyContext.path),
    );

    if (property.type is ListTypeNode) {
      return Method(
        (b) => b
          ..name = c.namePrinter.printPropertyName(property.name)
          ..requiredParameters =
              ListBuilder([Parameter((b) => b..name = '_fn')])
          ..lambda = true
          ..body = refer('_res').code,
      );
    } else {
      return Method(
        (b) => b
          ..name = c.namePrinter.printPropertyName(property.name)
          ..type = MethodType.getter
          ..lambda = true
          ..returns = refer('${copyClassName}<TRes>')
          ..body =
              refer(copyClassName).property('stub').call([refer('_res')]).code,
      );
    }
  }
}

Context? _propertyContext(PrintContext c, ContextProperty property) {
  final contextName = property.path;
  if (contextName == null) {
    return null;
  }
  final resolvedContext = c.context.lookupContext(contextName)?.resolvedContext;
  if (resolvedContext is! ContextFragment &&
      resolvedContext is! ContextOperation &&
      resolvedContext is! ContextInput) {
    return null;
  }
  return resolvedContext;
}

Method? printDeepCopy(
  PrintContext printContext,
  ContextProperty property, {
  bool abstract = false,
}) {
  final resolvedContext = _propertyContext(printContext, property);
  if (resolvedContext == null) return null;
  return _printDeepCopyTypeNode(
    printContext,
    resolvedContext,
    property,
    abstract,
  );
}

Method? _printDeepCopyTypeNode(
  PrintContext printContext,
  Context context,
  ContextProperty property,
  bool abstract,
) {
  final node = property.nullableTypeOnDefaultValue;
  final namePrinter = printContext.namePrinter;
  final propertyName = namePrinter.printPropertyName(property.name);
  final copyClassName = namePrinter.printCopyWithClassName(
    namePrinter.printClassName(context.path),
  );
  final innerReturn = "${copyClassName}<TRes>";
  if (node is ListTypeNode) {
    return Method(
      (b) => b
        ..name = propertyName
        ..returns = refer('TRes')
        ..requiredParameters = ListBuilder([
          Parameter((b) => b
            ..name = '_fn'
            ..type = FunctionType(
              (b) => b
                ..returnType = _printDeepCopyReturnList(
                  node,
                  namePrinter.printClassName(context.path),
                  'Iterable',
                )
                ..requiredParameters = ListBuilder([
                  _printDeepCopyReturnList(
                    node,
                    "${copyClassName}<${namePrinter.printClassName(context.path)}>",
                    'Iterable',
                  )
                ]),
            ))
        ])
        ..lambda = !abstract
        ..body = abstract
            ? null
            : refer('call').call([], {
                propertyName: _printDeepCopyResultMapper(
                    node,
                    refer('_fn').call([
                      _printDeepCopyParameterMapper(
                        node,
                        refer('_instance').property(propertyName),
                        copyClassName,
                      )
                    ])),
              }).code,
    );
  }
  if (node is NamedTypeNode) {
    final localVariableName = 'local\$${propertyName}';
    final callCopy =
        "${copyClassName}(${localVariableName}, (e) => call(${propertyName}: e))";
    return Method(
      (b) => b
        ..name = propertyName
        ..returns = refer(innerReturn)
        ..type = MethodType.getter
        ..body = abstract ? null : Code("""
  final ${localVariableName} = _instance.${propertyName};
  return ${property.isRequired ? callCopy : '${localVariableName} == null ? ${copyClassName}.stub(_then(_instance)) : ${callCopy}'};

"""),
    );
  }
  return null;
}

Expression _printDeepCopyParameterMapper(
  TypeNode node,
  Expression reference,
  String copyClass,
) {
  if (node is ListTypeNode) {
    return _maybeNullSafeProperty(reference, 'map', !node.isNonNull).call([
      Method(
        (b) => b
          ..lambda = true
          ..requiredParameters = ListBuilder([Parameter((b) => b..name = 'e')])
          ..body =
              _printDeepCopyParameterMapper(node.type, refer('e'), copyClass)
                  .code,
      ).closure
    ]);
  } else {
    final call = refer(copyClass).call([
      reference,
      printIdentityFunction().closure,
    ]);
    return node.isNonNull
        ? call
        : reference.equalTo(literalNull).conditional(literalNull, call);
  }
}

Expression _maybeNullSafeProperty(
    Expression target, String property, bool nullsafe) {
  return nullsafe
      ? target.nullSafeProperty(property)
      : target.property(property);
}

Expression _printDeepCopyResultMapper(ListTypeNode node, Expression reference) {
  final innerType = node.type;
  if (innerType is ListTypeNode) {
    return _maybeNullSafeProperty(reference, 'map', !node.isNonNull)
        .call([
          Method(
            (b) => b
              ..requiredParameters =
                  ListBuilder([Parameter((b) => b..name = 'e')])
              ..body = _printDeepCopyResultMapper(innerType, refer('e')).code,
          ).closure
        ])
        .property('toList')
        .call([]);
  } else {
    return _maybeNullSafeProperty(reference, 'toList', !node.isNonNull)
        .call([]);
  }
}

Reference _printDeepCopyReturnNode(
  TypeNode node,
  String innerReference,
  String wrapper,
) {
  if (node is ListTypeNode) {
    return _printDeepCopyReturnList(node, innerReference, wrapper);
  }
  if (node is NamedTypeNode) {
    return _printDeepCopyReturnName(node, innerReference);
  }
  throw StateError("Unsupported type node");
}

Reference _printDeepCopyReturnList(
  ListTypeNode node,
  String innerReference,
  String wrapper,
) {
  return generic(
    wrapper,
    _printDeepCopyReturnNode(node.type, innerReference, wrapper),
    isNullable: !node.isNonNull,
  );
}

Reference _printDeepCopyReturnName(
  NamedTypeNode node,
  String innerReference,
) =>
    TypeReference(
      (b) => b
        ..symbol = innerReference
        ..isNullable = !node.isNonNull,
    );
