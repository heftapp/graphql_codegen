import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Subscription$NoArgs {
  Subscription$NoArgs({
    this.listenForChange,
    this.$__typename = 'Subscription',
  });

  factory Subscription$NoArgs.fromJson(Map<String, dynamic> json) {
    final l$listenForChange = json['listenForChange'];
    final l$$__typename = json['__typename'];
    return Subscription$NoArgs(
      listenForChange: l$listenForChange == null
          ? null
          : Subscription$NoArgs$listenForChange.fromJson(
              (l$listenForChange as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$NoArgs$listenForChange? listenForChange;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listenForChange = listenForChange;
    _resultData['listenForChange'] = l$listenForChange?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$listenForChange,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NoArgs) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) {
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

extension UtilityExtension$Subscription$NoArgs on Subscription$NoArgs {
  CopyWith$Subscription$NoArgs<Subscription$NoArgs> get copyWith =>
      CopyWith$Subscription$NoArgs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$NoArgs<TRes> {
  factory CopyWith$Subscription$NoArgs(
    Subscription$NoArgs instance,
    TRes Function(Subscription$NoArgs) then,
  ) = _CopyWithImpl$Subscription$NoArgs;

  factory CopyWith$Subscription$NoArgs.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NoArgs;

  TRes call({
    Subscription$NoArgs$listenForChange? listenForChange,
    String? $__typename,
  });
  CopyWith$Subscription$NoArgs$listenForChange<TRes> get listenForChange;
}

class _CopyWithImpl$Subscription$NoArgs<TRes>
    implements CopyWith$Subscription$NoArgs<TRes> {
  _CopyWithImpl$Subscription$NoArgs(
    this._instance,
    this._then,
  );

  final Subscription$NoArgs _instance;

  final TRes Function(Subscription$NoArgs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listenForChange = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NoArgs(
        listenForChange: listenForChange == _undefined
            ? _instance.listenForChange
            : (listenForChange as Subscription$NoArgs$listenForChange?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$NoArgs$listenForChange<TRes> get listenForChange {
    final local$listenForChange = _instance.listenForChange;
    return local$listenForChange == null
        ? CopyWith$Subscription$NoArgs$listenForChange.stub(_then(_instance))
        : CopyWith$Subscription$NoArgs$listenForChange(
            local$listenForChange, (e) => call(listenForChange: e));
  }
}

class _CopyWithStubImpl$Subscription$NoArgs<TRes>
    implements CopyWith$Subscription$NoArgs<TRes> {
  _CopyWithStubImpl$Subscription$NoArgs(this._res);

  TRes _res;

  call({
    Subscription$NoArgs$listenForChange? listenForChange,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$NoArgs$listenForChange<TRes> get listenForChange =>
      CopyWith$Subscription$NoArgs$listenForChange.stub(_res);
}

const documentNodeSubscriptionNoArgs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'NoArgs'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listenForChange'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
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
Subscription$NoArgs _parserFn$Subscription$NoArgs(Map<String, dynamic> data) =>
    Subscription$NoArgs.fromJson(data);

class Options$Subscription$NoArgs
    extends graphql.SubscriptionOptions<Subscription$NoArgs> {
  Options$Subscription$NoArgs({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NoArgs? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNoArgs,
          parserFn: _parserFn$Subscription$NoArgs,
        );
}

class WatchOptions$Subscription$NoArgs
    extends graphql.WatchQueryOptions<Subscription$NoArgs> {
  WatchOptions$Subscription$NoArgs({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NoArgs? typedOptimisticResult,
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
          document: documentNodeSubscriptionNoArgs,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$NoArgs,
        );
}

class FetchMoreOptions$Subscription$NoArgs extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NoArgs(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionNoArgs,
        );
}

extension ClientExtension$Subscription$NoArgs on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NoArgs>> subscribe$NoArgs(
          [Options$Subscription$NoArgs? options]) =>
      this.subscribe(options ?? Options$Subscription$NoArgs());
  graphql.ObservableQuery<Subscription$NoArgs> watchSubscription$NoArgs(
          [WatchOptions$Subscription$NoArgs? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$NoArgs());
}

graphql.QueryResult<Subscription$NoArgs> useSubscription$NoArgs(
        Options$Subscription$NoArgs options) =>
    graphql_flutter.useSubscription(options);

class Subscription$NoArgs$Widget
    extends graphql_flutter.Subscription<Subscription$NoArgs> {
  Subscription$NoArgs$Widget({
    widgets.Key? key,
    Options$Subscription$NoArgs? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$NoArgs> builder,
    graphql_flutter.OnSubscriptionResult<Subscription$NoArgs>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$NoArgs(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$NoArgs$listenForChange {
  Subscription$NoArgs$listenForChange({
    required this.name,
    this.$__typename = 'Change',
  });

  factory Subscription$NoArgs$listenForChange.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$NoArgs$listenForChange(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NoArgs$listenForChange) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$NoArgs$listenForChange
    on Subscription$NoArgs$listenForChange {
  CopyWith$Subscription$NoArgs$listenForChange<
          Subscription$NoArgs$listenForChange>
      get copyWith => CopyWith$Subscription$NoArgs$listenForChange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NoArgs$listenForChange<TRes> {
  factory CopyWith$Subscription$NoArgs$listenForChange(
    Subscription$NoArgs$listenForChange instance,
    TRes Function(Subscription$NoArgs$listenForChange) then,
  ) = _CopyWithImpl$Subscription$NoArgs$listenForChange;

  factory CopyWith$Subscription$NoArgs$listenForChange.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NoArgs$listenForChange;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$NoArgs$listenForChange<TRes>
    implements CopyWith$Subscription$NoArgs$listenForChange<TRes> {
  _CopyWithImpl$Subscription$NoArgs$listenForChange(
    this._instance,
    this._then,
  );

  final Subscription$NoArgs$listenForChange _instance;

  final TRes Function(Subscription$NoArgs$listenForChange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NoArgs$listenForChange(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$NoArgs$listenForChange<TRes>
    implements CopyWith$Subscription$NoArgs$listenForChange<TRes> {
  _CopyWithStubImpl$Subscription$NoArgs$listenForChange(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$RequiredArg {
  factory Variables$Subscription$RequiredArg({required String name}) =>
      Variables$Subscription$RequiredArg._({
        r'name': name,
      });

  Variables$Subscription$RequiredArg._(this._$data);

  factory Variables$Subscription$RequiredArg.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Subscription$RequiredArg._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Subscription$RequiredArg<
          Variables$Subscription$RequiredArg>
      get copyWith => CopyWith$Variables$Subscription$RequiredArg(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$RequiredArg) ||
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

abstract class CopyWith$Variables$Subscription$RequiredArg<TRes> {
  factory CopyWith$Variables$Subscription$RequiredArg(
    Variables$Subscription$RequiredArg instance,
    TRes Function(Variables$Subscription$RequiredArg) then,
  ) = _CopyWithImpl$Variables$Subscription$RequiredArg;

  factory CopyWith$Variables$Subscription$RequiredArg.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$RequiredArg;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Subscription$RequiredArg<TRes>
    implements CopyWith$Variables$Subscription$RequiredArg<TRes> {
  _CopyWithImpl$Variables$Subscription$RequiredArg(
    this._instance,
    this._then,
  );

  final Variables$Subscription$RequiredArg _instance;

  final TRes Function(Variables$Subscription$RequiredArg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Subscription$RequiredArg._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$RequiredArg<TRes>
    implements CopyWith$Variables$Subscription$RequiredArg<TRes> {
  _CopyWithStubImpl$Variables$Subscription$RequiredArg(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$RequiredArg {
  Subscription$RequiredArg({
    this.listenForChange,
    this.$__typename = 'Subscription',
  });

  factory Subscription$RequiredArg.fromJson(Map<String, dynamic> json) {
    final l$listenForChange = json['listenForChange'];
    final l$$__typename = json['__typename'];
    return Subscription$RequiredArg(
      listenForChange: l$listenForChange == null
          ? null
          : Subscription$RequiredArg$listenForChange.fromJson(
              (l$listenForChange as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$RequiredArg$listenForChange? listenForChange;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listenForChange = listenForChange;
    _resultData['listenForChange'] = l$listenForChange?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$listenForChange,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$RequiredArg) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) {
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

extension UtilityExtension$Subscription$RequiredArg
    on Subscription$RequiredArg {
  CopyWith$Subscription$RequiredArg<Subscription$RequiredArg> get copyWith =>
      CopyWith$Subscription$RequiredArg(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$RequiredArg<TRes> {
  factory CopyWith$Subscription$RequiredArg(
    Subscription$RequiredArg instance,
    TRes Function(Subscription$RequiredArg) then,
  ) = _CopyWithImpl$Subscription$RequiredArg;

  factory CopyWith$Subscription$RequiredArg.stub(TRes res) =
      _CopyWithStubImpl$Subscription$RequiredArg;

  TRes call({
    Subscription$RequiredArg$listenForChange? listenForChange,
    String? $__typename,
  });
  CopyWith$Subscription$RequiredArg$listenForChange<TRes> get listenForChange;
}

class _CopyWithImpl$Subscription$RequiredArg<TRes>
    implements CopyWith$Subscription$RequiredArg<TRes> {
  _CopyWithImpl$Subscription$RequiredArg(
    this._instance,
    this._then,
  );

  final Subscription$RequiredArg _instance;

  final TRes Function(Subscription$RequiredArg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listenForChange = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$RequiredArg(
        listenForChange: listenForChange == _undefined
            ? _instance.listenForChange
            : (listenForChange as Subscription$RequiredArg$listenForChange?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$RequiredArg$listenForChange<TRes> get listenForChange {
    final local$listenForChange = _instance.listenForChange;
    return local$listenForChange == null
        ? CopyWith$Subscription$RequiredArg$listenForChange.stub(
            _then(_instance))
        : CopyWith$Subscription$RequiredArg$listenForChange(
            local$listenForChange, (e) => call(listenForChange: e));
  }
}

class _CopyWithStubImpl$Subscription$RequiredArg<TRes>
    implements CopyWith$Subscription$RequiredArg<TRes> {
  _CopyWithStubImpl$Subscription$RequiredArg(this._res);

  TRes _res;

  call({
    Subscription$RequiredArg$listenForChange? listenForChange,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$RequiredArg$listenForChange<TRes> get listenForChange =>
      CopyWith$Subscription$RequiredArg$listenForChange.stub(_res);
}

const documentNodeSubscriptionRequiredArg = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'RequiredArg'),
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
        name: NameNode(value: 'listenForChange'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
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
Subscription$RequiredArg _parserFn$Subscription$RequiredArg(
        Map<String, dynamic> data) =>
    Subscription$RequiredArg.fromJson(data);

class Options$Subscription$RequiredArg
    extends graphql.SubscriptionOptions<Subscription$RequiredArg> {
  Options$Subscription$RequiredArg({
    String? operationName,
    required Variables$Subscription$RequiredArg variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$RequiredArg? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionRequiredArg,
          parserFn: _parserFn$Subscription$RequiredArg,
        );
}

class WatchOptions$Subscription$RequiredArg
    extends graphql.WatchQueryOptions<Subscription$RequiredArg> {
  WatchOptions$Subscription$RequiredArg({
    String? operationName,
    required Variables$Subscription$RequiredArg variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$RequiredArg? typedOptimisticResult,
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
          document: documentNodeSubscriptionRequiredArg,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$RequiredArg,
        );
}

class FetchMoreOptions$Subscription$RequiredArg
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$RequiredArg({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$RequiredArg variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionRequiredArg,
        );
}

extension ClientExtension$Subscription$RequiredArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$RequiredArg>> subscribe$RequiredArg(
          Options$Subscription$RequiredArg options) =>
      this.subscribe(options);
  graphql.ObservableQuery<Subscription$RequiredArg>
      watchSubscription$RequiredArg(
              WatchOptions$Subscription$RequiredArg options) =>
          this.watchQuery(options);
}

graphql.QueryResult<Subscription$RequiredArg> useSubscription$RequiredArg(
        Options$Subscription$RequiredArg options) =>
    graphql_flutter.useSubscription(options);

class Subscription$RequiredArg$Widget
    extends graphql_flutter.Subscription<Subscription$RequiredArg> {
  Subscription$RequiredArg$Widget({
    widgets.Key? key,
    required Options$Subscription$RequiredArg options,
    required graphql_flutter.SubscriptionBuilder<Subscription$RequiredArg>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$RequiredArg>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options,
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$RequiredArg$listenForChange {
  Subscription$RequiredArg$listenForChange({
    required this.name,
    this.$__typename = 'Change',
  });

  factory Subscription$RequiredArg$listenForChange.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$RequiredArg$listenForChange(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$RequiredArg$listenForChange) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$RequiredArg$listenForChange
    on Subscription$RequiredArg$listenForChange {
  CopyWith$Subscription$RequiredArg$listenForChange<
          Subscription$RequiredArg$listenForChange>
      get copyWith => CopyWith$Subscription$RequiredArg$listenForChange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$RequiredArg$listenForChange<TRes> {
  factory CopyWith$Subscription$RequiredArg$listenForChange(
    Subscription$RequiredArg$listenForChange instance,
    TRes Function(Subscription$RequiredArg$listenForChange) then,
  ) = _CopyWithImpl$Subscription$RequiredArg$listenForChange;

  factory CopyWith$Subscription$RequiredArg$listenForChange.stub(TRes res) =
      _CopyWithStubImpl$Subscription$RequiredArg$listenForChange;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$RequiredArg$listenForChange<TRes>
    implements CopyWith$Subscription$RequiredArg$listenForChange<TRes> {
  _CopyWithImpl$Subscription$RequiredArg$listenForChange(
    this._instance,
    this._then,
  );

  final Subscription$RequiredArg$listenForChange _instance;

  final TRes Function(Subscription$RequiredArg$listenForChange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$RequiredArg$listenForChange(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$RequiredArg$listenForChange<TRes>
    implements CopyWith$Subscription$RequiredArg$listenForChange<TRes> {
  _CopyWithStubImpl$Subscription$RequiredArg$listenForChange(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$OptionalArg {
  factory Variables$Subscription$OptionalArg({String? name}) =>
      Variables$Subscription$OptionalArg._({
        if (name != null) r'name': name,
      });

  Variables$Subscription$OptionalArg._(this._$data);

  factory Variables$Subscription$OptionalArg.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Subscription$OptionalArg._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$OptionalArg<
          Variables$Subscription$OptionalArg>
      get copyWith => CopyWith$Variables$Subscription$OptionalArg(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$OptionalArg) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Subscription$OptionalArg<TRes> {
  factory CopyWith$Variables$Subscription$OptionalArg(
    Variables$Subscription$OptionalArg instance,
    TRes Function(Variables$Subscription$OptionalArg) then,
  ) = _CopyWithImpl$Variables$Subscription$OptionalArg;

  factory CopyWith$Variables$Subscription$OptionalArg.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$OptionalArg;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Subscription$OptionalArg<TRes>
    implements CopyWith$Variables$Subscription$OptionalArg<TRes> {
  _CopyWithImpl$Variables$Subscription$OptionalArg(
    this._instance,
    this._then,
  );

  final Variables$Subscription$OptionalArg _instance;

  final TRes Function(Variables$Subscription$OptionalArg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Subscription$OptionalArg._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$OptionalArg<TRes>
    implements CopyWith$Variables$Subscription$OptionalArg<TRes> {
  _CopyWithStubImpl$Variables$Subscription$OptionalArg(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$OptionalArg {
  Subscription$OptionalArg({
    this.listenForChange,
    this.$__typename = 'Subscription',
  });

  factory Subscription$OptionalArg.fromJson(Map<String, dynamic> json) {
    final l$listenForChange = json['listenForChange'];
    final l$$__typename = json['__typename'];
    return Subscription$OptionalArg(
      listenForChange: l$listenForChange == null
          ? null
          : Subscription$OptionalArg$listenForChange.fromJson(
              (l$listenForChange as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$OptionalArg$listenForChange? listenForChange;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listenForChange = listenForChange;
    _resultData['listenForChange'] = l$listenForChange?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listenForChange = listenForChange;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$listenForChange,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OptionalArg) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$listenForChange = listenForChange;
    final lOther$listenForChange = other.listenForChange;
    if (l$listenForChange != lOther$listenForChange) {
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

extension UtilityExtension$Subscription$OptionalArg
    on Subscription$OptionalArg {
  CopyWith$Subscription$OptionalArg<Subscription$OptionalArg> get copyWith =>
      CopyWith$Subscription$OptionalArg(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OptionalArg<TRes> {
  factory CopyWith$Subscription$OptionalArg(
    Subscription$OptionalArg instance,
    TRes Function(Subscription$OptionalArg) then,
  ) = _CopyWithImpl$Subscription$OptionalArg;

  factory CopyWith$Subscription$OptionalArg.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OptionalArg;

  TRes call({
    Subscription$OptionalArg$listenForChange? listenForChange,
    String? $__typename,
  });
  CopyWith$Subscription$OptionalArg$listenForChange<TRes> get listenForChange;
}

class _CopyWithImpl$Subscription$OptionalArg<TRes>
    implements CopyWith$Subscription$OptionalArg<TRes> {
  _CopyWithImpl$Subscription$OptionalArg(
    this._instance,
    this._then,
  );

  final Subscription$OptionalArg _instance;

  final TRes Function(Subscription$OptionalArg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listenForChange = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$OptionalArg(
        listenForChange: listenForChange == _undefined
            ? _instance.listenForChange
            : (listenForChange as Subscription$OptionalArg$listenForChange?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$OptionalArg$listenForChange<TRes> get listenForChange {
    final local$listenForChange = _instance.listenForChange;
    return local$listenForChange == null
        ? CopyWith$Subscription$OptionalArg$listenForChange.stub(
            _then(_instance))
        : CopyWith$Subscription$OptionalArg$listenForChange(
            local$listenForChange, (e) => call(listenForChange: e));
  }
}

class _CopyWithStubImpl$Subscription$OptionalArg<TRes>
    implements CopyWith$Subscription$OptionalArg<TRes> {
  _CopyWithStubImpl$Subscription$OptionalArg(this._res);

  TRes _res;

  call({
    Subscription$OptionalArg$listenForChange? listenForChange,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$OptionalArg$listenForChange<TRes> get listenForChange =>
      CopyWith$Subscription$OptionalArg$listenForChange.stub(_res);
}

const documentNodeSubscriptionOptionalArg = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OptionalArg'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listenForChange'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
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
Subscription$OptionalArg _parserFn$Subscription$OptionalArg(
        Map<String, dynamic> data) =>
    Subscription$OptionalArg.fromJson(data);

class Options$Subscription$OptionalArg
    extends graphql.SubscriptionOptions<Subscription$OptionalArg> {
  Options$Subscription$OptionalArg({
    String? operationName,
    Variables$Subscription$OptionalArg? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OptionalArg? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOptionalArg,
          parserFn: _parserFn$Subscription$OptionalArg,
        );
}

class WatchOptions$Subscription$OptionalArg
    extends graphql.WatchQueryOptions<Subscription$OptionalArg> {
  WatchOptions$Subscription$OptionalArg({
    String? operationName,
    Variables$Subscription$OptionalArg? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OptionalArg? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOptionalArg,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OptionalArg,
        );
}

class FetchMoreOptions$Subscription$OptionalArg
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OptionalArg({
    required graphql.UpdateQuery updateQuery,
    Variables$Subscription$OptionalArg? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeSubscriptionOptionalArg,
        );
}

extension ClientExtension$Subscription$OptionalArg on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OptionalArg>> subscribe$OptionalArg(
          [Options$Subscription$OptionalArg? options]) =>
      this.subscribe(options ?? Options$Subscription$OptionalArg());
  graphql.ObservableQuery<Subscription$OptionalArg>
      watchSubscription$OptionalArg(
              [WatchOptions$Subscription$OptionalArg? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OptionalArg());
}

graphql.QueryResult<Subscription$OptionalArg> useSubscription$OptionalArg(
        Options$Subscription$OptionalArg options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OptionalArg$Widget
    extends graphql_flutter.Subscription<Subscription$OptionalArg> {
  Subscription$OptionalArg$Widget({
    widgets.Key? key,
    Options$Subscription$OptionalArg? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OptionalArg>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OptionalArg>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OptionalArg(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OptionalArg$listenForChange {
  Subscription$OptionalArg$listenForChange({
    required this.name,
    this.$__typename = 'Change',
  });

  factory Subscription$OptionalArg$listenForChange.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$OptionalArg$listenForChange(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OptionalArg$listenForChange) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$OptionalArg$listenForChange
    on Subscription$OptionalArg$listenForChange {
  CopyWith$Subscription$OptionalArg$listenForChange<
          Subscription$OptionalArg$listenForChange>
      get copyWith => CopyWith$Subscription$OptionalArg$listenForChange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OptionalArg$listenForChange<TRes> {
  factory CopyWith$Subscription$OptionalArg$listenForChange(
    Subscription$OptionalArg$listenForChange instance,
    TRes Function(Subscription$OptionalArg$listenForChange) then,
  ) = _CopyWithImpl$Subscription$OptionalArg$listenForChange;

  factory CopyWith$Subscription$OptionalArg$listenForChange.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OptionalArg$listenForChange;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$OptionalArg$listenForChange<TRes>
    implements CopyWith$Subscription$OptionalArg$listenForChange<TRes> {
  _CopyWithImpl$Subscription$OptionalArg$listenForChange(
    this._instance,
    this._then,
  );

  final Subscription$OptionalArg$listenForChange _instance;

  final TRes Function(Subscription$OptionalArg$listenForChange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$OptionalArg$listenForChange(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$OptionalArg$listenForChange<TRes>
    implements CopyWith$Subscription$OptionalArg$listenForChange<TRes> {
  _CopyWithStubImpl$Subscription$OptionalArg$listenForChange(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
