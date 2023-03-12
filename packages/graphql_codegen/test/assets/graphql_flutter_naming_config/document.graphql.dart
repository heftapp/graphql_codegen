import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Input___Input {
  factory Input___Input({Enum___Status? status}) => Input___Input._({
        if (status != null) r'status': status,
      });

  Input___Input._(this._$data);

  factory Input___Input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson___Enum___Status((l$status as String));
    }
    return Input___Input._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum___Status? get status => (_$data['status'] as Enum___Status?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson___Enum___Status(l$status);
    }
    return result$data;
  }

  CopyWith___Input___Input<Input___Input> get copyWith =>
      CopyWith___Input___Input(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input___Input) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    return Object.hashAll([_$data.containsKey('status') ? l$status : const {}]);
  }
}

abstract class CopyWith___Input___Input<TRes> {
  factory CopyWith___Input___Input(
    Input___Input instance,
    TRes Function(Input___Input) then,
  ) = _CopyWithImpl___Input___Input;

  factory CopyWith___Input___Input.stub(TRes res) =
      _CopyWithStubImpl___Input___Input;

  TRes call({Enum___Status? status});
}

class _CopyWithImpl___Input___Input<TRes>
    implements CopyWith___Input___Input<TRes> {
  _CopyWithImpl___Input___Input(
    this._instance,
    this._then,
  );

  final Input___Input _instance;

  final TRes Function(Input___Input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? status = _undefined}) => _then(Input___Input._({
        ..._instance._$data,
        if (status != _undefined) 'status': (status as Enum___Status?),
      }));
}

class _CopyWithStubImpl___Input___Input<TRes>
    implements CopyWith___Input___Input<TRes> {
  _CopyWithStubImpl___Input___Input(this._res);

  TRes _res;

  call({Enum___Status? status}) => _res;
}

enum Enum___Status { Pending, Successful, Failure, InProgress, $unknown }

String toJson___Enum___Status(Enum___Status e) {
  switch (e) {
    case Enum___Status.Pending:
      return r'Pending';
    case Enum___Status.Successful:
      return r'Successful';
    case Enum___Status.Failure:
      return r'Failure';
    case Enum___Status.InProgress:
      return r'InProgress';
    case Enum___Status.$unknown:
      return r'$unknown';
  }
}

Enum___Status fromJson___Enum___Status(String value) {
  switch (value) {
    case r'Pending':
      return Enum___Status.Pending;
    case r'Successful':
      return Enum___Status.Successful;
    case r'Failure':
      return Enum___Status.Failure;
    case r'InProgress':
      return Enum___Status.InProgress;
    default:
      return Enum___Status.$unknown;
  }
}

class Query___Q {
  Query___Q({
    this.status,
    this.$__typename = 'Query',
  });

  factory Query___Q.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query___Q(
      status: l$status == null
          ? null
          : fromJson___Enum___Status((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum___Status? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson___Enum___Status(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query___Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension___Query___Q on Query___Q {
  CopyWith___Query___Q<Query___Q> get copyWith => CopyWith___Query___Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith___Query___Q<TRes> {
  factory CopyWith___Query___Q(
    Query___Q instance,
    TRes Function(Query___Q) then,
  ) = _CopyWithImpl___Query___Q;

  factory CopyWith___Query___Q.stub(TRes res) = _CopyWithStubImpl___Query___Q;

  TRes call({
    Enum___Status? status,
    String? $__typename,
  });
}

class _CopyWithImpl___Query___Q<TRes> implements CopyWith___Query___Q<TRes> {
  _CopyWithImpl___Query___Q(
    this._instance,
    this._then,
  );

  final Query___Q _instance;

  final TRes Function(Query___Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query___Q(
        status: status == _undefined
            ? _instance.status
            : (status as Enum___Status?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl___Query___Q<TRes>
    implements CopyWith___Query___Q<TRes> {
  _CopyWithStubImpl___Query___Q(this._res);

  TRes _res;

  call({
    Enum___Status? status,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'status'),
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
Query___Q _parserFn___Query___Q(Map<String, dynamic> data) =>
    Query___Q.fromJson(data);
typedef OnQueryComplete___Query___Q = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query___Q?,
);

class Options___Query___Q extends graphql.QueryOptions<Query___Q> {
  Options___Query___Q({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query___Q? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete___Query___Q? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn___Query___Q(data),
                  ),
          onError: onError,
          document: documentNodeQueryQ,
          parserFn: _parserFn___Query___Q,
        );

  final OnQueryComplete___Query___Q? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions___Query___Q extends graphql.WatchQueryOptions<Query___Q> {
  WatchOptions___Query___Q({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query___Q? typedOptimisticResult,
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
          document: documentNodeQueryQ,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn___Query___Q,
        );
}

class FetchMoreOptions___Query___Q extends graphql.FetchMoreOptions {
  FetchMoreOptions___Query___Q({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryQ,
        );
}

extension ClientExtension___Query___Q on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query___Q>> query___Q(
          [Options___Query___Q? options]) async =>
      await this.query(options ?? Options___Query___Q());
  graphql.ObservableQuery<Query___Q> watchQuery___Q(
          [WatchOptions___Query___Q? options]) =>
      this.watchQuery(options ?? WatchOptions___Query___Q());
  void writeQuery___Q({
    required Query___Q data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryQ)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query___Q? readQuery___Q({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryQ)),
      optimistic: optimistic,
    );
    return result == null ? null : Query___Q.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query___Q> useQuery___Q(
        [Options___Query___Q? options]) =>
    graphql_flutter.useQuery(options ?? Options___Query___Q());
graphql.ObservableQuery<Query___Q> useWatchQuery___Q(
        [WatchOptions___Query___Q? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions___Query___Q());

class Query___Q___Widget extends graphql_flutter.Query<Query___Q> {
  Query___Q___Widget({
    widgets.Key? key,
    Options___Query___Q? options,
    required graphql_flutter.QueryBuilder<Query___Q> builder,
  }) : super(
          key: key,
          options: options ?? Options___Query___Q(),
          builder: builder,
        );
}

const possibleTypesMap = <String, Set<String>>{};
