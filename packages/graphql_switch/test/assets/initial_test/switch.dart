// Generated file, do not modify
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_switch/graphql_switch.dart';
export 'package:graphql_switch/graphql_switch.dart' show graphql;

Future<void> _initialzer(ClientInitializer initializer) async {
  const l$MyNestedWidget_person = FragmentDefinitionNode(
    name: NameNode(value: 'MyNestedWidget_person'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Person'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: NameNode(value: 'name2'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'answer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'question'),
            value: VariableNode(name: NameNode(value: 'question')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'child'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  );
  initializer
    ..registerOperation(
      r'Query$MyWidgetQuery',
      const DocumentNode(definitions: [
        OperationDefinitionNode(
          type: OperationType.query,
          name: NameNode(value: 'MyWidgetQuery'),
          variableDefinitions: [
            VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'question')),
              type: NamedTypeNode(
                name: NameNode(value: 'String'),
                isNonNull: true,
              ),
              defaultValue: DefaultValueNode(value: null),
              directives: [],
            ),
            VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'details')),
              type: NamedTypeNode(
                name: NameNode(value: 'Details'),
                isNonNull: true,
              ),
              defaultValue: DefaultValueNode(value: null),
              directives: [],
            ),
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'child'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'MyNestedWidget_person'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
          ]),
        ),
        l$MyNestedWidget_person,
      ]),
    );
  await initializer.setup();
}

class SwitchClient extends InternalSwitchClient {
  SwitchClient({
    required Widget child,
    required InitializeResult initializeResult,
    Key? key,
  }) : super(
          child,
          initializeResult,
          key,
        );

  static Future<InitializeResult> initialize<TClientContext extends Object?>({
    required FetchFn<TClientContext> fetch,
    required TClientContext clientContext,
  }) =>
      InternalSwitchClient.initialize<TClientContext>(
        _initialzer,
        fetch,
        clientContext,
      );
}

QueryResult<Query$MyWidgetQuery> useQuery$MyWidgetQuery(
  DocumentNode document,
  Variables$Query$MyWidgetQuery variables, {
  QueryOptions? options,
}) =>
    useQuery(
      r'Query$MyWidgetQuery',
      Query$MyWidgetQuery.fromJson,
      options,
      variables,
    );
Fragment$MyNestedWidget_person? useFragment$MyNestedWidget_person(
  DocumentNode document,
  FragmentKey$MyNestedWidget_person? key,
) =>
    useMaybeFragment(
      r'Fragment$MyNestedWidget_person',
      key,
      Fragment$MyNestedWidget_person.fromJson,
    );

abstract class FragmentKey$MyNestedWidget_person implements FragmentKey {}

class Fragment$MyNestedWidget_person {
  Fragment$MyNestedWidget_person._(
    this.$rawData,
    this.name,
    this.name2,
    this.answer,
    this.child,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  final String? name2;

  final String? answer;

  final Fragment$MyNestedWidget_person$child? child;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MyNestedWidget_person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$name2 = name2;
    final lOther$name2 = other.name2;
    if (l$name2 != lOther$name2) {
      return false;
    }
    final l$answer = answer;
    final lOther$answer = other.answer;
    if (l$answer != lOther$answer) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (l$child != lOther$child) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$name2 = name2;
    final l$answer = answer;
    final l$child = child;
    return Object.hashAll([
      l$name,
      l$name2,
      l$answer,
      l$child,
    ]);
  }

  static Fragment$MyNestedWidget_person fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$name2 = json['name2'];
    final l$answer = json['answer'];
    final l$child = json['child'];
    return Fragment$MyNestedWidget_person._(
      json,
      (l$name as String?),
      (l$name2 as String?),
      (l$answer as String?),
      l$child == null
          ? null
          : Fragment$MyNestedWidget_person$child.fromJson(
              (l$child as Map<String, dynamic>)),
    );
  }
}

class Fragment$MyNestedWidget_person$child {
  Fragment$MyNestedWidget_person$child._(
    this.$rawData,
    this.name,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MyNestedWidget_person$child) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  static Fragment$MyNestedWidget_person$child fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Person":
        return Fragment$MyNestedWidget_person$child$$Person.fromJson(json);

      default:
        final l$name = json['name'];
        return Fragment$MyNestedWidget_person$child._(
          json,
          (l$name as String?),
        );
    }
  }
}

class Fragment$MyNestedWidget_person$child$$Person
    implements Fragment$MyNestedWidget_person$child {
  Fragment$MyNestedWidget_person$child$$Person._(
    this.$rawData,
    this.name,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MyNestedWidget_person$child$$Person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  static Fragment$MyNestedWidget_person$child$$Person fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$MyNestedWidget_person$child$$Person._(
      json,
      (l$name as String?),
    );
  }
}

class Query$MyWidgetQuery {
  Query$MyWidgetQuery._(
    this.$rawData,
    this.name,
    this.child,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  final Query$MyWidgetQuery$child? child;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyWidgetQuery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (l$child != lOther$child) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$child = child;
    return Object.hashAll([
      l$name,
      l$child,
    ]);
  }

