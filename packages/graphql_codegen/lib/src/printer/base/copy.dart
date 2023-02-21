import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:graphql_codegen/src/context.dart';
import 'package:graphql_codegen/src/printer/base/deep_copy.dart';
import 'package:graphql_codegen/src/printer/base/property.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';

const _undefined = '_undefined';

Expression _printDefaultConstructor(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties,
) {
  final constructorArguments = Map.fromEntries(properties.map((property) {
    final parameterName = c.namePrinter.printPropertyName(property.name);
    final propertyType = printClassPropertyType(c, property);
    return MapEntry(
        property.name,
        (property.isRequired
                ? refer(parameterName)
                    .equalTo(refer(_undefined))
                    .or(refer(parameterName).equalTo(literalNull))
                : refer(parameterName).equalTo(refer(_undefined)))
            .conditional(refer('_instance').property(parameterName),
                refer(parameterName).asA(propertyType)));
  }));
  return refer(name).call(
    [],
    {
      for (final argument in constructorArguments.entries)
        c.namePrinter.printPropertyName(argument.key): argument.value
    },
  );
}

List<Spec> printCopyWithClasses(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties, [
  Expression? instanceConstructor,
]) {
  final finalInstanceConstructor =
      instanceConstructor ?? _printDefaultConstructor(c, name, properties);

  final parameters = properties.map((property) {
    final propertyType = printClassPropertyType(c, property);
    return Parameter(
      (b) => b
        ..name = c.namePrinter.printPropertyName(property.name)
        ..named = true
        ..type = TypeReference(
          (b) => b
            ..symbol = propertyType.symbol
            ..types = propertyType.types.toBuilder()
            ..isNullable = true,
        ),
    );
  });
  return [
    // Public class
    Class(
      (b) => b
        ..types = ListBuilder([refer('TRes')])
        ..name = c.namePrinter.printCopyWithClassName(name)
        ..abstract = true
        ..constructors = ListBuilder(<Constructor>[
          Constructor(
            (b) => b
              ..initializers
              ..factory = true
              ..requiredParameters = ListBuilder(<Parameter>[
                Parameter((b) => b
                  ..name = 'instance'
                  ..type = refer(name)),
                Parameter((b) => b
                  ..name = 'then'
                  ..type = FunctionType(
                    (b) => b
                      ..returnType = refer('TRes')
                      ..requiredParameters =
                          ListBuilder(<Reference>[refer(name)]),
                  )),
              ])
              ..redirect =
                  refer(c.namePrinter.printCopyWithImplClassName(name)),
          ),
          Constructor(
            (b) => b
              ..initializers
              ..factory = true
              ..name = 'stub'
              ..requiredParameters = ListBuilder(<Parameter>[
                Parameter((b) => b
                  ..name = 'res'
                  ..type = refer('TRes')),
              ])
              ..redirect =
                  refer(c.namePrinter.printCopyWithStubImplClassName(name)),
          )
        ])
        ..methods = ListBuilder(<Method>[
          Method((b) => b
            ..name = 'call'
            ..returns = refer('TRes')
            ..optionalParameters = ListBuilder(
              parameters,
            )),
          ...properties
              .map((p) => printDeepCopy(c, p, abstract: true))
              .whereType<Method>(),
        ]),
    ),
    // Impl class
    Class(
      (b) => b
        ..types = ListBuilder([refer('TRes')])
        ..name = c.namePrinter.printCopyWithImplClassName(name)
        ..implements = ListBuilder([
          generic(c.namePrinter.printCopyWithClassName(name), refer('TRes')),
        ])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..requiredParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = '_instance',
              ),
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = '_then',
              ),
            ]))
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = '_instance'
              ..type = refer(name)
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (b) => b
              ..name = '_then'
              ..type = FunctionType(
                (b) => b
                  ..requiredParameters = ListBuilder(
                    <Reference>[
                      refer(name),
                    ],
                  )
                  ..returnType = refer('TRes'),
              )
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (b) => b
              ..name = _undefined
              ..static = true
              ..modifier = FieldModifier.constant
              ..assignment = literalMap(
                {},
                refer('dynamic'),
                refer('dynamic'),
              ).code,
          )
        ])
        ..methods = ListBuilder(<Method>[
          Method(
            (b) => b
              ..name = 'call'
              ..returns = refer('TRes')
              ..optionalParameters = ListBuilder(
                properties.map((property) {
                  return Parameter(
                    (b) => b
                      ..name = c.namePrinter.printPropertyName(property.name)
                      ..named = true
                      ..defaultTo = refer(_undefined).code
                      ..type = refer('Object?'),
                  );
                }),
              )
              ..lambda = true
              ..body = refer('_then').call([finalInstanceConstructor]).code,
          ),
          ...properties.map((p) => printDeepCopy(c, p)).whereType<Method>(),
        ]),
    ),
    Class(
      (b) => b
        ..name = c.namePrinter.printCopyWithStubImplClassName(name)
        ..types = ListBuilder([refer('TRes')])
        ..implements = ListBuilder(<Reference>[
          generic(
            c.namePrinter.printCopyWithClassName(name),
            refer('TRes'),
          )
        ])
        ..fields = ListBuilder([
          Field(
            (b) => b
              ..name = '_res'
              ..type = refer('TRes'),
          )
        ])
        ..constructors = ListBuilder([
          Constructor((b) => b
            ..requiredParameters = ListBuilder([
              Parameter((b) => b
                ..toThis = true
                ..name = '_res')
            ]))
        ])
        ..methods = ListBuilder(<Method>[
          Method(
            (b) => b
              ..name = 'call'
              ..lambda = true
              ..body = refer('_res').code
              ..optionalParameters = ListBuilder(parameters),
          ),
          ...properties
              .map((property) => printDeepCopyStub(c, property))
              .whereType<Method>()
        ]),
    )
  ];
}
