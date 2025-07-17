import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/context/context.dart';
import 'package:graphql_codegen/src/printer/context.dart';

typedef DataObjResolver = Expression Function();

Method printEqualityOperator(
  PrintContext c,
  String name,
  Iterable<ContextProperty> properties, {
  DataObjResolver? dataObjectCheckResolver,
}) => Method(
  (b) => b
    ..name = "operator=="
    ..returns = refer("bool")
    ..requiredParameters = ListBuilder([
      Parameter(
        (b) => b
          ..type = refer("Object")
          ..name = "other",
      ),
    ])
    ..lambda = false
    ..annotations = ListBuilder([refer("override")])
    ..body = Block(
      (b) => b
        ..statements = ListBuilder([
          Code("if (identical(this, other)) {return true;}"),
          Code(
            "if (other is! ${name} || runtimeType != other.runtimeType) {return false;}",
          ),
          ...properties.expand((e) {
            final localThisName = c.namePrinter.printLocalPropertyName(e.name);
            final localOtherName = c.namePrinter.printLocalPropertyName(
              e.name,
              'lOther',
            );
            return [
              declareFinal(localThisName)
                  .assign(refer(c.namePrinter.printPropertyName(e.name)))
                  .statement,
              declareFinal(localOtherName)
                  .assign(
                    refer(
                      "other",
                    ).property(c.namePrinter.printPropertyName(e.name)),
                  )
                  .statement,
              if (dataObjectCheckResolver != null && !e.isRequired) ...[
                Code('if ('),
                dataObjectCheckResolver().code,
                Code('.containsKey(\'${e.name.value}\') != other.'),
                dataObjectCheckResolver().code,
                Code('.containsKey(\'${e.name.value}\')) {return false;}'),
              ],
              _printPropertyEqualityCheck(
                e.nullableTypeOnDefaultValue,
                localThisName,
                localOtherName,
              ),
            ];
          }),
          literalTrue.returned.statement,
        ]),
    ),
);

Code _printPropertyEqualityCheck(TypeNode type, String self, String other) {
  if (type is NamedTypeNode) {
    return Code("if (${self} != ${other}) {return false;}");
  }
  if (type is ListTypeNode) {
    final selfEntryName = "${self}\$entry";
    final otherEntryName = "${other}\$entry";
    final innerCheck = _printPropertyEqualityCheck(
      type.type,
      selfEntryName,
      otherEntryName,
    );
    final listCheck = Block.of([
      Code("if (${self}.length != ${other}.length) {return false;}"),
      Code("for (int i = 0; i < ${self}.length; i ++) {"),
      Code("final ${selfEntryName} = ${self}[i];"),
      Code("final ${otherEntryName} = ${other}[i];"),
      innerCheck,
      Code("}"),
    ]);
    if (type.isNonNull) return listCheck;
    return Block.of([
      Code("if (${self} != null && ${other} != null) {"),
      listCheck,
      Code("} else if (${self} != ${other}) { return false; }"),
    ]);
  }
  throw new StateError("Unsupported type node");
}

Method printHashCodeMethod(
  PrintContext context,
  Iterable<ContextProperty> properties, {
  DataObjResolver? dataObjectCheckResolver,
}) => Method(
  (b) => b
    ..name = "hashCode"
    ..annotations = ListBuilder([refer("override")])
    ..returns = refer("int")
    ..type = MethodType.getter
    ..lambda = false
    ..body = Block(
      (b) => b.statements = ListBuilder([
        ...properties.map(
          (e) =>
              declareFinal(context.namePrinter.printLocalPropertyName(e.name))
                  .assign(refer(context.namePrinter.printPropertyName(e.name)))
                  .statement,
        ),
        refer("Object")
            .property("hashAll")
            .call([
              literalList(
                properties.map((property) {
                  final localProp = context.namePrinter.printLocalPropertyName(
                    property.name,
                  );
                  final hash = _printPropertyHash(
                    property.nullableTypeOnDefaultValue,
                    refer(localProp),
                  );
                  if (dataObjectCheckResolver != null && !property.isRequired) {
                    return dataObjectCheckResolver()
                        .property('containsKey')
                        .call([literalString(property.name.value)])
                        .conditional(hash, literalConstMap({}));
                  }
                  return hash;
                }),
              ),
            ])
            .returned
            .statement,
      ]),
    ),
);

Expression _printPropertyHash(TypeNode type, Expression name) {
  if (type is NamedTypeNode) {
    return name;
  }
  if (type is ListTypeNode) {
    final inner = refer("Object").property("hashAll").call([
      name.property("map").call([
        Method(
          (b) => b
            ..lambda = true
            ..requiredParameters = ListBuilder([
              Parameter((b) => b..name = "v"),
            ])
            ..body = _printPropertyHash(type.type, refer("v")).code,
        ).closure,
      ]),
    ]);
    if (type.isNonNull) {
      return inner;
    }
    return name.equalTo(literalNull).conditional(literalNull, inner);
  }
  throw StateError("Unsupported type node");
}
