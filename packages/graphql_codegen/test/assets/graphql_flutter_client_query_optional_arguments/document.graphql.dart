import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchSOptional {
  Variables$Query$FetchSOptional({this.name});

  @override
  factory Variables$Query$FetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$FetchSOptionalFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$Variables$Query$FetchSOptionalToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchSOptional) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }

  CopyWith$Variables$Query$FetchSOptional<Variables$Query$FetchSOptional>
      get copyWith => CopyWith$Variables$Query$FetchSOptional(this, (i) => i);
}

abstract class CopyWith$Variables$Query$FetchSOptional<TRes> {
  factory CopyWith$Variables$Query$FetchSOptional(
          Variables$Query$FetchSOptional instance,
          TRes Function(Variables$Query$FetchSOptional) then) =
      _CopyWithImpl$Variables$Query$FetchSOptional;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSOptional<TRes>
    implements CopyWith$Variables$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Variables$Query$FetchSOptional(this._instance, this._then);

  final Variables$Query$FetchSOptional _instance;

  final TRes Function(Variables$Query$FetchSOptional) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSOptional(
          name: name == _undefined ? _instance.name : (name as String?)));
}

@JsonSerializable(explicitToJson: true)
class Query$FetchSOptional {
  Query$FetchSOptional({this.s});

  @override
  factory Query$FetchSOptional.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchSOptionalFromJson(json);

  final String? s;

  Map<String, dynamic> toJson() => _$Query$FetchSOptionalToJson(this);
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchSOptional) || runtimeType != other.runtimeType)
      return false;
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchSOptional on Query$FetchSOptional {
  CopyWith$Query$FetchSOptional<Query$FetchSOptional> get copyWith =>
      CopyWith$Query$FetchSOptional(this, (i) => i);
}

abstract class CopyWith$Query$FetchSOptional<TRes> {
  factory CopyWith$Query$FetchSOptional(Query$FetchSOptional instance,
          TRes Function(Query$FetchSOptional) then) =
      _CopyWithImpl$Query$FetchSOptional;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSOptional<TRes>
    implements CopyWith$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Query$FetchSOptional(this._instance, this._then);

  final Query$FetchSOptional _instance;

  final TRes Function(Query$FetchSOptional) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(
      Query$FetchSOptional(s: s == _undefined ? _instance.s : (s as String?)));
}

const documentNodeQueryFetchSOptional = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchSOptional'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
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
Query$FetchSOptional _parserFn$Query$FetchSOptional(
        Map<String, dynamic> data) =>
    Query$FetchSOptional.fromJson(data);

class Options$Query$FetchSOptional
    extends graphql.QueryOptions<Query$FetchSOptional> {
  Options$Query$FetchSOptional(
      {String? operationName,
      Variables$Query$FetchSOptional? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryFetchSOptional,
            parserFn: _parserFn$Query$FetchSOptional);
}

class WatchOptions$Query$FetchSOptional
    extends graphql.WatchQueryOptions<Query$FetchSOptional> {
  WatchOptions$Query$FetchSOptional(
      {String? operationName,
      Variables$Query$FetchSOptional? variables,
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
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryFetchSOptional,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchSOptional);
}

class FetchMoreOptions$Query$FetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSOptional(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$FetchSOptional? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryFetchSOptional);
}

extension ClientExtension$Query$FetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSOptional>> query$FetchSOptional(
          [Options$Query$FetchSOptional? options]) async =>
      await this.query(options ?? Options$Query$FetchSOptional());
  graphql.ObservableQuery<Query$FetchSOptional> watchQuery$FetchSOptional(
          [WatchOptions$Query$FetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSOptional());
  void writeQuery$FetchSOptional(
          {required Query$FetchSOptional data,
          Variables$Query$FetchSOptional? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryFetchSOptional),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchSOptional? readQuery$FetchSOptional(
      {Variables$Query$FetchSOptional? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchSOptional),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
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
  Query$FetchSOptional$Widget(
      {widgets.Key? key,
      Options$Query$FetchSOptional? options,
      required graphql_flutter.QueryBuilder<Query$FetchSOptional> builder})
      : super(
            key: key,
            options: options ?? Options$Query$FetchSOptional(),
            builder: builder);
}

const possibleTypesMap = {};
