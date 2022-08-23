import 'package:gql/ast.dart';
import 'package:graphql_switch/src/builder/visitors/visitors.dart';
import 'package:graphql_codegen/src/context.dart';

TNode preProcessNode<TNode extends Node>(Schema schema, TNode node) =>
    node.accept(AddTypenameAndDataId(definitionNode: null, schema: schema))
        as TNode;

TNode postProcessNode<TNode extends Node>(TNode node) =>
    node.accept<Node>(RemoveDirectivesVisitor()) as TNode;
