import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$FReport {
  Fragment$FReport({this.title, required this.$__typename});

  @override
  factory Fragment$FReport.fromJson(Map<String, dynamic> json) =>
      _$Fragment$FReportFromJson(json);

  final String? title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$FReportToJson(this);
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$FReport) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$FReport on Fragment$FReport {
  Fragment$FReport copyWith({String? Function()? title, String? $__typename}) =>
      Fragment$FReport(
          title: title == null ? this.title : title(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionFReport = FragmentDefinitionNode(
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
const queryDocumentFReport = DocumentNode(definitions: [
  fragmentDefinitionFReport,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q {
  Query$Q(
      {this.docsWithTypename,
      this.docsWihtoutTypename,
      this.docsWithAliasedTypename,
      this.docsWithFragment,
      required this.$__typename});

  @override
  factory Query$Q.fromJson(Map<String, dynamic> json) =>
      _$Query$QFromJson(json);

  final List<Query$Q$docsWithTypename?>? docsWithTypename;

  final List<Query$Q$docsWihtoutTypename?>? docsWihtoutTypename;

  final List<Query$Q$docsWithAliasedTypename?>? docsWithAliasedTypename;

  final List<Query$Q$docsWithFragment?>? docsWithFragment;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$QToJson(this);
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
    if (!(other is Query$Q) || runtimeType != other.runtimeType) return false;
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

extension UtilityExtension$Query$Q on Query$Q {
  Query$Q copyWith(
          {List<Query$Q$docsWithTypename?>? Function()? docsWithTypename,
          List<Query$Q$docsWihtoutTypename?>? Function()? docsWihtoutTypename,
          List<Query$Q$docsWithAliasedTypename?>? Function()?
              docsWithAliasedTypename,
          List<Query$Q$docsWithFragment?>? Function()? docsWithFragment,
          String? $__typename}) =>
      Query$Q(
          docsWithTypename: docsWithTypename == null
              ? this.docsWithTypename
              : docsWithTypename(),
          docsWihtoutTypename: docsWihtoutTypename == null
              ? this.docsWihtoutTypename
              : docsWihtoutTypename(),
          docsWithAliasedTypename: docsWithAliasedTypename == null
              ? this.docsWithAliasedTypename
              : docsWithAliasedTypename(),
          docsWithFragment: docsWithFragment == null
              ? this.docsWithFragment
              : docsWithFragment(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentQ = DocumentNode(definitions: [
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
  fragmentDefinitionFReport,
]);

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWithTypename {
  Query$Q$docsWithTypename({required this.$__typename});

  @override
  factory Query$Q$docsWithTypename.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$docsWithTypenameFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$docsWithTypenameToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWithTypename) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$docsWithTypename
    on Query$Q$docsWithTypename {
  Query$Q$docsWithTypename copyWith({String? $__typename}) =>
      Query$Q$docsWithTypename(
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWihtoutTypename {
  Query$Q$docsWihtoutTypename({this.title, required this.$__typename});

  @override
  factory Query$Q$docsWihtoutTypename.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$docsWihtoutTypenameFromJson(json);

  final String? title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$docsWihtoutTypenameToJson(this);
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWihtoutTypename) ||
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

extension UtilityExtension$Query$Q$docsWihtoutTypename
    on Query$Q$docsWihtoutTypename {
  Query$Q$docsWihtoutTypename copyWith(
          {String? Function()? title, String? $__typename}) =>
      Query$Q$docsWihtoutTypename(
          title: title == null ? this.title : title(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWithAliasedTypename {
  Query$Q$docsWithAliasedTypename({this.$__typename});

  @override
  factory Query$Q$docsWithAliasedTypename.fromJson(Map<String, dynamic> json) =>
      _$Query$Q$docsWithAliasedTypenameFromJson(json);

  @JsonKey(name: '__typename')
  final String? $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$Q$docsWithAliasedTypenameToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWithAliasedTypename) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$docsWithAliasedTypename
    on Query$Q$docsWithAliasedTypename {
  Query$Q$docsWithAliasedTypename copyWith({String? Function()? $__typename}) =>
      Query$Q$docsWithAliasedTypename(
          $__typename: $__typename == null ? this.$__typename : $__typename());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWithFragment {
  Query$Q$docsWithFragment({required this.$__typename});

  @override
  factory Query$Q$docsWithFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Contract":
        return Query$Q$docsWithFragment$$Contract.fromJson(json);
      case "Report":
        return Query$Q$docsWithFragment$$Report.fromJson(json);
      default:
        return _$Query$Q$docsWithFragmentFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Q$docsWithFragmentToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWithFragment) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Q$docsWithFragment
    on Query$Q$docsWithFragment {
  Query$Q$docsWithFragment copyWith({String? $__typename}) =>
      Query$Q$docsWithFragment(
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWithFragment$$Contract implements Query$Q$docsWithFragment {
  Query$Q$docsWithFragment$$Contract({required this.$__typename, this.title});

  @override
  factory Query$Q$docsWithFragment$$Contract.fromJson(
          Map<String, dynamic> json) =>
      _$Query$Q$docsWithFragment$$ContractFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? title;

  Map<String, dynamic> toJson() =>
      _$Query$Q$docsWithFragment$$ContractToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWithFragment$$Contract) ||
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

extension UtilityExtension$Query$Q$docsWithFragment$$Contract
    on Query$Q$docsWithFragment$$Contract {
  Query$Q$docsWithFragment$$Contract copyWith(
          {String? $__typename, String? Function()? title}) =>
      Query$Q$docsWithFragment$$Contract(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          title: title == null ? this.title : title());
}

@JsonSerializable(explicitToJson: true)
class Query$Q$docsWithFragment$$Report
    implements Fragment$FReport, Query$Q$docsWithFragment {
  Query$Q$docsWithFragment$$Report({required this.$__typename, this.title});

  @override
  factory Query$Q$docsWithFragment$$Report.fromJson(
          Map<String, dynamic> json) =>
      _$Query$Q$docsWithFragment$$ReportFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? title;

  Map<String, dynamic> toJson() =>
      _$Query$Q$docsWithFragment$$ReportToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$title = title;
    return Object.hashAll([l$$__typename, l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Q$docsWithFragment$$Report) ||
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

extension UtilityExtension$Query$Q$docsWithFragment$$Report
    on Query$Q$docsWithFragment$$Report {
  Query$Q$docsWithFragment$$Report copyWith(
          {String? $__typename, String? Function()? title}) =>
      Query$Q$docsWithFragment$$Report(
          $__typename: $__typename == null ? this.$__typename : $__typename,
          title: title == null ? this.title : title());
}

const possibleTypesMap = {
  'Document': {'Contract', 'Report'}
};
