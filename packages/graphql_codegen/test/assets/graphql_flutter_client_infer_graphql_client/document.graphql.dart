import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Mutation$UpdateSNo {
  Mutation$UpdateSNo({this.s});

  factory Mutation$UpdateSNo.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSNo(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateSNo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSNo on Mutation$UpdateSNo {
  CopyWith$Mutation$UpdateSNo<Mutation$UpdateSNo> get copyWith =>
      CopyWith$Mutation$UpdateSNo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSNo<TRes> {
  factory CopyWith$Mutation$UpdateSNo(
    Mutation$UpdateSNo instance,
    TRes Function(Mutation$UpdateSNo) then,
  ) = _CopyWithImpl$Mutation$UpdateSNo;

  factory CopyWith$Mutation$UpdateSNo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSNo;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSNo<TRes>
    implements CopyWith$Mutation$UpdateSNo<TRes> {
  _CopyWithImpl$Mutation$UpdateSNo(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSNo _instance;

  final TRes Function(Mutation$UpdateSNo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(
      Mutation$UpdateSNo(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSNo<TRes>
    implements CopyWith$Mutation$UpdateSNo<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSNo(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSNo = DocumentNode(definitions: [
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
            value: StringValueNode(
              value: 'lol',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$UpdateSNo _parserFn$Mutation$UpdateSNo(Map<String, dynamic> data) =>
    Mutation$UpdateSNo.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSNo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateSNo?,
);

class Options$Mutation$UpdateSNo
    extends graphql.MutationOptions<Mutation$UpdateSNo> {
  Options$Mutation$UpdateSNo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSNo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSNo? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSNo>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateSNo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSNo,
          parserFn: _parserFn$Mutation$UpdateSNo,
        );

  final OnMutationCompleted$Mutation$UpdateSNo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSNo
    extends graphql.WatchQueryOptions<Mutation$UpdateSNo> {
  WatchOptions$Mutation$UpdateSNo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSNo? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateSNo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSNo,
        );
}

extension ClientExtension$Mutation$UpdateSNo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSNo>> mutate$UpdateSNo(
          [Options$Mutation$UpdateSNo? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateSNo());
  graphql.ObservableQuery<Mutation$UpdateSNo> watchMutation$UpdateSNo(
          [WatchOptions$Mutation$UpdateSNo? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSNo());
}

class Mutation$UpdateSNo$HookResult {
  Mutation$UpdateSNo$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateSNo runMutation;

  final graphql.QueryResult<Mutation$UpdateSNo> result;
}

Mutation$UpdateSNo$HookResult useMutation$UpdateSNo(
    [WidgetOptions$Mutation$UpdateSNo? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateSNo());
  return Mutation$UpdateSNo$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateSNo> useWatchMutation$UpdateSNo(
        [WatchOptions$Mutation$UpdateSNo? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$UpdateSNo());

class WidgetOptions$Mutation$UpdateSNo
    extends graphql.MutationOptions<Mutation$UpdateSNo> {
  WidgetOptions$Mutation$UpdateSNo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSNo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSNo? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSNo>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateSNo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSNo,
          parserFn: _parserFn$Mutation$UpdateSNo,
        );

  final OnMutationCompleted$Mutation$UpdateSNo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateSNo
    = graphql.MultiSourceResult<Mutation$UpdateSNo> Function({
  Object? optimisticResult,
  Mutation$UpdateSNo? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateSNo = widgets.Widget Function(
  RunMutation$Mutation$UpdateSNo,
  graphql.QueryResult<Mutation$UpdateSNo>?,
);

class Mutation$UpdateSNo$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateSNo> {
  Mutation$UpdateSNo$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateSNo? options,
    required Builder$Mutation$UpdateSNo builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateSNo(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

const possibleTypesMap = <String, Set<String>>{};
