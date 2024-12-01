import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

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
    if (other is! Mutation$UpdateSNo || runtimeType != other.runtimeType) {
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
