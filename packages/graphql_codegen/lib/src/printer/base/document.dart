import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:gql_code_builder/src/ast.dart' as gql_builder;
import "package:gql_code_builder/src/utils/uncapitalize.dart";
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/copy.dart';
import 'package:graphql_codegen/src/printer/base/equality.dart';
import 'package:graphql_codegen/src/printer/base/json.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';

Constructor _printFromJson(
  PrintContext context,
  String name,
  Iterable<ContextProperty> properties, [
  ContextProperty? typenameProperty,
  Iterable<Context> possibleTypes = const [],
]) {
  List<Code> body = [
    for (final property in properties)
      declareFinal(context.namePrinter.printLocalPropertyName(property.name))
          .assign(refer('json').index(literalString(property.name.value)))
          .statement,
    refer(name)
        .call([], {
          for (final prop in properties)
            context.namePrinter.printPropertyName(prop.name):
                printFromJsonValue(
              context,
              prop,
              context.namePrinter.printLocalPropertyName(prop.name),
            ),
        })
        .returned
        .statement,
  ];
  if (typenameProperty != null && possibleTypes.isNotEmpty) {
    final cases = possibleTypes.map(
      (t) => Code("""
        case "${t.currentType.name.value}":
            return ${context.namePrinter.printClassName(t.path)}.fromJson(json);
        """),
    );
    body = [
      Code('switch(json["${typenameProperty.name.value}"] as String) {'),
      ...cases,
      Code('default:'),
      ...body,
      Code('}')
    ];
  }
  return Constructor(
    (b) => b
      ..factory = true
      ..name = "fromJson"
      ..requiredParameters = ListBuilder([
        Parameter(
          (b) => b
            ..name = "json"
            ..type = dynamicMap,
        ),
      ])
      ..body = Block.of(body),
  );
}

Constructor _printConstructor(
  PrintContext c,
  Iterable<ContextProperty> properties,
) {
  return Constructor(
    (b) => b
      ..optionalParameters = ListBuilder(
        [
          ...properties.map<Parameter>(
            (p) => Parameter(
              (b) {
                final defaultTo = p.isTypenameField &&
                        c.context.currentType is ObjectTypeDefinitionNode
                    ? literalString(c.context.currentTypeName.value).code
                    : null;
                b
                  ..required = p.isRequired && defaultTo == null
                  ..named = true
                  ..toThis = true
                  ..defaultTo = defaultTo
                  ..name = c.namePrinter.printPropertyName(p.name);
              },
            ),
          ),
        ],
      )
      ..initializers = ListBuilder<Code>([]),
  );
}

Class printContext(PrintContext c) {
  c.markAsJsonSerializable();
  final context = c.context;
  final fragments = context.fragments.map((e) => e.replacementContext ?? e);
  c.addDependencies(fragments.map((e) => e.path));
  c.addDependencies(context.possibleTypes.map((e) => e.path));

  final extendContext = context.extendsContext;
  if (extendContext != null) {
    c.addDependency(extendContext.path);
  }
  final properties = c.context.properties;
  return Class(
    (b) => b
      ..name = c.namePrinter.printClassName(context.path)
      ..implements = ListBuilder([
        ...fragments
            .map((e) => c.namePrinter.printClassName(e.path))
            .toSet()
            .map(refer),
        if (extendContext != null)
          refer(c.namePrinter.printClassName(extendContext.path)),
      ])
      ..constructors = ListBuilder([
        _printConstructor(c, properties),
        _printFromJson(
          c,
          c.namePrinter.printClassName(context.path),
          properties,
          context.typenameProperty,
          context.possibleTypes,
        ),
      ])
      ..fields = ListBuilder(properties.map((p) => printClassProperty(c, p)))
      ..methods = ListBuilder([
        _printToJsonMethod(
          c,
          c.namePrinter.printClassName(context.path),
          properties,
        ),
        printHashCodeMethod(c, properties),
        printEqualityOperator(
          c,
          c.namePrinter.printClassName(context.path),
          properties,
        ),
      ]),
  );
}

List<Spec> printContextExtension(PrintContext c) {
  final context = c.context;
  final properties = c.context.properties;

  final whenMethod = _printWhen(
    c,
    context.typenameProperty,
    context.possibleTypes,
  );

  final maybeWhenMethod = _printMaybeWhen(
    c,
    context.typenameProperty,
    context.possibleTypes,
  );

  return [
    Extension(
      (b) => b
        ..name = c.namePrinter.printClassExtensionName(context.path)
        ..on = refer(c.namePrinter.printClassName(context.path))
        ..methods = ListBuilder([
          _printCopyWithMethod(
            c.namePrinter.printClassName(context.path),
            c,
          ),
          if (whenMethod != null) whenMethod,
          if (maybeWhenMethod != null) maybeWhenMethod,
        ]),
    ),
    ...printCopyWithClasses(
      c,
      c.namePrinter.printClassName(context.path),
      properties,
    ),
  ];
}

Method _printToJsonMethod(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties,
) {
  final resultDataVariable = '_resultData';
  return Method(
    (b) => b
      ..returns = dynamicMap
      ..name = "toJson"
      ..body = Block.of([
        declareFinal(resultDataVariable)
            .assign(literalMap({}, refer('String'), refer('dynamic')))
            .statement,
        for (final property in properties) ...[
          declareFinal(c.namePrinter.printLocalPropertyName(property.name))
              .assign(refer(c.namePrinter.printPropertyName(property.name)))
              .statement,
          refer(resultDataVariable)
              .index(literalString(property.name.value))
              .assign(printToJsonValue(
                c,
                property,
                c.namePrinter.printLocalPropertyName(property.name),
              ))
              .statement,
        ],
        refer(resultDataVariable).returned.statement,
      ]),
  );
}

