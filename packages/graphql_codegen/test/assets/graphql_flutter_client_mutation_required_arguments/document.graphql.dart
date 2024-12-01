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
    if (other is! Variables$Mutation$UpdateSRequired ||
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
    if (other is! Mutation$UpdateSRequired ||
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