  static Query$MyWidgetQuery fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$child = json['child'];
    return Query$MyWidgetQuery._(
      json,
      (l$name as String?),
      l$child == null
          ? null
          : Query$MyWidgetQuery$child.fromJson(
              (l$child as Map<String, dynamic>)),
    );
  }
}

class Query$MyWidgetQuery$child {
  Query$MyWidgetQuery$child._(
    this.$rawData,
    this.name,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyWidgetQuery$child) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  static Query$MyWidgetQuery$child fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Person":
        return Query$MyWidgetQuery$child$$Person.fromJson(json);

      default:
        final l$name = json['name'];
        return Query$MyWidgetQuery$child._(
          json,
          (l$name as String?),
        );
    }
  }
}

class Query$MyWidgetQuery$child$$Person
    implements Query$MyWidgetQuery$child, FragmentKey$MyNestedWidget_person {
  Query$MyWidgetQuery$child$$Person._(
    this.$rawData,
    this.name,
  );

  final Map<String, dynamic> $rawData;

  final String? name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyWidgetQuery$child$$Person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  static Query$MyWidgetQuery$child$$Person fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$MyWidgetQuery$child$$Person._(
      json,
      (l$name as String?),
    );
  }
}

class Query$MyWidgetQuery$child$$Person$child
    implements FragmentKey$MyNestedWidget_person {
  Query$MyWidgetQuery$child$$Person$child._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyWidgetQuery$child$$Person$child) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Query$MyWidgetQuery$child$$Person$child fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Person":
        return Query$MyWidgetQuery$child$$Person$child$$Person.fromJson(json);

      default:
        return Query$MyWidgetQuery$child$$Person$child._(json);
    }
  }
}

class Query$MyWidgetQuery$child$$Person$child$$Person
    implements
        Query$MyWidgetQuery$child$$Person$child,
        FragmentKey$MyNestedWidget_person {
  Query$MyWidgetQuery$child$$Person$child$$Person._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyWidgetQuery$child$$Person$child$$Person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Query$MyWidgetQuery$child$$Person$child$$Person fromJson(
      Map<String, dynamic> json) {
    return Query$MyWidgetQuery$child$$Person$child$$Person._(json);
  }
}

typedef _BuilderVariables$Query$MyWidgetQuery
    = Variables$Query$MyWidgetQuery Function(
        Variables$Query$MyWidgetQuery Function({
  required String question,
  required Input$Details details,
}));

class Variables$Query$MyWidgetQuery implements Input {
  Variables$Query$MyWidgetQuery._(this._data);

  factory Variables$Query$MyWidgetQuery(
          _BuilderVariables$Query$MyWidgetQuery builder) =>
      builder(({
        required Object question,
        required Object details,
      }) =>
          Variables$Query$MyWidgetQuery._(
            {
              r"question": question,
              r"details": details,
            },
          ));

  Map<String, dynamic> _data;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MyWidgetQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$question = question;
    final lOther$question = other.question;
    if (l$question != lOther$question) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$question = question;
    final l$details = details;
    return Object.hashAll([
      l$question,
      l$details,
    ]);
  }

  Map<String, dynamic> toJson() {
    final l$question = (_data['question'] as String);
    final l$details = (_data['details'] as Input$Details);
    return {
      "question": l$question,
      "details": l$details.toJson(),
    };
  }

  String get question => (_data['question'] as String);
  Input$Details get details => (_data['details'] as Input$Details);
}

typedef _BuilderInput$Details = Input$Details Function(
    Input$Details Function({
  required String name,
  int? age,
  Input$Details? deeds,
}));

class Input$Details implements Input {
  Input$Details._(this._data);

  factory Input$Details(_BuilderInput$Details builder) => builder(({
        required Object name,
        Object? age = $undefined,
        Object? deeds = $undefined,
      }) =>
          Input$Details._(
            {
              r"name": name,
              if (age != $undefined) r"age": age,
              if (deeds != $undefined) r"deeds": deeds,
            },
          ));

  Map<String, dynamic> _data;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Details) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (_data.containsKey('age') != other._data.containsKey('age')) {
      return false;
    }
    if (l$age != lOther$age) {
      return false;
    }
    final l$deeds = deeds;
    final lOther$deeds = other.deeds;
    if (_data.containsKey('deeds') != other._data.containsKey('deeds')) {
      return false;
    }
    if (l$deeds != lOther$deeds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$age = age;
    final l$deeds = deeds;
    return Object.hashAll([
      l$name,
      _data.containsKey('age') ? l$age : const {},
      _data.containsKey('deeds') ? l$deeds : const {},
    ]);
  }

  Map<String, dynamic> toJson() {
    final l$name = (_data['name'] as String);
    final l$age = (_data['age'] as int?);
    final l$deeds = (_data['deeds'] as Input$Details?);
    return {
      "name": l$name,
      if (_data.containsKey("age")) "age": l$age,
      if (_data.containsKey("deeds")) "deeds": l$deeds?.toJson(),
    };
  }

  String get name => (_data['name'] as String);
  int? get age => (_data['age'] as int?);
  Input$Details? get deeds => (_data['deeds'] as Input$Details?);
}
