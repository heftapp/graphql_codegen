import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Mutation$Operation {
  Mutation$Operation({this.setName});

  factory Mutation$Operation.fromJson(Map<String, dynamic> json) {
    final l$setName = json['setName'];
    return Mutation$Operation(
        setName: l$setName == null
            ? null
            : Mutation$Operation$setName.fromJson(
                (l$setName as Map<String, dynamic>)));
  }

  final Mutation$Operation$setName? setName;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setName = setName;
    _resultData['setName'] = l$setName?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setName = setName;
    return Object.hashAll([l$setName]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Operation) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$setName = setName;
    final lOther$setName = other.setName;
    if (l$setName != lOther$setName) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Operation on Mutation$Operation {
  CopyWith$Mutation$Operation<Mutation$Operation> get copyWith =>
      CopyWith$Mutation$Operation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Operation<TRes> {
  factory CopyWith$Mutation$Operation(
    Mutation$Operation instance,
    TRes Function(Mutation$Operation) then,
  ) = _CopyWithImpl$Mutation$Operation;

  factory CopyWith$Mutation$Operation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Operation;

  TRes call({Mutation$Operation$setName? setName});
  CopyWith$Mutation$Operation$setName<TRes> get setName;
}

class _CopyWithImpl$Mutation$Operation<TRes>
    implements CopyWith$Mutation$Operation<TRes> {
  _CopyWithImpl$Mutation$Operation(
    this._instance,
    this._then,
  );

  final Mutation$Operation _instance;

  final TRes Function(Mutation$Operation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? setName = _undefined}) => _then(Mutation$Operation(
      setName: setName == _undefined
          ? _instance.setName
          : (setName as Mutation$Operation$setName?)));
  CopyWith$Mutation$Operation$setName<TRes> get setName {
    final local$setName = _instance.setName;
    return local$setName == null
        ? CopyWith$Mutation$Operation$setName.stub(_then(_instance))
        : CopyWith$Mutation$Operation$setName(
            local$setName, (e) => call(setName: e));
  }
}

class _CopyWithStubImpl$Mutation$Operation<TRes>
    implements CopyWith$Mutation$Operation<TRes> {
  _CopyWithStubImpl$Mutation$Operation(this._res);

  TRes _res;

  call({Mutation$Operation$setName? setName}) => _res;
  CopyWith$Mutation$Operation$setName<TRes> get setName =>
      CopyWith$Mutation$Operation$setName.stub(_res);
}

const documentNodeMutationOperation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Operation'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setName'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: StringValueNode(
              value: 'Bob',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$Operation _parserFn$Mutation$Operation(Map<String, dynamic> data) =>
    Mutation$Operation.fromJson(data);
typedef OnMutationCompleted$Mutation$Operation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Operation?,
);

class Options$Mutation$Operation
    extends graphql.MutationOptions<Mutation$Operation> {
  Options$Mutation$Operation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Operation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Operation? onCompleted,
    graphql.OnMutationUpdate<Mutation$Operation>? update,
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
                    data == null ? null : _parserFn$Mutation$Operation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOperation,
          parserFn: _parserFn$Mutation$Operation,
        );

  final OnMutationCompleted$Mutation$Operation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Operation
    extends graphql.WatchQueryOptions<Mutation$Operation> {
  WatchOptions$Mutation$Operation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Operation? typedOptimisticResult,
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
          document: documentNodeMutationOperation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Operation,
        );
}

extension ClientExtension$Mutation$Operation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Operation>> mutate$Operation(
          [Options$Mutation$Operation? options]) async =>
      await this.mutate(options ?? Options$Mutation$Operation());
  graphql.ObservableQuery<Mutation$Operation> watchMutation$Operation(
          [WatchOptions$Mutation$Operation? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$Operation());
}

class Mutation$Operation$HookResult {
  Mutation$Operation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Operation runMutation;

  final graphql.QueryResult<Mutation$Operation> result;
}

Mutation$Operation$HookResult useMutation$Operation(
    [WidgetOptions$Mutation$Operation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Operation());
  return Mutation$Operation$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Operation> useWatchMutation$Operation(
        [WatchOptions$Mutation$Operation? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$Operation());

class WidgetOptions$Mutation$Operation
    extends graphql.MutationOptions<Mutation$Operation> {
  WidgetOptions$Mutation$Operation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Operation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Operation? onCompleted,
    graphql.OnMutationUpdate<Mutation$Operation>? update,
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
                    data == null ? null : _parserFn$Mutation$Operation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOperation,
          parserFn: _parserFn$Mutation$Operation,
        );

  final OnMutationCompleted$Mutation$Operation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Operation
    = graphql.MultiSourceResult<Mutation$Operation> Function({
  Object? optimisticResult,
  Mutation$Operation? typedOptimisticResult,
});
typedef Builder$Mutation$Operation = widgets.Widget Function(
  RunMutation$Mutation$Operation,
  graphql.QueryResult<Mutation$Operation>?,
);

class Mutation$Operation$Widget
    extends graphql_flutter.Mutation<Mutation$Operation> {
  Mutation$Operation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Operation? options,
    required Builder$Mutation$Operation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Operation(),
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

class Mutation$Operation$setName {
  Mutation$Operation$setName({this.name});

  factory Mutation$Operation$setName.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Mutation$Operation$setName(name: (l$name as String?));
  }

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Operation$setName) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Operation$setName
    on Mutation$Operation$setName {
  CopyWith$Mutation$Operation$setName<Mutation$Operation$setName>
      get copyWith => CopyWith$Mutation$Operation$setName(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Operation$setName<TRes> {
  factory CopyWith$Mutation$Operation$setName(
    Mutation$Operation$setName instance,
    TRes Function(Mutation$Operation$setName) then,
  ) = _CopyWithImpl$Mutation$Operation$setName;

  factory CopyWith$Mutation$Operation$setName.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Operation$setName;

  TRes call({String? name});
}

class _CopyWithImpl$Mutation$Operation$setName<TRes>
    implements CopyWith$Mutation$Operation$setName<TRes> {
  _CopyWithImpl$Mutation$Operation$setName(
    this._instance,
    this._then,
  );

  final Mutation$Operation$setName _instance;

  final TRes Function(Mutation$Operation$setName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Mutation$Operation$setName(
      name: name == _undefined ? _instance.name : (name as String?)));
}

class _CopyWithStubImpl$Mutation$Operation$setName<TRes>
    implements CopyWith$Mutation$Operation$setName<TRes> {
  _CopyWithStubImpl$Mutation$Operation$setName(this._res);

  TRes _res;

  call({String? name}) => _res;
}
