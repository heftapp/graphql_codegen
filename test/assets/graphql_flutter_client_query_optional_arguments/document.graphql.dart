import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:flutter/widgets.dart' as widgets;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
part 'document.graphql.g.dart';

@JsonSerializable()
class VariablesQueryUpdateSOptional extends JsonSerializable {
  VariablesQueryUpdateSOptional({this.name});

  @override
  factory VariablesQueryUpdateSOptional.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryUpdateSOptionalFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryUpdateSOptionalToJson(this);
}

@JsonSerializable()
class QueryUpdateSOptional extends JsonSerializable {
  QueryUpdateSOptional({this.s});

  @override
  factory QueryUpdateSOptional.fromJson(Map<String, dynamic> json) =>
      _$QueryUpdateSOptionalFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryUpdateSOptionalToJson(this);
}

const QUERY_UPDATE_S_OPTIONAL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UpdateSOptional'),
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

class GQLOptionsQueryUpdateSOptional extends graphql.QueryOptions {
  GQLOptionsQueryUpdateSOptional(
      {String? operationName,
      VariablesQueryUpdateSOptional? variables,
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
            document: QUERY_UPDATE_S_OPTIONAL);
}

extension GQLExtensionQueryUpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult> queryUpdateSOptional(
          [GQLOptionsQueryUpdateSOptional? options]) async =>
      await this.query(options ?? GQLOptionsQueryUpdateSOptional());
}

extension GQLResultExtensionQueryUpdateSOptional on graphql.QueryResult {
  QueryUpdateSOptional? get parsedDataQueryUpdateSOptional {
    final data = this.data;
    return data == null ? null : QueryUpdateSOptional.fromJson(data);
  }
}

class GQLFQueryUpdateSOptional extends graphql_flutter.Query {
  GQLFQueryUpdateSOptional(
      {widgets.Key? key,
      GQLOptionsQueryUpdateSOptional? options,
      required graphql_flutter.QueryBuilder builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryUpdateSOptional(),
            builder: builder);
}
