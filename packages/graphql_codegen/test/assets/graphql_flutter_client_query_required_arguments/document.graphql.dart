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
    if (other is! Variables$Query$FetchSRequired ||
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
    if (other is! Query$FetchSRequired || runtimeType != other.runtimeType) {
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
