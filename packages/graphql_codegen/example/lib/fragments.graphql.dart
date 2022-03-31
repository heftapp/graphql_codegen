import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_codegen_example/scalars.dart';
import 'package:json_annotation/json_annotation.dart';
part 'fragments.graphql.g.dart';

@JsonSerializable()
class FragmentPersonSummary extends JsonSerializable {
  FragmentPersonSummary(
      {this.nickname,
      required this.name,
      this.dob,
      this.events,
      this.eventsOfEvents,
      required this.$__typename});

  @override
  factory FragmentPersonSummary.fromJson(Map<String, dynamic> json) =>
      _$FragmentPersonSummaryFromJson(json);

  final String? nickname;

  final String name;

  @JsonKey(
      fromJson: _nullable$dateTimeFromJson, toJson: _nullable$dateTimeToJson)
  final DateTime? dob;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$dateTimeToJson)
  final List<DateTime?>? events;

  @JsonKey(
      fromJson: _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson,
      toJson: _nullable$_list$_nullable$_list$_nullable$dateTimeToJson)
  final List<List<DateTime?>?>? eventsOfEvents;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$FragmentPersonSummaryToJson(this);
  int get hashCode {
    final l$nickname = nickname;
    final l$name = name;
    final l$dob = dob;
    final l$events = events;
    final l$eventsOfEvents = eventsOfEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nickname,
      l$name,
      l$dob,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$eventsOfEvents == null
          ? null
          : Object.hashAll(l$eventsOfEvents
              .map((v) => v == null ? null : Object.hashAll(v.map((v) => v)))),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentPersonSummary) || runtimeType != other.runtimeType)
      return false;
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) return false;
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) return false;
      }
    } else if (l$events != lOther$events) {
      return false;
    }

    final l$eventsOfEvents = eventsOfEvents;
    final lOther$eventsOfEvents = other.eventsOfEvents;
    if (l$eventsOfEvents != null && lOther$eventsOfEvents != null) {
      if (l$eventsOfEvents.length != lOther$eventsOfEvents.length) return false;
      for (int i = 0; i < l$eventsOfEvents.length; i++) {
        final l$eventsOfEvents$entry = l$eventsOfEvents[i];
        final lOther$eventsOfEvents$entry = lOther$eventsOfEvents[i];
        if (l$eventsOfEvents$entry != null &&
            lOther$eventsOfEvents$entry != null) {
          if (l$eventsOfEvents$entry.length !=
              lOther$eventsOfEvents$entry.length) return false;
          for (int i = 0; i < l$eventsOfEvents$entry.length; i++) {
            final l$eventsOfEvents$entry$entry = l$eventsOfEvents$entry[i];
            final lOther$eventsOfEvents$entry$entry =
                lOther$eventsOfEvents$entry[i];
            if (l$eventsOfEvents$entry$entry !=
                lOther$eventsOfEvents$entry$entry) return false;
          }
        } else if (l$eventsOfEvents$entry != lOther$eventsOfEvents$entry) {
          return false;
        }
      }
    } else if (l$eventsOfEvents != lOther$eventsOfEvents) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const FRAGMENT_PERSON_SUMMARY = const FragmentDefinitionNode(
    name: NameNode(value: 'PersonSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'nickname'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'full_name'),
          alias: NameNode(value: 'name'),
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'dob'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'events'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'events_of_events'),
          alias: NameNode(value: 'eventsOfEvents'),
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

extension ClientExtensionFragmentPersonSummary on graphql.GraphQLClient {
  void writeFragmentPersonSummary(
          {required FragmentPersonSummary data,
          required Map<String, dynamic> idFields,
          Map<String, dynamic> variables = const {},
          broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: graphql.Fragment(
                  document: const DocumentNode(
                      definitions: [FRAGMENT_PERSON_SUMMARY])),
              variables: variables),
          data: data.toJson(),
          broadcast: broadcast);
  FragmentPersonSummary? readFragmentPersonSummary(
      {required Map<String, dynamic> idFields,
      Map<String, dynamic> variables = const {},
      optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: graphql.Fragment(
                document:
                    const DocumentNode(definitions: [FRAGMENT_PERSON_SUMMARY])),
            variables: variables),
        optimistic: optimistic);
    return result == null ? null : FragmentPersonSummary.fromJson(result);
  }
}

DateTime? _nullable$dateTimeFromJson(dynamic data) =>
    data == null ? null : dateTimeFromJson(data);
dynamic _nullable$dateTimeToJson(DateTime? data) =>
    data == null ? null : dateTimeToJson(data);
List<DateTime?> _list$_nullable$dateTimeFromJson(dynamic data) =>
    data is List ? data.map(_nullable$dateTimeFromJson).toList() : [];
dynamic _list$_nullable$dateTimeToJson(List<DateTime?> data) =>
    data.map(_nullable$dateTimeToJson).toList();
List<DateTime?>? _nullable$_list$_nullable$dateTimeFromJson(dynamic data) =>
    data == null ? null : _list$_nullable$dateTimeFromJson(data);
dynamic _nullable$_list$_nullable$dateTimeToJson(List<DateTime?>? data) =>
    data == null ? null : _list$_nullable$dateTimeToJson(data);
List<List<DateTime?>?> _list$_nullable$_list$_nullable$dateTimeFromJson(
        dynamic data) =>
    data is List
        ? data.map(_nullable$_list$_nullable$dateTimeFromJson).toList()
        : [];
dynamic _list$_nullable$_list$_nullable$dateTimeToJson(
        List<List<DateTime?>?> data) =>
    data.map(_nullable$_list$_nullable$dateTimeToJson).toList();
List<List<DateTime?>?>?
    _nullable$_list$_nullable$_list$_nullable$dateTimeFromJson(dynamic data) =>
        data == null
            ? null
            : _list$_nullable$_list$_nullable$dateTimeFromJson(data);
dynamic _nullable$_list$_nullable$_list$_nullable$dateTimeToJson(
        List<List<DateTime?>?>? data) =>
    data == null ? null : _list$_nullable$_list$_nullable$dateTimeToJson(data);
