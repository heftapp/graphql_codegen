import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Mutation$M {
  Mutation$M({
    this.bar,
    this.$__typename = 'Mutation',
  });

  factory Mutation$M.fromJson(Map<String, dynamic> json) {
    final l$bar = json['bar'];
    final l$$__typename = json['__typename'];
    return Mutation$M(
      bar: (l$bar as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bar = bar;
    _resultData['bar'] = l$bar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bar = bar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$M || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bar = bar;
    final lOther$bar = other.bar;
    if (l$bar != lOther$bar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$M on Mutation$M {
  CopyWith$Mutation$M<Mutation$M> get copyWith => CopyWith$Mutation$M(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$M<TRes> {
  factory CopyWith$Mutation$M(
    Mutation$M instance,
    TRes Function(Mutation$M) then,
  ) = _CopyWithImpl$Mutation$M;

  factory CopyWith$Mutation$M.stub(TRes res) = _CopyWithStubImpl$Mutation$M;

  TRes call({
    String? bar,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$M<TRes> implements CopyWith$Mutation$M<TRes> {
  _CopyWithImpl$Mutation$M(
    this._instance,
    this._then,
  );

  final Mutation$M _instance;

  final TRes Function(Mutation$M) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$M(
        bar: bar == _undefined ? _instance.bar : (bar as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$M<TRes> implements CopyWith$Mutation$M<TRes> {
  _CopyWithStubImpl$Mutation$M(this._res);

  TRes _res;

  call({
    String? bar,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationM = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'M'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bar'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
const operationNameMutation$M = 'M';
Mutation$M _parserFn$Mutation$M(Map<String, dynamic> data) =>
    Mutation$M.fromJson(data);
typedef OnMutationCompleted$Mutation$M = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$M?,
);

class Options$Mutation$M extends graphql.MutationOptions<Mutation$M> {
  Options$Mutation$M({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$M? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$M? onCompleted,
    graphql.OnMutationUpdate<Mutation$M>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName ?? operationNameMutation$M,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$M(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationM,
          parserFn: _parserFn$Mutation$M,
        );

  final OnMutationCompleted$Mutation$M? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$M extends graphql.WatchQueryOptions<Mutation$M> {
  WatchOptions$Mutation$M({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$M? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName ?? operationNameMutation$M,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationM,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$M,
        );
}

extension ClientExtension$Mutation$M on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$M>> mutate$M(
          [Options$Mutation$M? options]) async =>
      await this.mutate(options ?? Options$Mutation$M());
  graphql.ObservableQuery<Mutation$M> watchMutation$M(
          [WatchOptions$Mutation$M? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$M());
}
