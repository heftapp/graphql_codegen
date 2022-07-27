import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$NameNode {
  Variables$Fragment$NameNode({required this.setting});

  factory Variables$Fragment$NameNode.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$NameNodeFromJson(json);

  final String setting;

  Map<String, dynamic> toJson() => _$Variables$Fragment$NameNodeToJson(this);
  @override
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

  CopyWith$Variables$Fragment$NameNode<Variables$Fragment$NameNode>
      get copyWith => CopyWith$Variables$Fragment$NameNode(this, (i) => i);
}

abstract class CopyWith$Variables$Fragment$NameNode<TRes> {
  factory CopyWith$Variables$Fragment$NameNode(
          Variables$Fragment$NameNode instance,
          TRes Function(Variables$Fragment$NameNode) then) =
      _CopyWithImpl$Variables$Fragment$NameNode;

  factory CopyWith$Variables$Fragment$NameNode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$NameNode;

  TRes call({String? setting});
}

class _CopyWithImpl$Variables$Fragment$NameNode<TRes>
    implements CopyWith$Variables$Fragment$NameNode<TRes> {
  _CopyWithImpl$Variables$Fragment$NameNode(this._instance, this._then);

  final Variables$Fragment$NameNode _instance;

  final TRes Function(Variables$Fragment$NameNode) _then;

  static const _undefined = {};

  TRes call({Object? setting = _undefined}) =>
      _then(Variables$Fragment$NameNode(
          setting: setting == _undefined || setting == null
              ? _instance.setting
              : (setting as String)));
}

class _CopyWithStubImpl$Variables$Fragment$NameNode<TRes>
    implements CopyWith$Variables$Fragment$NameNode<TRes> {
  _CopyWithStubImpl$Variables$Fragment$NameNode(this._res);

  TRes _res;

  call({String? setting}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$NameNode {
  Fragment$NameNode({this.name, required this.$__typename});

  factory Fragment$NameNode.fromJson(Map<String, dynamic> json) =>
      _$Fragment$NameNodeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$NameNodeToJson(this);
  @override
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
  CopyWith$Fragment$NameNode<Fragment$NameNode> get copyWith =>
      CopyWith$Fragment$NameNode(this, (i) => i);
}

abstract class CopyWith$Fragment$NameNode<TRes> {
  factory CopyWith$Fragment$NameNode(
          Fragment$NameNode instance, TRes Function(Fragment$NameNode) then) =
      _CopyWithImpl$Fragment$NameNode;

  factory CopyWith$Fragment$NameNode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NameNode;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$NameNode<TRes>
    implements CopyWith$Fragment$NameNode<TRes> {
  _CopyWithImpl$Fragment$NameNode(this._instance, this._then);

  final Fragment$NameNode _instance;

  final TRes Function(Fragment$NameNode) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(Fragment$NameNode(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$NameNode<TRes>
    implements CopyWith$Fragment$NameNode<TRes> {
  _CopyWithStubImpl$Fragment$NameNode(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
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
const documentNodeFragmentNameNode = DocumentNode(definitions: [
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
                  fragmentName: 'NameNode',
                  document: documentNodeFragmentNameNode),
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
                fragmentName: 'NameNode',
                document: documentNodeFragmentNameNode),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Fragment$NameNode.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$Q {
  Variables$Query$Q({required this.setting});

  factory Variables$Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$QFromJson(json);

  final String setting;

  Map<String, dynamic> toJson() => _$Variables$Query$QToJson(this);
  @override
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

  CopyWith$Variables$Query$Q<Variables$Query$Q> get copyWith =>
      CopyWith$Variables$Query$Q(this, (i) => i);
}

abstract class CopyWith$Variables$Query$Q<TRes> {
  factory CopyWith$Variables$Query$Q(
          Variables$Query$Q instance, TRes Function(Variables$Query$Q) then) =
      _CopyWithImpl$Variables$Query$Q;

  factory CopyWith$Variables$Query$Q.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Q;

  TRes call({String? setting});
}

class _CopyWithImpl$Variables$Query$Q<TRes>
    implements CopyWith$Variables$Query$Q<TRes> {
  _CopyWithImpl$Variables$Query$Q(this._instance, this._then);

  final Variables$Query$Q _instance;

  final TRes Function(Variables$Query$Q) _then;

  static const _undefined = {};

  TRes call({Object? setting = _undefined}) => _then(Variables$Query$Q(
      setting: setting == _undefined || setting == null
          ? _instance.setting
          : (setting as String)));
}

class _CopyWithStubImpl$Variables$Query$Q<TRes>
    implements CopyWith$Variables$Query$Q<TRes> {
  _CopyWithStubImpl$Variables$Query$Q(this._res);

  TRes _res;

  call({String? setting}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q({this.node, required this.$__typename});

  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final Fragment$NameNode? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
  @override
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
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(this, (i) => i);
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(Query$Q instance, TRes Function(Query$Q) then) =
      _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({Fragment$NameNode? node, String? $__typename});
  CopyWith$Fragment$NameNode<TRes> get node;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(this._instance, this._then);

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Q(
          node: node == _undefined
              ? _instance.node
              : (node as Fragment$NameNode?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$NameNode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$NameNode.stub(_then(_instance))
        : CopyWith$Fragment$NameNode(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({Fragment$NameNode? node, String? $__typename}) => _res;
  CopyWith$Fragment$NameNode<TRes> get node =>
      CopyWith$Fragment$NameNode.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
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
            document: documentNodeQueryQ,
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
            document: documentNodeQueryQ,
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
            document: documentNodeQueryQ);
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
              operation: graphql.Operation(document: documentNodeQueryQ),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Q? readQuery$Q(
      {required Variables$Query$Q variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryQ),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$Q.fromJson(result);
  }
}

const possibleTypesMap = {};
