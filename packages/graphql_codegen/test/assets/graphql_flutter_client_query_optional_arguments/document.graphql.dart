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
  $unknown
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
  $unknown
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

class Variables$Query$FetchSOptional {
  factory Variables$Query$FetchSOptional({String? name}) =>
      Variables$Query$FetchSOptional._({
        if (name != null) r'name': name,
      });

  Variables$Query$FetchSOptional._(this._$data);

  factory Variables$Query$FetchSOptional.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$FetchSOptional._(result$data);
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

  CopyWith$Variables$Query$FetchSOptional<Variables$Query$FetchSOptional>
      get copyWith => CopyWith$Variables$Query$FetchSOptional(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchSOptional) ||
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

abstract class CopyWith$Variables$Query$FetchSOptional<TRes> {
  factory CopyWith$Variables$Query$FetchSOptional(
    Variables$Query$FetchSOptional instance,
    TRes Function(Variables$Query$FetchSOptional) then,
  ) = _CopyWithImpl$Variables$Query$FetchSOptional;

  factory CopyWith$Variables$Query$FetchSOptional.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSOptional;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSOptional<TRes>
    implements CopyWith$Variables$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Variables$Query$FetchSOptional(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchSOptional _instance;

  final TRes Function(Variables$Query$FetchSOptional) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSOptional._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchSOptional<TRes>
    implements CopyWith$Variables$Query$FetchSOptional<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSOptional(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$FetchSOptional {
  Query$FetchSOptional({this.s});

  factory Query$FetchSOptional.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSOptional(s: (l$s as String?));
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
    if (!(other is Query$FetchSOptional) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchSOptional on Query$FetchSOptional {
  CopyWith$Query$FetchSOptional<Query$FetchSOptional> get copyWith =>
      CopyWith$Query$FetchSOptional(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSOptional<TRes> {
  factory CopyWith$Query$FetchSOptional(
    Query$FetchSOptional instance,
    TRes Function(Query$FetchSOptional) then,
  ) = _CopyWithImpl$Query$FetchSOptional;

  factory CopyWith$Query$FetchSOptional.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSOptional;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSOptional<TRes>
    implements CopyWith$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Query$FetchSOptional(
    this._instance,
    this._then,
  );

  final Query$FetchSOptional _instance;

  final TRes Function(Query$FetchSOptional) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? s = _undefined}) => _then(
      Query$FetchSOptional(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSOptional<TRes>
    implements CopyWith$Query$FetchSOptional<TRes> {
  _CopyWithStubImpl$Query$FetchSOptional(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSOptional = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSOptional'),
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
Query$FetchSOptional _parserFn$Query$FetchSOptional(
        Map<String, dynamic> data) =>
    Query$FetchSOptional.fromJson(data);
typedef OnQueryComplete$Query$FetchSOptional = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchSOptional?,
);

class Options$Query$FetchSOptional
    extends graphql.QueryOptions<Query$FetchSOptional> {
  Options$Query$FetchSOptional({
    String? operationName,
    Variables$Query$FetchSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSOptional? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchSOptional? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$FetchSOptional(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchSOptional,
          parserFn: _parserFn$Query$FetchSOptional,
        );

  final OnQueryComplete$Query$FetchSOptional? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchSOptional
    extends graphql.WatchQueryOptions<Query$FetchSOptional> {
  WatchOptions$Query$FetchSOptional({
    String? operationName,
    Variables$Query$FetchSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchSOptional? typedOptimisticResult,
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
          document: documentNodeQueryFetchSOptional,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSOptional,
        );
}

class FetchMoreOptions$Query$FetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSOptional({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchSOptional? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchSOptional,
        );
}

extension ClientExtension$Query$FetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSOptional>> query$FetchSOptional(
          [Options$Query$FetchSOptional? options]) async =>
      await this.query(options ?? Options$Query$FetchSOptional());
  graphql.ObservableQuery<Query$FetchSOptional> watchQuery$FetchSOptional(
          [WatchOptions$Query$FetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSOptional());
  void writeQuery$FetchSOptional({
    required Query$FetchSOptional data,
    Variables$Query$FetchSOptional? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSOptional),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSOptional? readQuery$FetchSOptional({
    Variables$Query$FetchSOptional? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchSOptional),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSOptional.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchSOptional> useQuery$FetchSOptional(
        [Options$Query$FetchSOptional? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchSOptional());
graphql.ObservableQuery<Query$FetchSOptional> useWatchQuery$FetchSOptional(
        [WatchOptions$Query$FetchSOptional? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchSOptional());

class Query$FetchSOptional$Widget
    extends graphql_flutter.Query<Query$FetchSOptional> {
  Query$FetchSOptional$Widget({
    widgets.Key? key,
    Options$Query$FetchSOptional? options,
    required graphql_flutter.QueryBuilder<Query$FetchSOptional> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchSOptional(),
          builder: builder,
        );
}

const possibleTypesMap = <String, Set<String>>{};
