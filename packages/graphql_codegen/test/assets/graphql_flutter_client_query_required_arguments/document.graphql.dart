import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchSRequired {
  Variables$Query$FetchSRequired({required this.name});

  factory Variables$Query$FetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$FetchSRequiredFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$Variables$Query$FetchSRequiredToJson(this);
  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchSRequired) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  CopyWith$Variables$Query$FetchSRequired<Variables$Query$FetchSRequired>
      get copyWith => CopyWith$Variables$Query$FetchSRequired(this, (i) => i);
}

abstract class CopyWith$Variables$Query$FetchSRequired<TRes> {
  factory CopyWith$Variables$Query$FetchSRequired(
          Variables$Query$FetchSRequired instance,
          TRes Function(Variables$Query$FetchSRequired) then) =
      _CopyWithImpl$Variables$Query$FetchSRequired;

  factory CopyWith$Variables$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSRequired;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Variables$Query$FetchSRequired(this._instance, this._then);

  final Variables$Query$FetchSRequired _instance;

  final TRes Function(Variables$Query$FetchSRequired) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSRequired(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSRequired(this._res);

  TRes _res;

  call({String? name}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$FetchSRequired {
  Query$FetchSRequired({this.s});

  factory Query$FetchSRequired.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSRequiredFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSRequiredToJson(this);
  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSRequired) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSRequired on Query$FetchSRequired {
  CopyWith$Query$FetchSRequired<Query$FetchSRequired> get copyWith =>
      CopyWith$Query$FetchSRequired(this, (i) => i);
}

abstract class CopyWith$Query$FetchSRequired<TRes> {
  factory CopyWith$Query$FetchSRequired(Query$FetchSRequired instance,
          TRes Function(Query$FetchSRequired) then) =
      _CopyWithImpl$Query$FetchSRequired;

  factory CopyWith$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSRequired;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSRequired<TRes>
    implements CopyWith$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Query$FetchSRequired(this._instance, this._then);

  final Query$FetchSRequired _instance;

  final TRes Function(Query$FetchSRequired) _then;

  static const _undefined = {};

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
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$FetchSRequired _parserFn$Query$FetchSRequired(
        Map<String, dynamic> data) =>
    Query$FetchSRequired.fromJson(data);

class Options$Query$FetchSRequired
    extends graphql.QueryOptions<Query$FetchSRequired> {
  Options$Query$FetchSRequired(
      {String? operationName,
      required Variables$Query$FetchSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryFetchSRequired,
            parserFn: _parserFn$Query$FetchSRequired);
}

class WatchOptions$Query$FetchSRequired
    extends graphql.WatchQueryOptions<Query$FetchSRequired> {
  WatchOptions$Query$FetchSRequired(
      {String? operationName,
      required Variables$Query$FetchSRequired variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryFetchSRequired,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSRequired);
}

class FetchMoreOptions$Query$FetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSRequired(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$FetchSRequired variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryFetchSRequired);
}

extension ClientExtension$Query$FetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSRequired>> query$FetchSRequired(
          Options$Query$FetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchSRequired> watchQuery$FetchSRequired(
          WatchOptions$Query$FetchSRequired options) =>
      this.watchQuery(options);
  void writeQuery$FetchSRequired(
          {required Query$FetchSRequired data,
          required Variables$Query$FetchSRequired variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryFetchSRequired),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSRequired? readQuery$FetchSRequired(
      {required Variables$Query$FetchSRequired variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchSRequired),
            variables: variables.toJson()),
        optimistic: optimistic);
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
  Query$FetchSRequired$Widget(
      {widgets.Key? key,
      required Options$Query$FetchSRequired options,
      required graphql_flutter.QueryBuilder<Query$FetchSRequired> builder})
      : super(key: key, options: options, builder: builder);
}

const possibleTypesMap = {};
