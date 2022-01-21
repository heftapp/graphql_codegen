import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

abstract class FragmentFReport {
  String? get title;
}

const FRAGMENT_F_REPORT = const FragmentDefinitionNode(
    name: NameNode(value: 'FReport'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Report'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryQ extends JsonSerializable {
  QueryQ(
      {this.docsWithTypename,
      this.docsWihtoutTypename,
      this.docsWithAliasedTypename,
      this.docsWithFragment});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final List<QueryQ$docsWithTypename?>? docsWithTypename;

  final List<QueryQ$docsWihtoutTypename?>? docsWihtoutTypename;

  final List<QueryQ$docsWithAliasedTypename?>? docsWithAliasedTypename;

  final List<QueryQ$docsWithFragment?>? docsWithFragment;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
}

const QUERY_Q = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWihtoutTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithAliasedTypename'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: NameNode(value: '__typename'),
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'documents'),
            alias: NameNode(value: 'docsWithFragment'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Contract'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FragmentSpreadNode(
                  name: NameNode(value: 'FReport'), directives: []),
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
  FRAGMENT_F_REPORT,
]);

@JsonSerializable()
class QueryQ$docsWithTypename extends JsonSerializable {
  QueryQ$docsWithTypename();

  @override
  factory QueryQ$docsWithTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithTypenameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithTypenameToJson(this);
}

@JsonSerializable()
class QueryQ$docsWihtoutTypename extends JsonSerializable {
  QueryQ$docsWihtoutTypename({this.title});

  @override
  factory QueryQ$docsWihtoutTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWihtoutTypenameFromJson(json);

  final String? title;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWihtoutTypenameToJson(this);
}

@JsonSerializable()
class QueryQ$docsWithAliasedTypename extends JsonSerializable {
  QueryQ$docsWithAliasedTypename();

  @override
  factory QueryQ$docsWithAliasedTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithAliasedTypenameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithAliasedTypenameToJson(this);
}

@JsonSerializable()
class QueryQ$docsWithFragment extends JsonSerializable {
  QueryQ$docsWithFragment();

  @override
  factory QueryQ$docsWithFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Contract":
        return QueryQ$docsWithFragment$Contract.fromJson(json);
      case "Report":
        return QueryQ$docsWithFragment$Report.fromJson(json);
      default:
        return _$QueryQ$docsWithFragmentFromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithFragmentToJson(this);
}

@JsonSerializable()
class QueryQ$docsWithFragment$Contract extends QueryQ$docsWithFragment {
  QueryQ$docsWithFragment$Contract({this.title}) : super();

  @override
  factory QueryQ$docsWithFragment$Contract.fromJson(
          Map<String, dynamic> json) =>
      _$QueryQ$docsWithFragment$ContractFromJson(json);

  final String? title;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryQ$docsWithFragment$ContractToJson(this);
}

@JsonSerializable()
class QueryQ$docsWithFragment$Report extends QueryQ$docsWithFragment
    implements FragmentFReport {
  QueryQ$docsWithFragment$Report({this.title}) : super();

  @override
  factory QueryQ$docsWithFragment$Report.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithFragment$ReportFromJson(json);

  final String? title;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithFragment$ReportToJson(this);
}

const POSSIBLE_TYPES_MAP = const {
  'Document': {'Contract', 'Report'}
};
