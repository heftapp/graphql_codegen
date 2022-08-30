import 'dart:convert';

import 'package:example/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_switch/graphql_switch.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchGraphQL(
  RequestParameters<Map<String, String>> params,
  Map<String, dynamic> variables,
) async {
  final response = await http.post(
    Uri.parse('https://swapi-graphql.netlify.app/.netlify/functions/index'),
    headers: {'content-type': 'application/json', ...params.clientContext},
    body: json.encode({
      'query': params.text,
      'operationName': params.name,
      'variables': variables
    }),
  );
  return json.decode(response.body);
}

void main() async {
  final initializeResult = await SwitchClient.initialize(
    fetch: fetchGraphQL,
    clientContext: <String, String>{},
  );
  runApp(
    SwitchClient(
      initializeResult: initializeResult,
      child: const MaterialApp(home: HideAppWrapper()),
    ),
  );
}

class HideAppWrapper extends HookWidget {
  const HideAppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final show = useState(true);
    final count = useState(1);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Wars Fetcher"),
      ),
      body: show.value ? MyApp(count.value) : Container(),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                show.value = !show.value;
              },
              child: Text(show.value ? 'Hide movies' : 'Show movies'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                count.value++;
              },
              child: const Text('Fetch one more'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                count.value--;
              },
              child: const Text('Fetch one less'),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp extends HookWidget {
  final int count;
  const MyApp(this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final response = useQuery$FetchAllFilms(
      graphql(
        r"""
      query FetchAllFilms($count: Int!) {
        allFilms(first: $count) {
          films {
            ...Movie_film
          }
        }
      }
    """,
      ),
      Variables$Query$FetchAllFilms((vs) => vs(count: count)),
    );
    if (response.isLoading) {
      return const Text('Loading');
    }
    final films = response.data?.allFilms?.films ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...films.expand((e) => [if (e != null) Movie(e)]),
      ],
    );
  }
}

class Movie extends HookWidget {
  final FragmentKey$Movie_film movieKey;

  const Movie(this.movieKey, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = useFragment$Movie_film(
      graphql("""
        fragment Movie_film on Film { 
          title
          episodeID
          characters: characterConnection(first: 4) {
            characters {
              ...Characters
            }
          }
        }
      """),
      movieKey,
    );
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.title ?? 'No title'),
          Text('Episode ${data.episodeID}'),
          Characters(
            characterKeys: data.characters?.characters
                    ?.whereType<FragmentKey$Characters>() ??
                [],
          )
        ],
      ),
    );
  }
}

class Characters extends HookWidget {
  final Iterable<FragmentKey$Characters> characterKeys;
  const Characters({
    Key? key,
    required this.characterKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characters = useFragment$Characters(
      graphql(
        """
  fragment Characters on Person @switch(plural: true) {
    name
    birthYear
  }
""",
      ),
      characterKeys,
    );
    return Wrap(
      children: characters
          .map(
            (e) => Container(
              padding: const EdgeInsets.only(right: 4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    e.name ?? 'No name',
                    style: const TextStyle(fontSize: 12),
                  ),
                  if (e.birthYear != null)
                    Text(
                      " (${e.birthYear})",
                      style: const TextStyle(fontSize: 12),
                    ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
