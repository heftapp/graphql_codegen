import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentFReport extends JsonSerializable {
  FragmentFReport({this.title, required this.$__typename});

  @override
  factory FragmentFReport.fromJson(Map<String, dynamic> json) =>
      _$FragmentFReportFromJson(json);

  final String? title;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentFReportToJson(this);
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentFReport) || runtimeType != other.runtimeType)
      return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const FRAGMENT_DEFINITION_FRAGMENT_F_REPORT = const FragmentDefinitionNode(
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
const FRAGMENT_F_REPORT = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F_REPORT,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ extends JsonSerializable {
  QueryQ(
      {this.docsWithTypename,
      this.docsWihtoutTypename,
      this.docsWithAliasedTypename,
      this.docsWithFragment,
      required this.$__typename});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final List<QueryQ$docsWithTypename?>? docsWithTypename;

  final List<QueryQ$docsWihtoutTypename?>? docsWihtoutTypename;

  final List<QueryQ$docsWithAliasedTypename?>? docsWithAliasedTypename;

  final List<QueryQ$docsWithFragment?>? docsWithFragment;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$docsWithTypename = docsWithTypename;
    final l$docsWihtoutTypename = docsWihtoutTypename;
    final l$docsWithAliasedTypename = docsWithAliasedTypename;
    final l$docsWithFragment = docsWithFragment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$docsWithTypename == null
          ? null
          : Object.hashAll(l$docsWithTypename.map((v) => v)),
      l$docsWihtoutTypename == null
          ? null
          : Object.hashAll(l$docsWihtoutTypename.map((v) => v)),
      l$docsWithAliasedTypename == null
          ? null
          : Object.hashAll(l$docsWithAliasedTypename.map((v) => v)),
      l$docsWithFragment == null
          ? null
          : Object.hashAll(l$docsWithFragment.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$docsWithTypename = docsWithTypename;
    final lOther$docsWithTypename = other.docsWithTypename;
    if (l$docsWithTypename != null && lOther$docsWithTypename != null) {
      if (l$docsWithTypename.length != lOther$docsWithTypename.length)
        return false;
      for (int i = 0; i < l$docsWithTypename.length; i++) {
        final l$docsWithTypename$entry = l$docsWithTypename[i];
        final lOther$docsWithTypename$entry = lOther$docsWithTypename[i];
        if (l$docsWithTypename$entry != lOther$docsWithTypename$entry)
          return false;
      }
    } else if (l$docsWithTypename != lOther$docsWithTypename) {
      return false;
    }

    final l$docsWihtoutTypename = docsWihtoutTypename;
    final lOther$docsWihtoutTypename = other.docsWihtoutTypename;
    if (l$docsWihtoutTypename != null && lOther$docsWihtoutTypename != null) {
      if (l$docsWihtoutTypename.length != lOther$docsWihtoutTypename.length)
        return false;
      for (int i = 0; i < l$docsWihtoutTypename.length; i++) {
        final l$docsWihtoutTypename$entry = l$docsWihtoutTypename[i];
        final lOther$docsWihtoutTypename$entry = lOther$docsWihtoutTypename[i];
        if (l$docsWihtoutTypename$entry != lOther$docsWihtoutTypename$entry)
          return false;
      }
    } else if (l$docsWihtoutTypename != lOther$docsWihtoutTypename) {
      return false;
    }

    final l$docsWithAliasedTypename = docsWithAliasedTypename;
    final lOther$docsWithAliasedTypename = other.docsWithAliasedTypename;
    if (l$docsWithAliasedTypename != null &&
        lOther$docsWithAliasedTypename != null) {
      if (l$docsWithAliasedTypename.length !=
          lOther$docsWithAliasedTypename.length) return false;
      for (int i = 0; i < l$docsWithAliasedTypename.length; i++) {
        final l$docsWithAliasedTypename$entry = l$docsWithAliasedTypename[i];
        final lOther$docsWithAliasedTypename$entry =
            lOther$docsWithAliasedTypename[i];
        if (l$docsWithAliasedTypename$entry !=
            lOther$docsWithAliasedTypename$entry) return false;
      }
    } else if (l$docsWithAliasedTypename != lOther$docsWithAliasedTypename) {
      return false;
    }

    final l$docsWithFragment = docsWithFragment;
    final lOther$docsWithFragment = other.docsWithFragment;
    if (l$docsWithFragment != null && lOther$docsWithFragment != null) {
      if (l$docsWithFragment.length != lOther$docsWithFragment.length)
        return false;
      for (int i = 0; i < l$docsWithFragment.length; i++) {
        final l$docsWithFragment$entry = l$docsWithFragment[i];
        final lOther$docsWithFragment$entry = lOther$docsWithFragment[i];
        if (l$docsWithFragment$entry != lOther$docsWithFragment$entry)
          return false;
      }
    } else if (l$docsWithFragment != lOther$docsWithFragment) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  FRAGMENT_DEFINITION_FRAGMENT_F_REPORT,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWithTypename extends JsonSerializable {
  QueryQ$docsWithTypename({required this.$__typename});

  @override
  factory QueryQ$docsWithTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithTypenameFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithTypenameToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWithTypename) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWihtoutTypename extends JsonSerializable {
  QueryQ$docsWihtoutTypename({this.title, required this.$__typename});

  @override
  factory QueryQ$docsWihtoutTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWihtoutTypenameFromJson(json);

  final String? title;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWihtoutTypenameToJson(this);
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWihtoutTypename) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWithAliasedTypename extends JsonSerializable {
  QueryQ$docsWithAliasedTypename({this.$__typename});

  @override
  factory QueryQ$docsWithAliasedTypename.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithAliasedTypenameFromJson(json);

  @JsonKey(name: '__typename')
  final String? $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithAliasedTypenameToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWithAliasedTypename) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWithFragment extends JsonSerializable {
  QueryQ$docsWithFragment({required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithFragmentToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWithFragment) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWithFragment$Contract extends JsonSerializable
    implements QueryQ$docsWithFragment {
  QueryQ$docsWithFragment$Contract({required this.$__typename, this.title});

  @override
  factory QueryQ$docsWithFragment$Contract.fromJson(
          Map<String, dynamic> json) =>
      _$QueryQ$docsWithFragment$ContractFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? title;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryQ$docsWithFragment$ContractToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWithFragment$Contract) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryQ$docsWithFragment$Report extends JsonSerializable
    implements FragmentFReport, QueryQ$docsWithFragment {
  QueryQ$docsWithFragment$Report({required this.$__typename, this.title});

  @override
  factory QueryQ$docsWithFragment$Report.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$docsWithFragment$ReportFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? title;

  @override
  Map<String, dynamic> toJson() => _$QueryQ$docsWithFragment$ReportToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$docsWithFragment$Report) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {
  'Document': {'Contract', 'Report'}
};
