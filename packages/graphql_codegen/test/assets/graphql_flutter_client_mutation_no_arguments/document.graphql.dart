import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class MutationUpdateSNo extends JsonSerializable {
  MutationUpdateSNo({this.s});

  @override
  factory MutationUpdateSNo.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSNoFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSNoToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSNo) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtensionMutationUpdateSNo on MutationUpdateSNo {
  MutationUpdateSNo copyWith({String? Function()? s}) =>
      MutationUpdateSNo(s: s == null ? this.s : s());
}

const MUTATION_UPDATE_S_NO = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSNo'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: StringValueNode(value: 'lol', isBlock: false))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationUpdateSNo _parserFnMutationUpdateSNo(Map<String, dynamic> data) =>
    MutationUpdateSNo.fromJson(data);
typedef OnMutationCompletedMutationUpdateSNo = FutureOr<void> Function(
    dynamic, MutationUpdateSNo?);

class OptionsMutationUpdateSNo
    extends graphql.MutationOptions<MutationUpdateSNo> {
  OptionsMutationUpdateSNo(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSNo? onCompleted,
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
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdateSNo(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_NO,
            parserFn: _parserFnMutationUpdateSNo);

  final OnMutationCompletedMutationUpdateSNo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSNo
    extends graphql.WatchQueryOptions<MutationUpdateSNo> {
  WatchOptionsMutationUpdateSNo(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATION_UPDATE_S_NO,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationUpdateSNo);
}

extension ClientExtensionMutationUpdateSNo on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSNo>> mutateUpdateSNo(
          [OptionsMutationUpdateSNo? options]) async =>
      await this.mutate(options ?? OptionsMutationUpdateSNo());
  graphql.ObservableQuery<MutationUpdateSNo> watchMutationUpdateSNo(
          [WatchOptionsMutationUpdateSNo? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationUpdateSNo());
}

class MutationUpdateSNoHookResult {
  MutationUpdateSNoHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateSNo runMutation;

  final graphql.QueryResult<MutationUpdateSNo> result;
}

MutationUpdateSNoHookResult useMutationUpdateSNo(
    [WidgetOptionsMutationUpdateSNo? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptionsMutationUpdateSNo());
  return MutationUpdateSNoHookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateSNo> useWatchMutationUpdateSNo(
        [WatchOptionsMutationUpdateSNo? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptionsMutationUpdateSNo());

class WidgetOptionsMutationUpdateSNo
    extends graphql.MutationOptions<MutationUpdateSNo> {
  WidgetOptionsMutationUpdateSNo(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSNo? onCompleted,
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
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdateSNo(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_NO,
            parserFn: _parserFnMutationUpdateSNo);

  final OnMutationCompletedMutationUpdateSNo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateSNo
    = graphql.MultiSourceResult<MutationUpdateSNo> Function(
        {Object? optimisticResult});
typedef BuilderMutationUpdateSNo = widgets.Widget Function(
    RunMutationMutationUpdateSNo, graphql.QueryResult<MutationUpdateSNo>?);

class MutationUpdateSNoWidget
    extends graphql_flutter.Mutation<MutationUpdateSNo> {
  MutationUpdateSNoWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateSNo? options,
      required BuilderMutationUpdateSNo builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateSNo(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
