import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationUpdateSRequired extends JsonSerializable {
  VariablesMutationUpdateSRequired({required this.name});

  @override
  factory VariablesMutationUpdateSRequired.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSRequiredFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateSRequiredToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationUpdateSRequired extends JsonSerializable {
  MutationUpdateSRequired({this.s});

  @override
  factory MutationUpdateSRequired.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSRequiredFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSRequiredToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtensionMutationUpdateSRequired on MutationUpdateSRequired {
  MutationUpdateSRequired copyWith({String? Function()? s}) =>
      MutationUpdateSRequired(s: s == null ? this.s : s());
}

const MUTATION_UPDATE_S_REQUIRED = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSRequired'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationUpdateSRequired _parserFnMutationUpdateSRequired(
        Map<String, dynamic> data) =>
    MutationUpdateSRequired.fromJson(data);
typedef OnMutationCompletedMutationUpdateSRequired = FutureOr<void> Function(
    dynamic, MutationUpdateSRequired?);

class OptionsMutationUpdateSRequired
    extends graphql.MutationOptions<MutationUpdateSRequired> {
  OptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSRequired? onCompleted,
      graphql.OnMutationUpdate<MutationUpdateSRequired>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFnMutationUpdateSRequired(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_REQUIRED,
            parserFn: _parserFnMutationUpdateSRequired);

  final OnMutationCompletedMutationUpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSRequired
    extends graphql.WatchQueryOptions<MutationUpdateSRequired> {
  WatchOptionsMutationUpdateSRequired(
      {String? operationName,
      required VariablesMutationUpdateSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATION_UPDATE_S_REQUIRED,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSRequired);
}

extension ClientExtensionMutationUpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSRequired>> mutateUpdateSRequired(
          OptionsMutationUpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSRequired> watchMutationUpdateSRequired(
          WatchOptionsMutationUpdateSRequired options) =>
      this.watchMutation(options);
}

class MutationUpdateSRequiredHookResult {
  MutationUpdateSRequiredHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateSRequired runMutation;

  final graphql.QueryResult<MutationUpdateSRequired> result;
}

MutationUpdateSRequiredHookResult useMutationUpdateSRequired(
    [WidgetOptionsMutationUpdateSRequired? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdateSRequired());
  return MutationUpdateSRequiredHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateSRequired>
    useWatchMutationUpdateSRequired(
            WatchOptionsMutationUpdateSRequired options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdateSRequired
    extends graphql.MutationOptions<MutationUpdateSRequired> {
  WidgetOptionsMutationUpdateSRequired(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSRequired? onCompleted,
      graphql.OnMutationUpdate<MutationUpdateSRequired>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFnMutationUpdateSRequired(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_REQUIRED,
            parserFn: _parserFnMutationUpdateSRequired);

  final OnMutationCompletedMutationUpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateSRequired
    = graphql.MultiSourceResult<MutationUpdateSRequired>
        Function(VariablesMutationUpdateSRequired, {Object? optimisticResult});
typedef BuilderMutationUpdateSRequired = widgets.Widget Function(
    RunMutationMutationUpdateSRequired,
    graphql.QueryResult<MutationUpdateSRequired>?);

class MutationUpdateSRequiredWidget
    extends graphql_flutter.Mutation<MutationUpdateSRequired> {
  MutationUpdateSRequiredWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateSRequired? options,
      required BuilderMutationUpdateSRequired builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateSRequired(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
