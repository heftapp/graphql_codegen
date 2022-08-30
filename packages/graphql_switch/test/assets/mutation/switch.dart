// Generated file, do not modify
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_switch/graphql_switch.dart';
export 'package:graphql_switch/graphql_switch.dart' show graphql;

Future<void> _initialzer(ClientInitializer initializer) async {
  initializer
    ..registerOperation(
        r'Mutation$IncrementCounter',
        const DocumentNode(definitions: [
          OperationDefinitionNode(
              type: OperationType.mutation,
              name: NameNode(value: 'IncrementCounter'),
              variableDefinitions: [
                VariableDefinitionNode(
                    variable: VariableNode(name: NameNode(value: 'step')),
                    type: NamedTypeNode(
                        name: NameNode(value: 'Int'), isNonNull: true),
                    defaultValue: DefaultValueNode(value: null),
                    directives: [])
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'incrementCounter'),
                    alias: NameNode(value: 'counter'),
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'step'),
                          value: VariableNode(name: NameNode(value: 'step')))
                    ],
                    directives: [],
                    selectionSet: null)
              ]))
        ]));
  await initializer.setup();
}

class SwitchClient extends InternalSwitchClient {
  SwitchClient(
      {required Widget child,
      required InitializeResult initializeResult,
      Key? key})
      : super(child, initializeResult, key);

  static Future<InitializeResult> initialize<TClientContext extends Object?>(
          {required FetchFn<TClientContext> fetch,
          required TClientContext clientContext}) =>
      InternalSwitchClient.initialize<TClientContext>(
          _initialzer, fetch, clientContext);
}

MutationResultWithRequiredVariables<Variables$Mutation$IncrementCounter,
    Mutation$IncrementCounter> useMutation$IncrementCounter(
        DocumentNode document) =>
    useMutationWithRequiredVariables(
        r'Mutation$IncrementCounter', Mutation$IncrementCounter.fromJson);

class Mutation$IncrementCounter {
  Mutation$IncrementCounter._(this.$rawData, this.counter);

  final Map<String, dynamic> $rawData;

  final int? counter;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$IncrementCounter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$counter = counter;
    final lOther$counter = other.counter;
    if (l$counter != lOther$counter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$counter = counter;
    return Object.hashAll([l$counter]);
  }

  static Mutation$IncrementCounter fromJson(Map<String, dynamic> json) {
    final l$counter = json['counter'];
    return Mutation$IncrementCounter._(json, (l$counter as int?));
  }
}

typedef _BuilderVariables$Mutation$IncrementCounter
    = Variables$Mutation$IncrementCounter Function(
        Variables$Mutation$IncrementCounter Function({required int step}));

class Variables$Mutation$IncrementCounter implements Input {
  Variables$Mutation$IncrementCounter._(this._data);

  factory Variables$Mutation$IncrementCounter(
          _BuilderVariables$Mutation$IncrementCounter builder) =>
      builder(({required Object step}) => Variables$Mutation$IncrementCounter._(
            {
              r"step": step,
            },
          ));

  Map<String, dynamic> _data;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$IncrementCounter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (l$step != lOther$step) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$step = step;
    return Object.hashAll([l$step]);
  }

  Map<String, dynamic> toJson() {
    final l$step = (_data['step'] as int);
    return {
      "step": l$step,
    };
  }

  int get step => (_data['step'] as int);
}
