import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:flutter/widgets.dart' as widgets;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
part 'document.graphql.g.dart';

@JsonSerializable()
class VariablesQueryUpdateSRequired extends JsonSerializable {
  VariablesQueryUpdateSRequired({required this.name});

  @override
  factory VariablesQueryUpdateSRequired.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryUpdateSRequiredFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryUpdateSRequiredToJson(this);
}

@JsonSerializable()
class QueryUpdateSRequired extends JsonSerializable {
  QueryUpdateSRequired({this.s});

  @override
  factory QueryUpdateSRequired.fromJson(Map<String, dynamic> json) =>
      _$QueryUpdateSRequiredFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$QueryUpdateSRequiredToJson(this);
}

const QUERY_UPDATE_S_REQUIRED = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UpdateSRequired'),
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

class GQLOptionsQueryUpdateSRequired extends graphql.QueryOptions {
  GQLOptionsQueryUpdateSRequired(
      {String? operationName,
      required VariablesQueryUpdateSRequired variables,
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
            document: QUERY_UPDATE_S_REQUIRED);
}

extension GQLExtensionQueryUpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult> queryUpdateSRequired(
          GQLOptionsQueryUpdateSRequired options) async =>
      await this.query(options);
}

extension GQLResultExtensionQueryUpdateSRequired on graphql.QueryResult {
  QueryUpdateSRequired? get parsedDataQueryUpdateSRequired {
    final data = this.data;
    return data == null ? null : QueryUpdateSRequired.fromJson(data);
  }
}

class GQLFQueryUpdateSRequired extends graphql_flutter.Query {
  GQLFQueryUpdateSRequired(
      {widgets.Key? key,
      required GQLOptionsQueryUpdateSRequired options,
      required graphql_flutter.QueryBuilder builder})
      : super(key: key, options: options, builder: builder);
}
