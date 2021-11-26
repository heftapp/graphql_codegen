# GraphQL Codegen

This is an opinionated code-generation tool from GraphQL to Dart/Flutter.

It'll allow you to generate Dart serializers and client helpers with minimal config.
The framework makes no assumption on how you structure your fragments or queries,
for each `operation.graphql` the framework will generate a `operation.graphq.dart` file
containing dart classes.

Read more about the tool and motiation at the [GraphQL Codegen deep-dive](https://budde377.medium.com/graphql-codegen-deep-dive-37eee522e4e5)
and on how you can structure your flutter apps with the tool on [Structure your Flutter GraphQL apps](https://budde377.medium.com/structure-your-flutter-graphql-apps-717ab9e46a5d).


The builder relies on `json_serializable` to generate the actual serializers,
so in addition to the two files mentioned above, it'll also generate a `operation.graphql.g.dart`
file.

The framework does not fetch your schema for you, so before you run this, you'll need
to add your schema to your project.

## Installation

Add `graphql_codegen: <current_version>` to your `dev_dependencies`.

The project depends on `json_serializable` so read more on how to set this up [here](https://pub.dev/packages/json_serializable).
It is also a builder, so you'll need to set up `build_runner`. Read more [here](https://pub.dev/packages/build_runner).

## Basic Usage

To generate dart classes from GraphQL schema, firstly you have to create a `schema.graphql` file and GraphQL document files.

For instance:

Given schema

```graphql
# schema.graphql

type Query {
  fetch_person(id: ID!): Person
}

type Person {
  full_name: String!
  nickname: String
  website: URL
  date_of_birth: ISODateTime
  parents: [Person!]
  siblings: [Person!]
  children: [Person!]
}

scalar ISODateTime

scalar URL
```

and a query

```graphql
# person.graphql

query FetchPerson($id: ID!) {
  fetch_person(id: $id) {
    name: full_name
  }
}
```

and then you can generate dart classes with:

```sh
$ dart run build_runner build
```

afterwards, you can parse the result with

```dart
// person.dart

import 'person.graphql.dart';

main () {
    final data = fetchDataFromSomewhereMaybeOuterSpace();
    final parsedData = QueryFetchPerson.fromJson(data);
    final name = parsedData.fetchPerson?.name;
    print(name);
}
```

## Using fragments

Fragments are a great tool to re-use queries throughout your app. These are used to create "interfaces"
which'll allow you to easily parse your data around. Given the schema above and the query

```graphql
# parents_and_children.graphql

fragment PersonSummary on Person {
  full_name
}

query FetchParentsAndChildren {
  fetch_person(id: "1") {
    parents {
      ...PersonSummary
      nickname
    }

    children {
      ...PersonSummary
    }
  }
}
```

this will allow you to do the following

```dart
// parents_and_children.dart

import 'parents_and_children.graphql.dart';

printPerson(FragmentPersonSummary person) {
    print(person.fullName);
}

main () {
    final data = fetchDataFromTheVoid();
    final parsedData = QueryFetchParentsAndChildren.fromJson(data);
    for (final parent in parsedData?.fetchPerson.parents ?? []) {
        printPerson(parent);
        print(parent.dob);
    }
    for (final child in parsedData?.fetchPerson.children ?? []) {
        printPerson(child);
    }
}
```

The `FragmentPersonSummary` is an abstract class on the shape of

```dart
...
abstract class FragmentPersonSummary {
    String get fullName;
}
...
```

and will be available in the generated `.graphql.dart` file for the `.graphql` file
containing the fragment.

## Custom scalars

Out of the box, the standard fragmens are supported and mapped to relevant dart types. You can add
new mappings for your custom scalars or overwrite existing configurations.

In the schema above, you can see that we have defined the `ISODateTime` scalar. In this example, it contains
a string with an iso formatted date-time string. We would like to map this to darts `DateTime` type by
adding the following configuration to the `build.yaml` file:

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          scalars:
            ISODateTime:
              type: DateTime
            JSON:
              type: Map<String, dynamic>
```

since `json_serializable` supports parsing `DateTime` from strings this is all we need to do.

Assume we want to use a custom date-time class instead (e.g. `CustomDateTime`) we can add

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          scalars:
            ISODateTime:
              type: CustomDateTime
              fromJsonFunctionName: customDateTimeFromJson
              toJsonFunctionName: customDateTimeToJson
              import: package:my_app/scalar.dart
```

and create a `scalar.dart` file with your converter functions and class.

```dart
// custom_date_time.dart
class CustomDateTime {
    final String datetime;

    CustomDateTime(this.datetime);
}
```

and

```dart
// scalar.dart

export 'custom_date_time.dart' show {CustomDateTime};

CustomDateTime customDateTimeFromJson(dynamic data) => CustomDateTime(data as String);
dynamic customDateTimeToJson(CustomDateTime time) => time.datetime;
```

and now all fields using `ISODateTime` will be a `CustomDateTime` instance.

## Clients

Parsing data is all fine and well, but practically not extremly usable. Therefor, we can generate
clients to call your API.

Clients can be enabled in the `build.yaml` file with:

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          clients:
            - graphql
            - graphql_flutter
```

Currently, we support two clients:

### Client `graphql`

Once you've setup your `graphql` client (see [pub.dev/packages/graphql](https://pub.dev/packages/graphql)), you can use
GraphQL Codegen to generate new queries or mutators on the client.

With the query from above:

```graphql
# person.graphql

query FetchPerson($id: ID!) {
  fetch_person(id: $id) {
    name: full_name
  }
}
```

we can now access the client:

```dart
import 'person.graphql.dart';


main () async {
    final client = GraphQLClient();
    final result = await client.queryFetchPerson(
        GQLOptionsQueryFetchPerson(
            variables: VariablesQueryFetchPerson(
                id: "1",
            ),
        ),
    );
    final parsedData = result.parsedBodyQueryFetchPerson;
    print(parsedData?.fetchPerson?.name);
}

```

### Client `graphql_flutter`

Once you've setup your `graphql_flutter` client (see [pub.dev/packages/graphql_flutter](https://pub.dev/packages/graphql_flutter)),
you can use GraphQL Codegen to generate new `Query` or `Mutation` widgets.

With the query from above:

```graphql
# person.graphql

query FetchPerson($id: ID!) {
  fetch_person(id: $id) {
    name: full_name
  }
}
```

we can query with the widget

```dart
import 'person.graphql.dart';
import 'package:flutter/widgets.dart';

class PersonWidget extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return GQLFQueryFetchPerson(
            options: GQLOptionsQueryFetchPerson(
                variables: VariablesQueryFetchPerson(
                    id: 'id',
                ),
            ),
            builder: (result, {fetchMore, refetch}) {
                return Text(
                    result.parsedDataQueryFetchPerson?.fetchPerson?.name ?? '...loading'
                );
            }
        );
    }

}
```
