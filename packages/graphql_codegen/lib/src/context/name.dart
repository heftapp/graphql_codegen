import 'package:built_collection/built_collection.dart';
import 'package:gql/ast.dart';

class Name {
  final BuiltList<NameSegment> segments;
  final BaseNameSegment baseNameSegment;

  Name(this.segments, this.baseNameSegment);

  factory Name.fromSegment(BaseNameSegment segment) => Name(
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

abstract class BaseNameSegment<TDefinitionNode extends DefinitionNode>
    extends NameSegment {
  final TDefinitionNode node;
  BaseNameSegment(NameNode name, this.node) : super(name);
}

class EnumNameSegment extends BaseNameSegment<EnumTypeDefinitionNode> {
  EnumNameSegment(EnumTypeDefinitionNode tpe) : super(tpe.name, tpe);

  @override
  String get _key => "E${name.value}";
}

class InputNameSegment extends BaseNameSegment<InputObjectTypeDefinitionNode> {
  InputNameSegment(InputObjectTypeDefinitionNode tpe) : super(tpe.name, tpe);

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

class OperationNameSegment extends BaseNameSegment<OperationDefinitionNode> {
  OperationNameSegment(OperationDefinitionNode name) : super(name.name!, name);

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

class FragmentNameSegment extends BaseNameSegment<FragmentDefinitionNode> {
  FragmentNameSegment(FragmentDefinitionNode node) : super(node.name, node);

  @override
  String get _key => "F${name.value}";
}
