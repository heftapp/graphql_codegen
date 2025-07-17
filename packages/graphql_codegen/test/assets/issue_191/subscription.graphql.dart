import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Subscription$S {
  Subscription$S({this.foo, this.$__typename = 'Subscription'});

  factory Subscription$S.fromJson(Map<String, dynamic> json) {
    final l$foo = json['foo'];
    final l$$__typename = json['__typename'];
    return Subscription$S(
      foo: (l$foo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? foo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$foo = foo;
    _resultData['foo'] = l$foo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$foo = foo;
    final l$$__typename = $__typename;
    return Object.hashAll([l$foo, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$S || runtimeType != other.runtimeType) {
      return false;
    }
    final l$foo = foo;
    final lOther$foo = other.foo;
    if (l$foo != lOther$foo) {
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

extension UtilityExtension$Subscription$S on Subscription$S {
  CopyWith$Subscription$S<Subscription$S> get copyWith =>
      CopyWith$Subscription$S(this, (i) => i);
}

abstract class CopyWith$Subscription$S<TRes> {
  factory CopyWith$Subscription$S(
    Subscription$S instance,
    TRes Function(Subscription$S) then,
  ) = _CopyWithImpl$Subscription$S;

  factory CopyWith$Subscription$S.stub(TRes res) =
      _CopyWithStubImpl$Subscription$S;

  TRes call({String? foo, String? $__typename});
}

class _CopyWithImpl$Subscription$S<TRes>
    implements CopyWith$Subscription$S<TRes> {
  _CopyWithImpl$Subscription$S(this._instance, this._then);

  final Subscription$S _instance;

  final TRes Function(Subscription$S) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? foo = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription$S(
          foo: foo == _undefined ? _instance.foo : (foo as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Subscription$S<TRes>
    implements CopyWith$Subscription$S<TRes> {
  _CopyWithStubImpl$Subscription$S(this._res);

  TRes _res;

  call({String? foo, String? $__typename}) => _res;
}

const documentNodeSubscriptionS = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'S'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'foo'),
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
        ],
      ),
    ),
  ],
);
Subscription$S _parserFn$Subscription$S(Map<String, dynamic> data) =>
    Subscription$S.fromJson(data);

class Options$Subscription$S
    extends graphql.SubscriptionOptions<Subscription$S> {
  Options$Subscription$S({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$S? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
         operationName: operationName ?? 'S',
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeSubscriptionS,
         parserFn: _parserFn$Subscription$S,
       );
}

class WatchOptions$Subscription$S
    extends graphql.WatchQueryOptions<Subscription$S> {
  WatchOptions$Subscription$S({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$S? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName ?? 'S',
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeSubscriptionS,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Subscription$S,
       );
}

class FetchMoreOptions$Subscription$S extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$S({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeSubscriptionS);
}

extension ClientExtension$Subscription$S on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$S>> subscribe$S([
    Options$Subscription$S? options,
  ]) => this.subscribe(options ?? Options$Subscription$S());
  graphql.ObservableQuery<Subscription$S> watchSubscription$S([
    WatchOptions$Subscription$S? options,
  ]) => this.watchQuery(options ?? WatchOptions$Subscription$S());
}
