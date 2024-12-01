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

class Variables$Mutation$UpdateSOptional {
  factory Variables$Mutation$UpdateSOptional({String? name}) =>
      Variables$Mutation$UpdateSOptional._({
        if (name != null) r'name': name,
      });

  Variables$Mutation$UpdateSOptional._(this._$data);

  factory Variables$Mutation$UpdateSOptional.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Mutation$UpdateSOptional._(result$data);
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

  CopyWith$Variables$Mutation$UpdateSOptional<
          Variables$Mutation$UpdateSOptional>
      get copyWith => CopyWith$Variables$Mutation$UpdateSOptional(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateSOptional ||
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

abstract class CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSOptional(
    Variables$Mutation$UpdateSOptional instance,
    TRes Function(Variables$Mutation$UpdateSOptional) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSOptional;

  factory CopyWith$Variables$Mutation$UpdateSOptional.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSOptional;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSOptional(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSOptional _instance;

  final TRes Function(Variables$Mutation$UpdateSOptional) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Mutation$UpdateSOptional._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSOptional(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$UpdateSOptional {
  Mutation$UpdateSOptional({this.s});

  factory Mutation$UpdateSOptional.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSOptional(s: (l$s as String?));
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
    if (other is! Mutation$UpdateSOptional ||
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

extension UtilityExtension$Mutation$UpdateSOptional
    on Mutation$UpdateSOptional {
  CopyWith$Mutation$UpdateSOptional<Mutation$UpdateSOptional> get copyWith =>
      CopyWith$Mutation$UpdateSOptional(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSOptional<TRes> {
  factory CopyWith$Mutation$UpdateSOptional(
    Mutation$UpdateSOptional instance,
    TRes Function(Mutation$UpdateSOptional) then,
  ) = _CopyWithImpl$Mutation$UpdateSOptional;

  factory CopyWith$Mutation$UpdateSOptional.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSOptional;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Mutation$UpdateSOptional<TRes> {
  _CopyWithImpl$Mutation$UpdateSOptional(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSOptional _instance;

  final TRes Function(Mutation$UpdateSOptional) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(Mutation$UpdateSOptional(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Mutation$UpdateSOptional<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSOptional(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSOptional = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSOptional'),
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
Mutation$UpdateSOptional _parserFn$Mutation$UpdateSOptional(
        Map<String, dynamic> data) =>
    Mutation$UpdateSOptional.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSOptional = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateSOptional?,
);

class Options$Mutation$UpdateSOptional
    extends graphql.MutationOptions<Mutation$UpdateSOptional> {
  Options$Mutation$UpdateSOptional({
    String? operationName,
    Variables$Mutation$UpdateSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSOptional? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSOptional? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSOptional>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
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
                        : _parserFn$Mutation$UpdateSOptional(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSOptional,
          parserFn: _parserFn$Mutation$UpdateSOptional,
        );

  final OnMutationCompleted$Mutation$UpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSOptional
    extends graphql.WatchQueryOptions<Mutation$UpdateSOptional> {
  WatchOptions$Mutation$UpdateSOptional({
    String? operationName,
    Variables$Mutation$UpdateSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSOptional? typedOptimisticResult,
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
          document: documentNodeMutationUpdateSOptional,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSOptional,
        );
}

extension ClientExtension$Mutation$UpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSOptional>> mutate$UpdateSOptional(
          [Options$Mutation$UpdateSOptional? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateSOptional());
  graphql.ObservableQuery<
      Mutation$UpdateSOptional> watchMutation$UpdateSOptional(
          [WatchOptions$Mutation$UpdateSOptional? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSOptional());
}

class Mutation$UpdateSOptional$HookResult {
  Mutation$UpdateSOptional$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateSOptional runMutation;

  final graphql.QueryResult<Mutation$UpdateSOptional> result;
}

Mutation$UpdateSOptional$HookResult useMutation$UpdateSOptional(
    [WidgetOptions$Mutation$UpdateSOptional? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateSOptional());
  return Mutation$UpdateSOptional$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateSOptional>
    useWatchMutation$UpdateSOptional(
            [WatchOptions$Mutation$UpdateSOptional? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$UpdateSOptional());

class WidgetOptions$Mutation$UpdateSOptional
    extends graphql.MutationOptions<Mutation$UpdateSOptional> {
  WidgetOptions$Mutation$UpdateSOptional({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateSOptional? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSOptional? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSOptional>? update,
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
                        : _parserFn$Mutation$UpdateSOptional(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSOptional,
          parserFn: _parserFn$Mutation$UpdateSOptional,
        );

  final OnMutationCompleted$Mutation$UpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateSOptional
    = graphql.MultiSourceResult<Mutation$UpdateSOptional> Function({
  Variables$Mutation$UpdateSOptional? variables,
  Object? optimisticResult,
  Mutation$UpdateSOptional? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateSOptional = widgets.Widget Function(
  RunMutation$Mutation$UpdateSOptional,
  graphql.QueryResult<Mutation$UpdateSOptional>?,
);

class Mutation$UpdateSOptional$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateSOptional> {
  Mutation$UpdateSOptional$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateSOptional? options,
    required Builder$Mutation$UpdateSOptional builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateSOptional(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

const possibleTypesMap = <String, Set<String>>{};