Spec printDocument(
  PrintContext context,
  ExecutableDefinitionNode operation, [
  Code? mainDefinition,
]) {
  final fragments = context.context.fragmentDependencies;
  final fragmentNames = fragments.map(
    (e) => Name.fromSegment(FragmentNameSegment(e)),
  );
  context.addPackage('package:gql/ast.dart');
  context.addDependencies(fragmentNames);
  return Block(
    (b) => b.statements.addAll([
      Code(
        "const ${context.namePrinter.printDocumentDefinitionNodeName(context.context.path)} = DocumentNode(definitions: [",
      ),
      mainDefinition ?? gql_builder.fromNode(operation).code,
      Code(","),
      ...fragmentNames.expand((n) => [
            refer(context.namePrinter.printFragmentDefinitionNodeName(n)).code,
            Code(","),
          ]),
      Code("]);")
    ]),
  );
}

Method _printCopyWithMethod(
  String name,
  PrintContext context,
) {
  return Method((b) => b
    ..returns = TypeReference(
      (b) => b
        ..symbol = context.namePrinter.printCopyWithClassName(name)
        ..types = ListBuilder(<Reference>[refer(name)]),
    )
    ..name = 'copyWith'
    ..type = MethodType.getter
    ..lambda = true
    ..body = refer(context.namePrinter.printCopyWithClassName(name)).call(
      [
        refer('this'),
        printIdentityFunction().closure,
      ],
    ).code);
}

Method? _printWhen(
  PrintContext context,
  ContextProperty? typenameProperty,
  Iterable<Context> possibleTypes,
) {
  if (typenameProperty == null || possibleTypes.isEmpty) {
    return null;
  }

  String getParameterName(Context<Object, TypeDefinitionNode> type) {
    return uncapitalize(type.currentType.name.value);
  }

  String getGeneratedTypeName(Context<Object, TypeDefinitionNode> type) {
    return context.namePrinter.printClassName(type.path);
  }

  final _genericTypeParam = TypeReference((b) => b..symbol = "_T");
  final _typenamePropertyName =
      context.namePrinter.printPropertyName(typenameProperty.name);

  final cases = possibleTypes.map(
    (t) => Code("""
        case "${t.currentType.name.value}":
            return ${getParameterName(t)}(this as ${getGeneratedTypeName(t)});
        """),
  );
  List<Code> body = [
    Code('switch(${_typenamePropertyName}) {'),
    ...cases,
    Code('default:'),
    Code('return orElse();'),
    Code('}')
  ];

  return Method((m) => m
    ..name = "when"
    ..returns = _genericTypeParam
    ..types.add(_genericTypeParam)
    ..optionalParameters.addAll(possibleTypes.map(
      (t) => Parameter((p) => p
        ..name = getParameterName(t)
        ..type = FunctionType((b) => b
          ..returnType = _genericTypeParam
          ..requiredParameters.add(Reference(getGeneratedTypeName(t))))
        ..named = true
        ..required = true),
    ))
    ..optionalParameters.add(
      Parameter((p) => p
        ..name = 'orElse'
        ..type = FunctionType((b) => b..returnType = _genericTypeParam)
        ..named = true
        ..required = true),
    )
    ..body = Block.of(body));
}

Method? _printMaybeWhen(
  PrintContext context,
  ContextProperty? typenameProperty,
  Iterable<Context> possibleTypes,
) {
  if (typenameProperty == null || possibleTypes.isEmpty) {
    return null;
  }

  String getParameterName(Context<Object, TypeDefinitionNode> type) {
    return uncapitalize(type.currentType.name.value);
  }

  String getGeneratedTypeName(Context<Object, TypeDefinitionNode> type) {
    return context.namePrinter.printClassName(type.path);
  }

  final _genericTypeParam = TypeReference((b) => b..symbol = "_T");
  final _typenamePropertyName =
      context.namePrinter.printPropertyName(typenameProperty.name);

  final cases = possibleTypes.map(
    (t) => Code("""
        case "${t.currentType.name.value}":
            if (${getParameterName(t)} != null) {
              return ${getParameterName(t)}(this as ${getGeneratedTypeName(t)});
            } else {
              return orElse();
            }
        """),
  );
  List<Code> body = [
    Code('switch(${_typenamePropertyName}) {'),
    ...cases,
    Code('default:'),
    Code('return orElse();'),
    Code('}')
  ];

  return Method((m) => m
    ..name = "maybeWhen"
    ..returns = _genericTypeParam
    ..types.add(_genericTypeParam)
    ..optionalParameters.addAll(
      possibleTypes.map(
        (t) => Parameter((p) => p
          ..name = getParameterName(t)
          ..type = FunctionType((b) => b
            ..isNullable = true
            ..returnType = _genericTypeParam
            ..requiredParameters.add(Reference(getGeneratedTypeName(t))))
          ..named = true
          ..required = false),
      ),
    )
    ..optionalParameters.add(
      Parameter((p) => p
        ..name = 'orElse'
        ..type = FunctionType((b) => b..returnType = _genericTypeParam)
        ..named = true
        ..required = true),
    )
    ..body = Block.of(body));
}
