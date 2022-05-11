import 'dart:convert';

import 'package:graphql_codegen_example/main.graphql.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("Can parse custom enum", () {
    test("it parses", () {
      const json = """
      {
        "__typename": "Query",
        "fetchPerson": {
          "__typename": "Person",
          "name": "Bob",
          "dob": "1990-03-16T10:07:29.362Z",
          "events": [
            "1990-03-16T10:07:29.362Z",
            "1990-03-16T10:08:29.362Z",
            "1990-03-16T10:09:29.362Z"
          ],
          "eventsOfEvents": [
            [
              "1990-03-16T10:07:29.362Z"
            ],
            null
          ]
        }
      }
      """;
      final parsed = Query$FetchPerson.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );
      expect(
        parsed,
        equals(
          Query$FetchPerson(
            fetchPerson: Query$FetchPerson$fetchPerson(
                dob: DateTime.parse("1990-03-16T10:07:29.362Z"),
                $__typename: 'Person',
                name: 'Bob',
                events: [
                  DateTime.parse("1990-03-16T10:07:29.362Z"),
                  DateTime.parse("1990-03-16T10:08:29.362Z"),
                  DateTime.parse("1990-03-16T10:09:29.362Z")
                ],
                eventsOfEvents: [
                  [
                    DateTime.parse("1990-03-16T10:07:29.362Z"),
                  ],
                  null,
                ]),
            $__typename: "Query",
          ),
        ),
      );
    });
  });
}
