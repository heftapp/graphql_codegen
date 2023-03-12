import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FetchSRequired {
  factory Variables$Query$FetchSRequired({required String name}) =>
      Variables$Query$FetchSRequired._({
        r'name': name,
      });

  Variables$Query$FetchSRequired._(this._$data);

  factory Variables$Query$FetchSRequired.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$FetchSRequired._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$FetchSRequired<Variables$Query$FetchSRequired>
      get copyWith => CopyWith$Variables$Query$FetchSRequired(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchSRequired) ||
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

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$FetchSRequired<TRes> {
  factory CopyWith$Variables$Query$FetchSRequired(
    Variables$Query$FetchSRequired instance,
    TRes Function(Variables$Query$FetchSRequired) then,
  ) = _CopyWithImpl$Variables$Query$FetchSRequired;

  factory CopyWith$Variables$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSRequired;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Variables$Query$FetchSRequired(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchSRequired _instance;

  final TRes Function(Variables$Query$FetchSRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSRequired._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSRequired(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$FetchSRequired {
  Query$FetchSRequired({this.s});

  factory Query$FetchSRequired.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSRequired(s: (l$s as String?));
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
    if (!(other is Query$FetchSRequired) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchSRequired on Query$FetchSRequired {
  CopyWith$Query$FetchSRequired<Query$FetchSRequired> get copyWith =>
      CopyWith$Query$FetchSRequired(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSRequired<TRes> {
  factory CopyWith$Query$FetchSRequired(
    Query$FetchSRequired instance,
    TRes Function(Query$FetchSRequired) then,
  ) = _CopyWithImpl$Query$FetchSRequired;

  factory CopyWith$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSRequired;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSRequired<TRes>
    implements CopyWith$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Query$FetchSRequired(
    this._instance,
    this._then,
  );

  final Query$FetchSRequired _instance;

  final TRes Function(Query$FetchSRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(
      Query$FetchSRequired(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSRequired<TRes>
    implements CopyWith$Query$FetchSRequired<TRes> {
  _CopyWithStubImpl$Query$FetchSRequired(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSRequired = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSRequired'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$FetchSRequired _parserFn$Query$FetchSRequired(
        Map<String, dynamic> data) =>
    Query$FetchSRequired.fromJson(data);
typedef OnQueryComplete$Query$FetchSRequired = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchSRequired?,
);

class Options$Query$FetchSRequired
    extends graphql.QueryOptions<Query$FetchSRequired> {
  Options$Query$FetchSRequired({
    String? operationName,
    required Variables$Query$FetchSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSRequired? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchSRequired? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$FetchSRequired(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchSRequired,
          parserFn: _parserFn$Query$FetchSRequired,
        );

  final OnQueryComplete$Query$FetchSRequired? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchSRequired
    extends graphql.WatchQueryOptions<Query$FetchSRequired> {
  WatchOptions$Query$FetchSRequired({
    String? operationName,
    required Variables$Query$FetchSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSRequired? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchSRequired,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSRequired,
        );
}

class FetchMoreOptions$Query$FetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSRequired({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchSRequired variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchSRequired,
        );
}

extension ClientExtension$Query$FetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSRequired>> query$FetchSRequired(
          Options$Query$FetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchSRequired> watchQuery$FetchSRequired(
          WatchOptions$Query$FetchSRequired options) =>
      this.watchQuery(options);
  void writeQuery$FetchSRequired({
    required Query$FetchSRequired data,
    required Variables$Query$FetchSRequired variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSRequired),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSRequired? readQuery$FetchSRequired({
    required Variables$Query$FetchSRequired variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchSRequired),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSRequired.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchSRequired> useQuery$FetchSRequired(
        Options$Query$FetchSRequired options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchSRequired> useWatchQuery$FetchSRequired(
        WatchOptions$Query$FetchSRequired options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchSRequired$Widget
    extends graphql_flutter.Query<Query$FetchSRequired> {
  Query$FetchSRequired$Widget({
    widgets.Key? key,
    required Options$Query$FetchSRequired options,
    required graphql_flutter.QueryBuilder<Query$FetchSRequired> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

const possibleTypesMap = <String, Set<String>>{};
