import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationUpdateSOptional extends JsonSerializable {
  VariablesMutationUpdateSOptional({this.name});

  @override
  factory VariablesMutationUpdateSOptional.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationUpdateSOptional extends JsonSerializable {
  MutationUpdateSOptional({this.s});

  @override
  factory MutationUpdateSOptional.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSOptionalFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSOptionalToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

const MUTATION_UPDATE_S_OPTIONAL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSOptional'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
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
MutationUpdateSOptional _parserFnMutationUpdateSOptional(
        Map<String, dynamic> data) =>
    MutationUpdateSOptional.fromJson(data);
typedef OnMutationCompletedMutationUpdateSOptional = FutureOr<void> Function(
    dynamic, MutationUpdateSOptional?);

class OptionsMutationUpdateSOptional
    extends graphql.MutationOptions<MutationUpdateSOptional> {
  OptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSOptional? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables?.toJson() ?? {},
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
                        : _parserFnMutationUpdateSOptional(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_OPTIONAL,
            parserFn: _parserFnMutationUpdateSOptional);

  final OnMutationCompletedMutationUpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSOptional
    extends graphql.WatchQueryOptions<MutationUpdateSOptional> {
  WatchOptionsMutationUpdateSOptional(
      {String? operationName,
      VariablesMutationUpdateSOptional? variables,
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
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATION_UPDATE_S_OPTIONAL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSOptional);
}

extension ClientExtensionMutationUpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSOptional>> mutateUpdateSOptional(
          [OptionsMutationUpdateSOptional? options]) async =>
      await this.mutate(options ?? OptionsMutationUpdateSOptional());
  graphql.ObservableQuery<MutationUpdateSOptional> watchMutationUpdateSOptional(
          [WatchOptionsMutationUpdateSOptional? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationUpdateSOptional());
}

class MutationUpdateSOptionalHookResult {
  MutationUpdateSOptionalHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateSOptional runMutation;

  final graphql.QueryResult<MutationUpdateSOptional> result;
}

MutationUpdateSOptionalHookResult useMutationUpdateSOptional(
    [WidgetOptionsMutationUpdateSOptional? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdateSOptional());
  return MutationUpdateSOptionalHookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateSOptional>
    useWatchMutationUpdateSOptional(
            [WatchOptionsMutationUpdateSOptional? options]) =>
        graphql_flutter
            .useWatchMutation(options ?? WatchOptionsMutationUpdateSOptional());

class WidgetOptionsMutationUpdateSOptional
    extends graphql.MutationOptions<MutationUpdateSOptional> {
  WidgetOptionsMutationUpdateSOptional(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSOptional? onCompleted,
      graphql.OnMutationUpdate? update,
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
                        : _parserFnMutationUpdateSOptional(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_OPTIONAL,
            parserFn: _parserFnMutationUpdateSOptional);

  final OnMutationCompletedMutationUpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateSOptional
    = graphql.MultiSourceResult<MutationUpdateSOptional> Function(
        {VariablesMutationUpdateSOptional? variables,
        Object? optimisticResult});
typedef BuilderMutationUpdateSOptional = widgets.Widget Function(
    RunMutationMutationUpdateSOptional,
    graphql.QueryResult<MutationUpdateSOptional>?);

class MutationUpdateSOptionalWidget
    extends graphql_flutter.Mutation<MutationUpdateSOptional> {
  MutationUpdateSOptionalWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateSOptional? options,
      required BuilderMutationUpdateSOptional builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateSOptional(),
            builder: (run, result) => builder(
                ({variables, optimisticResult}) => run(
                    variables?.toJson() ?? const {},
                    optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
