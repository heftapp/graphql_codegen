// Generated file, do not modify
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_switch/graphql_switch.dart';
export 'package:graphql_switch/graphql_switch.dart' show graphql;

Future<void> _initialzer(ClientInitializer initializer) async {
  const l$Movie_film = FragmentDefinitionNode(
    name: NameNode(value: 'Movie_film'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Film'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'episodeID'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'characterConnection'),
        alias: NameNode(value: 'characters'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '4'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Characters'),
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
          FieldNode(
            name: NameNode(value: '__typename'),
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
  const l$Characters = FragmentDefinitionNode(
    name: NameNode(value: 'Characters'),
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
      r'Query$FetchAllFilms',
      const DocumentNode(definitions: [
        OperationDefinitionNode(
          type: OperationType.query,
          name: NameNode(value: 'FetchAllFilms'),
          variableDefinitions: [
            VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'count')),
              type: NamedTypeNode(
                name: NameNode(value: 'Int'),
                isNonNull: true,
              ),
              defaultValue: DefaultValueNode(value: null),
              directives: [],
            )
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'allFilms'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'count')),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'films'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                      name: NameNode(value: 'Movie_film'),
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
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            )
          ]),
        ),
        l$Movie_film,
        l$Characters,
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

QueryResult<Query$FetchAllFilms> useQuery$FetchAllFilms(
  DocumentNode document,
  Variables$Query$FetchAllFilms variables, {
  QueryOptions? options,
}) =>
    useQuery(
      r'Query$FetchAllFilms',
      Query$FetchAllFilms.fromJson,
      options,
      variables,
    );
Fragment$Movie_film useFragment$Movie_film(
  DocumentNode document,
  FragmentKey$Movie_film key,
) =>
    useFragment(
      r'Fragment$Movie_film',
      key,
      Fragment$Movie_film.fromJson,
    );
Iterable<Fragment$Characters> useFragment$Characters(
  DocumentNode document,
  Iterable<FragmentKey$Characters> keys,
) =>
    useFragments(
      r'Fragment$Characters',
      keys,
      Fragment$Characters.fromJson,
    );

abstract class FragmentKey$Movie_film implements FragmentKey {}

abstract class FragmentKey$Characters implements FragmentKey {}

class Fragment$Movie_film {
  Fragment$Movie_film._(
    this.$rawData,
    this.title,
    this.episodeID,
    this.characters,
  );

  final Map<String, dynamic> $rawData;

  final String? title;

  final int? episodeID;

  final Fragment$Movie_film$characters? characters;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Movie_film) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$episodeID = episodeID;
    final lOther$episodeID = other.episodeID;
    if (l$episodeID != lOther$episodeID) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$episodeID = episodeID;
    final l$characters = characters;
    return Object.hashAll([
      l$title,
      l$episodeID,
      l$characters,
    ]);
  }

  static Fragment$Movie_film fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$episodeID = json['episodeID'];
    final l$characters = json['characters'];
    return Fragment$Movie_film._(
      json,
      (l$title as String?),
      (l$episodeID as int?),
      l$characters == null
          ? null
          : Fragment$Movie_film$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
    );
  }
}

class Fragment$Movie_film$characters {
  Fragment$Movie_film$characters._(
    this.$rawData,
    this.characters,
  );

  final Map<String, dynamic> $rawData;

  final List<Fragment$Movie_film$characters$characters?>? characters;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Movie_film$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    return Object.hashAll([
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v))
    ]);
  }

  static Fragment$Movie_film$characters fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    return Fragment$Movie_film$characters._(
      json,
      (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Movie_film$characters$characters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }
}

class Fragment$Movie_film$characters$characters
    implements FragmentKey$Characters {
  Fragment$Movie_film$characters$characters._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Movie_film$characters$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Fragment$Movie_film$characters$characters fromJson(
      Map<String, dynamic> json) {
    return Fragment$Movie_film$characters$characters._(json);
  }
}

