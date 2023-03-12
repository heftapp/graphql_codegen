import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateSRequired {
  factory Variables$Mutation$UpdateSRequired({required String name}) =>
      Variables$Mutation$UpdateSRequired._({
        r'name': name,
      });

  Variables$Mutation$UpdateSRequired._(this._$data);

  factory Variables$Mutation$UpdateSRequired.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Mutation$UpdateSRequired._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateSRequired<
          Variables$Mutation$UpdateSRequired>
      get copyWith => CopyWith$Variables$Mutation$UpdateSRequired(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateSRequired) ||
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

abstract class CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSRequired(
    Variables$Mutation$UpdateSRequired instance,
    TRes Function(Variables$Mutation$UpdateSRequired) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSRequired;

  factory CopyWith$Variables$Mutation$UpdateSRequired.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSRequired;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSRequired(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSRequired _instance;

  final TRes Function(Variables$Mutation$UpdateSRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Mutation$UpdateSRequired._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSRequired(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$UpdateSRequired {
  Mutation$UpdateSRequired({this.s});

  factory Mutation$UpdateSRequired.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSRequired(s: (l$s as String?));
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
    if (!(other is Mutation$UpdateSRequired) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateSRequired
    on Mutation$UpdateSRequired {
  CopyWith$Mutation$UpdateSRequired<Mutation$UpdateSRequired> get copyWith =>
      CopyWith$Mutation$UpdateSRequired(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSRequired<TRes> {
  factory CopyWith$Mutation$UpdateSRequired(
    Mutation$UpdateSRequired instance,
    TRes Function(Mutation$UpdateSRequired) then,
  ) = _CopyWithImpl$Mutation$UpdateSRequired;

  factory CopyWith$Mutation$UpdateSRequired.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSRequired;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Mutation$UpdateSRequired<TRes> {
  _CopyWithImpl$Mutation$UpdateSRequired(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSRequired _instance;

  final TRes Function(Mutation$UpdateSRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(Mutation$UpdateSRequired(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Mutation$UpdateSRequired<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSRequired(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSRequired = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSRequired'),
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
Mutation$UpdateSRequired _parserFn$Mutation$UpdateSRequired(
        Map<String, dynamic> data) =>
    Mutation$UpdateSRequired.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSRequired = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateSRequired?,
);

class Options$Mutation$UpdateSRequired
    extends graphql.MutationOptions<Mutation$UpdateSRequired> {
  Options$Mutation$UpdateSRequired({
    String? operationName,
    required Variables$Mutation$UpdateSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSRequired? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSRequired? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSRequired>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateSRequired(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSRequired,
          parserFn: _parserFn$Mutation$UpdateSRequired,
        );

  final OnMutationCompleted$Mutation$UpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSRequired
    extends graphql.WatchQueryOptions<Mutation$UpdateSRequired> {
  WatchOptions$Mutation$UpdateSRequired({
    String? operationName,
    required Variables$Mutation$UpdateSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSRequired? typedOptimisticResult,
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
          document: documentNodeMutationUpdateSRequired,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSRequired,
        );
}

extension ClientExtension$Mutation$UpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSRequired>> mutate$UpdateSRequired(
          Options$Mutation$UpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateSRequired>
      watchMutation$UpdateSRequired(
              WatchOptions$Mutation$UpdateSRequired options) =>
          this.watchMutation(options);
}

class Mutation$UpdateSRequired$HookResult {
  Mutation$UpdateSRequired$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateSRequired runMutation;

  final graphql.QueryResult<Mutation$UpdateSRequired> result;
}

Mutation$UpdateSRequired$HookResult useMutation$UpdateSRequired(
    [WidgetOptions$Mutation$UpdateSRequired? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateSRequired());
  return Mutation$UpdateSRequired$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateSRequired>
    useWatchMutation$UpdateSRequired(
            WatchOptions$Mutation$UpdateSRequired options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateSRequired
    extends graphql.MutationOptions<Mutation$UpdateSRequired> {
  WidgetOptions$Mutation$UpdateSRequired({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSRequired? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSRequired? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSRequired>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateSRequired(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSRequired,
          parserFn: _parserFn$Mutation$UpdateSRequired,
        );

  final OnMutationCompleted$Mutation$UpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateSRequired
    = graphql.MultiSourceResult<Mutation$UpdateSRequired> Function(
  Variables$Mutation$UpdateSRequired, {
  Object? optimisticResult,
  Mutation$UpdateSRequired? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateSRequired = widgets.Widget Function(
  RunMutation$Mutation$UpdateSRequired,
  graphql.QueryResult<Mutation$UpdateSRequired>?,
);

class Mutation$UpdateSRequired$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateSRequired> {
  Mutation$UpdateSRequired$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateSRequired? options,
    required Builder$Mutation$UpdateSRequired builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateSRequired(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

const possibleTypesMap = <String, Set<String>>{};
