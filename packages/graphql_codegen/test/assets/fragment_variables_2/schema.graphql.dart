import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$NameNode {
  Variables$Fragment$NameNode({required this.setting});

  @override
  factory Variables$Fragment$NameNode.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$NameNodeFromJson(json);

  final String setting;

  Map<String, dynamic> toJson() => _$Variables$Fragment$NameNodeToJson(this);
  int get hashCode {
    final l$setting = setting;
    return Object.hashAll([l$setting]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$NameNode) ||
        runtimeType != other.runtimeType) return false;
    final l$setting = setting;
    final lOther$setting = other.setting;
    if (l$setting != lOther$setting) return false;
    return true;
  }

  Variables$Fragment$NameNode copyWith({String? setting}) =>
      Variables$Fragment$NameNode(
          setting: setting == null ? this.setting : setting);
}

@JsonSerializable(explicitToJson: true)
class Fragment$NameNode {
  Fragment$NameNode({this.name, required this.$__typename});

  @override
  factory Fragment$NameNode.fromJson(Map<String, dynamic> json) =>
      _$Fragment$NameNodeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$NameNodeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$NameNode) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$NameNode on Fragment$NameNode {
  Fragment$NameNode copyWith({String? Function()? name, String? $__typename}) =>
      Fragment$NameNode(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionNameNode = FragmentDefinitionNode(
    name: NameNode(value: 'NameNode'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Node'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'setting'),
                value: VariableNode(name: NameNode(value: 'setting')))
          ],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentNameNode = DocumentNode(definitions: [
  fragmentDefinitionNameNode,
]);

extension ClientExtension$Fragment$NameNode on graphql.GraphQLClient {
  void writeFragment$NameNode(
          {required Fragment$NameNode data,
          required Map<String, dynamic> idFields,
          required Variables$Fragment$NameNode variables,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'NameNode', document: queryDocumentNameNode),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$NameNode? readFragment$NameNode(
      {required Map<String, dynamic> idFields,
      required Variables$Fragment$NameNode variables,
      bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'NameNode', document: queryDocumentNameNode),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Fragment$NameNode.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$Q {
  Variables$Query$Q({required this.setting});

  @override
  factory Variables$Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$QFromJson(json);

  final String setting;

  Map<String, dynamic> toJson() => _$Variables$Query$QToJson(this);
  int get hashCode {
    final l$setting = setting;
    return Object.hashAll([l$setting]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$Q) || runtimeType != other.runtimeType)
      return false;
    final l$setting = setting;
    final lOther$setting = other.setting;
    if (l$setting != lOther$setting) return false;
    return true;
  }

  Variables$Query$Q copyWith({String? setting}) =>
      Variables$Query$Q(setting: setting == null ? this.setting : setting);
}

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.node, required this.$__typename});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Query$Q$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  Query$Q copyWith({Query$Q$node? Function()? node, String? $__typename}) =>
      Query$Q(
          node: node == null ? this.node : node(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentQ = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'setting')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'node'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'NameNode'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionNameNode,
]);
Query$Q _parserFn$Query$Q(Map<String, dynamic> data) => Query$Q.fromJson(data);

class Options$Query$Q extends graphql.QueryOptions<Query$Q> {
  Options$Query$Q(
      {String? operationName,
      required Variables$Query$Q variables,
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
            document: queryDocumentQ,
            parserFn: _parserFn$Query$Q);
}

class WatchOptions$Query$Q extends graphql.WatchQueryOptions<Query$Q> {
  WatchOptions$Query$Q(
      {String? operationName,
      required Variables$Query$Q variables,
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
            document: queryDocumentQ,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Q);
}

class FetchMoreOptions$Query$Q extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Q(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$Q variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentQ);
}

extension ClientExtension$Query$Q on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Q>> query$Q(Options$Query$Q options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Q> watchQuery$Q(WatchOptions$Query$Q options) =>
      this.watchQuery(options);
  void writeQuery$Q(
          {required Query$Q data,
          required Variables$Query$Q variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentQ),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Q? readQuery$Q(
      {required Variables$Query$Q variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentQ),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$Q.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$Q$node implements Fragment$NameNode {
  Query$Q$node({this.name, required this.$__typename});

  @override
  factory Query$Q$node.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$nodeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$nodeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$node) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$node on Query$Q$node {
  Query$Q$node copyWith({String? Function()? name, String? $__typename}) =>
      Query$Q$node(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const possibleTypesMap = {};