class Fragment$Characters {
  Fragment$Characters._(
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
    if (!(other is Fragment$Characters) || runtimeType != other.runtimeType) {
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

  static Fragment$Characters fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$Characters._(
      json,
      (l$name as String?),
    );
  }
}

class Query$FetchAllFilms {
  Query$FetchAllFilms._(
    this.$rawData,
    this.allFilms,
  );

  final Map<String, dynamic> $rawData;

  final Query$FetchAllFilms$allFilms? allFilms;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllFilms) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allFilms = allFilms;
    final lOther$allFilms = other.allFilms;
    if (l$allFilms != lOther$allFilms) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allFilms = allFilms;
    return Object.hashAll([l$allFilms]);
  }

  static Query$FetchAllFilms fromJson(Map<String, dynamic> json) {
    final l$allFilms = json['allFilms'];
    return Query$FetchAllFilms._(
      json,
      l$allFilms == null
          ? null
          : Query$FetchAllFilms$allFilms.fromJson(
              (l$allFilms as Map<String, dynamic>)),
    );
  }
}

class Query$FetchAllFilms$allFilms {
  Query$FetchAllFilms$allFilms._(
    this.$rawData,
    this.films,
  );

  final Map<String, dynamic> $rawData;

  final List<Query$FetchAllFilms$allFilms$films?>? films;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllFilms$allFilms) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$films = films;
    final lOther$films = other.films;
    if (l$films != null && lOther$films != null) {
      if (l$films.length != lOther$films.length) {
        return false;
      }
      for (int i = 0; i < l$films.length; i++) {
        final l$films$entry = l$films[i];
        final lOther$films$entry = lOther$films[i];
        if (l$films$entry != lOther$films$entry) {
          return false;
        }
      }
    } else if (l$films != lOther$films) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$films = films;
    return Object.hashAll(
        [l$films == null ? null : Object.hashAll(l$films.map((v) => v))]);
  }

  static Query$FetchAllFilms$allFilms fromJson(Map<String, dynamic> json) {
    final l$films = json['films'];
    return Query$FetchAllFilms$allFilms._(
      json,
      (l$films as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchAllFilms$allFilms$films.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }
}

class Query$FetchAllFilms$allFilms$films implements FragmentKey$Movie_film {
  Query$FetchAllFilms$allFilms$films._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllFilms$allFilms$films) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Query$FetchAllFilms$allFilms$films fromJson(
      Map<String, dynamic> json) {
    return Query$FetchAllFilms$allFilms$films._(json);
  }
}

class Query$FetchAllFilms$allFilms$films$characters
    implements FragmentKey$Movie_film {
  Query$FetchAllFilms$allFilms$films$characters._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllFilms$allFilms$films$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Query$FetchAllFilms$allFilms$films$characters fromJson(
      Map<String, dynamic> json) {
    return Query$FetchAllFilms$allFilms$films$characters._(json);
  }
}

class Query$FetchAllFilms$allFilms$films$characters$characters
    implements FragmentKey$Movie_film, FragmentKey$Characters {
  Query$FetchAllFilms$allFilms$films$characters$characters._(this.$rawData);

  final Map<String, dynamic> $rawData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllFilms$allFilms$films$characters$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  static Query$FetchAllFilms$allFilms$films$characters$characters fromJson(
      Map<String, dynamic> json) {
    return Query$FetchAllFilms$allFilms$films$characters$characters._(json);
  }
}

typedef _BuilderVariables$Query$FetchAllFilms = Variables$Query$FetchAllFilms
    Function(Variables$Query$FetchAllFilms Function({required int count}));

class Variables$Query$FetchAllFilms implements Input {
  Variables$Query$FetchAllFilms._(this._data);

  factory Variables$Query$FetchAllFilms(
          _BuilderVariables$Query$FetchAllFilms builder) =>
      builder(({required Object count}) => Variables$Query$FetchAllFilms._(
            {
              r"count": count,
            },
          ));

  Map<String, dynamic> _data;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchAllFilms) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([l$count]);
  }

  Map<String, dynamic> toJson() {
    final l$count = (_data['count'] as int);
    return {
      "count": l$count,
    };
  }

  int get count => (_data['count'] as int);
}
