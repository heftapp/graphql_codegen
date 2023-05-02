# GraphQL Codegen

## HELP US SURVIVE, BECOME A [SPONSOR](https://github.com/sponsors/heftapp)!

This is an opinionated code-generation tool from GraphQL to Dart/Flutter.

It'll allow you to generate Dart serializers and client helpers with minimal config.
The framework makes no assumption on how you structure your fragments or queries,
for each `operation.graphql` the framework will generate a `operation.graphql.dart` file containing dart classes.

Read more about the tool and motivation at the [GraphQL Codegen deep-dive](https://budde377.medium.com/graphql-codegen-deep-dive-37eee522e4e5)
and on how you can structure your flutter apps with the tool on [Structure your Flutter GraphQL apps](https://budde377.medium.com/structure-your-flutter-graphql-apps-717ab9e46a5d).

The framework does not fetch your schema for you, so before you run this, you'll need
to add your schema to your project. In Android Studio this can be done with the [GraphQL](https://plugins.jetbrains.com/plugin/8097-graphql) plugin.

## Installation

### Dev dependencies

- `build_runner` generates files from dart code. Read more [here](https://pub.dev/packages/build_runner)

```sh
$ flutter pub add --dev graphql_codegen build_runner
```

### Dependencies

- `graphql` (optional) to use generated types with `graphql`. See [options](#options)

- `graphql_flutter` (optional) to use generated types with `graphql_flutter`. See [options](#options)

- `flutter_hooks` (optional) to use generated operations hooks. Will be inside [HookWidgets](https://pub.dev/documentation/flutter_hooks/latest/flutter_hooks/HookWidget-class.html)

```sh
$ flutter pub add graphql graphql_flutter flutter_hooks
```

## Basic Usage

To generate dart classes from GraphQL schema, firstly you have to create a `schema.graphql` file and GraphQL document files.

For instance:

Given schema

```graphql
# ./lib/schema.graphql

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
# ./lib/person.graphql

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
    final parsedData = Query$FetchPerson.fromJson(data);
    final name = parsedData.fetchPerson?.name;
    print(name);
}
```

## Using fragments

Fragments are a great tool to re-use queries throughout your app. These are used to create "interfaces"
which allow you to easily parse your data around. Given the schema above and the query

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
    final parsedData = Query$FetchParentsAndChildren.fromJson(data);
    for (final parent in parsedData?.fetchPerson.parents ?? []) {
        printPerson(parent);
        print(parent.dob);
    }
    for (final child in parsedData?.fetchPerson.children ?? []) {
        printPerson(child);
    }
}
```

The `Fragment$PersonSummary` is a class on the shape of

```dart
...
class Fragment$PersonSummary {
    String get fullName;
}
...
```

and will be available in the generated `.graphql.dart` file for the `.graphql` file
containing the fragment.

### Inline fragments

Inline fragment spreads work just like fragment spreads with the exception that they don't generate any explicit `Fragment$YourFragment` classes.

So let's have the schema

```graphql
type Query {
  account: Account!
}

union Account = PersonalAccount | BusinessAccount

type PersonalAccount {
  personName: String!
}

type BusinessAccount {
  businessName: String!
}
```

and the query

```graphql
query FetchAccount {
  account {
    ... on PersonalAccount {
      personName
    }
    ... on BusinessAccount {
      businessName
    }
  }
}
```

the generated classes will allow you to handle the data appropriately with code along the lines of

```dart

void printAccount(Query$FetchAccount$account account) {
  if (account is Query$FetchAccount$account$$PersonalAccount) print(account.personName);
  if (account is Query$FetchAccount$account$$BusinessAccount) print(account.businessName);
}

void printQuery(Query$FetchAccount query) {
  printAccount(query.account);
}
```

This works but is a long class name! In these cases I usually opt to using named fragments

```graphql
fragment PersonalAccount on PersonalAccount {
  personName
}

fragment BusinessAccount on BusinessAccount {
  businessName
}

query FetchAccount {
  account {
    ...BusinessAccount
    ...PersonalAccount
  }
}
```

which allows you to do the following

```dart

void printAccount(Query$FetchAccount$account account) {
  if (account is Fragment$PersonalAccount) print(account.personName);
  if (account is Fragment$BusinessAccount) print(account.businessName);
}

void printQuery(Query$FetchAccount query) {
  printAccount(query.account);
}
```

Additionally, you can use the `when` and `maybeWhen` methods to avoid `is` type tests. **NOTE This also works the same _without_ the inline fragments.**

```dart

void printAccount(Query$FetchAccount$account account) {
  // specify all the cases (and an else in case there's a new type in the response that wasn't previously known)
  account.when(
    personalAccount: (personalAccount) => print(personalAccount.personName),
    businessAccount: (businessAccount) => print(businessAccount.businessName),
    orElse: () => print('Some other unexpected type'),
  )

  // specify only the cases you want to handle (and an else)
  account.maybeWhen(
    personalAccount: (personalAccount) => print(personalAccount.personName),
    orElse: () => print('Anything else, including BusinessAccount'),
  )
}

void printQuery(Query$FetchAccount query) {
  printAccount(query.account);
}
```

# Options

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          # all options go here
```

| Option                     | Default            | Description                                                                                                                                                                                              | More info                                                              |
| -------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `clients`                  | {}                 | Graphql clients to generate helper functions for. Supported types are `graphql` and `graphql_flutter`                                                                                                    | [Clients](#clients)                                                    |
| `scalars`                  | {}                 | Allows custom JSON-Dart transformations. Builder will warn if scalars are not recognized. Unless using primitive types, you will need `fromJsonFunctionName`, `toJsonFunctionName`, `type`, and `import` | [Custom scalars](#custom-scalars)                                      |
| `enums`                    | {}                 | Allows custom enum implementation. You can define `fromJsonFunctionName`, `toJsonFunctionName`, `type`, and `import`                                                                                     | [Custom enums](#custom-enums)                                          |
| `addTypename`              | true               | Whether to automatically insert the `__typename` field in requests                                                                                                                                       | [Add typename](#add-typename)                                          |
| `addTypenameExcludedPaths` | []                 | When `addTypename` is true, the paths to exclude                                                                                                                                                         | [Excluding typenames](#excluding-some-selections-from-adding-typename) |
| `outputDirectory`          | "."                | Location where to output generated types relative to each `.graphql` file                                                                                                                                | [Change output directory](#change-output-directory)                    |
| `assetsPath`               | "lib/\*\*.graphql" | Path to `.graphql` files                                                                                                                                                                                 | **see above**                                                          |
| `generatedFileHeader`      | ""                 | A string to add at the beginning of all `graphql.dart` files                                                                                                                                             | [Generated file headers](#generated-file-headers)                      |
| `scopes`                   | ["**.graphql"]     | For multiple schemas, the globs for each schema                                                                                                                                                          | [Multiple Schemas](#multiple-schemas)                                  |
| `namingSeparator`          | "$"                | The separator to use for generated names                                                                                                                                                                 | [Change naming separator](#change-naming-separator)                    |
| `extraKeywords`            | []                 | A way to specify fields that are also keywords                                                                                                                                                           | [Extra keywords](#extra-keywords)                                      |

---

## Clients

Parsing data is all fine and well, but practically not extremely useful. Therefore, we can generate
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

Once you've set up your `graphql` client (see [pub.dev/packages/graphql](https://pub.dev/packages/graphql)), you can use
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
  final result = await client.query$FetchPerson(
    Options$Query$FetchPerson(
      variables: Variables$Query$FetchPerson(id: "1"),
    ),
  );
  final parsedData = result.parsedData;
  print(parsedData?.fetchPerson?.name);
}

```

#### Cache access

You can also manipulate the cache directly using the generated `readFragmentX`, `writeFragmentX`, `readQueryX`, and `writeQueryX` methods.

Given the fragment:

```graphql
fragment PersonSummary on Person {
  name
}
```

you can update the fragment with

```dart

main () {
  // ...
  final person = client.readFragment$PersonSummary(
    idFields: {'__typename': 'Person', 'id': '1'},
  );
  assert(person != null);
  client.writeFragment$PersonSummary(
    idFields: {'__typename': 'Person', 'id': '1'},
    data: person.copyWith(name: 'Kurt'),
  );
}
```

the query methods work similarly.

### Client `graphql_flutter`

Once you've set up your `graphql_flutter` client (see [pub.dev/packages/graphql_flutter](https://pub.dev/packages/graphql_flutter)),
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
    return Query$FetchPerson$Widget(
      options: Options$Query$FetchPerson(
        variables: Variables$Query$FetchPerson(id: 'id'),
      ),
      builder: (result, {fetchMore, refetch}) {
        return Text(
          result.parsedData?.fetchPerson?.name ?? '...loading'
        );
      }
    );
  }
}
```

or the hook

```dart
import 'person.graphql.dart';
import 'package:flutter/widgets.dart';
import 'flutter_hooks/flutter_hooks.dart';

class PersonWidget extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final result = useQuery$FetchPerson(
      Options$Query$FetchPerson(
        variables: Variables$Query$FetchPerson(id: 'id'),
      ),
    );
    return Text(result.parsedData?.fetchPerson?.name ?? '...loading');
  }
}
```

## Custom scalars

Out of the box, the standard scalars are supported and mapped to relevant dart types. You can add
new mappings for your custom scalars or overwrite existing configurations.

In the schema above, you can see that we have defined the `ISODateTime` scalar. In this example, it contains
a string with an ISO formatted date-time string. We would like to map this to a `String` type by
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
              type: String
            JSON:
              type: Map<String, dynamic>
```

The library supports converting to and from `DateTime` automatically. So, we can write our config as

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

and it'll work as expected.

Assume we want to use a `CustomDateTime` class instead, we can add

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

and create a `scalar.dart` file with your converters

```dart
// scalar.dart

class CustomDateTime {
  final DateTime dt;
  CustomDateTime(this.dt);
}

CustomDateTime customDateTimeFromJson(dynamic data) => CustomDateTime(DateTime(data as String));
dynamic customDateTimeToJson(CustomDateTime time) => time.dt.toIso8601String();
```

and now all fields using `ISODateTime` will be a `CustomDateTime` instance.

## Custom Enums

Per default, the library will build enum serializers. If you want to provide your own implementation of an Enum, you can follow a similar pattern as [Custom scalars](#custom-scalars).

Given the enum

```graphql
enum GraphQLEnum {
  FOO
  BAR
  BAZ
}
```

the config

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          enums:
            GraphQLEnum:
              type: DartEnum
              fromJsonFunctionName: fromJson
              toJsonFunctionName: toJson
              import: package:my_app/enum.dart
```

and the implementation

```dart
// enum.dart

enum DartEnum {
  foo, bar, baz
}

DartEnum fromJson(String v) {
  switch(v) {
    case 'FOO': return DartEnum.foo;
    case 'BAR': return DartEnum.bar;
    default: return DartEnum.baz;
  }
}

String toJson(DartEnum v) {
  switch(v) {
    case DartEnum.foo: return 'FOO';
    case DartEnum.bar: return 'BAR';
    case DartEnum.baz: return 'BAZ';
  }
}

```

the generator will work as expected.

### Use a custom fallback value

Per default, the code-generator provides a default fallback value called `$unknown`. This is used to handle any
new enum values when parsing the enum. Without a fallback value, your app would break when you add a new enum value.

You can select an existing enum value to be the fallback enum value. This is done by specifying the `fallbackEnumValue` option on the enum. So given the GraphQL:

```graphql
enum MyEnum {
  FIRST
  LAST
  OTHER
}
```

and the configuration

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          enums:
            MyEnum:
              fallbackEnumValue: OTHER
```

no `$unknown` value will be added to your enum and all new values will be mapped to `MyEnum.OTHER`.

## Add typename

By default, the `addTypename` option is enabled. This'll add the `__typename` introspection field to every selection set. E.g.,

```graphql
query Foo {
  bar {
    baz
  }
}
```

becomes

```graphql
query Foo {
  bar {
    baz
    __typename
  }
  __typename
}
```

This ensures the best conditions for caching.

### Excluding some selections from adding typename

Any query, mutation, subscription, or fragment can be excluded from adding the `__typename` introspection by the `addTypenameExcludedPaths` option:

Setting

```yaml
addTypenameExcludedPaths:
  - subscription
```

or

```yaml
addTypenameExcludedPaths:
  - Foo
```

will both transform

```graphql
subscription Foo {
  bar {
    baz
  }
}
```

to

```graphql
subscription Foo {
  bar {
    baz
    __typename
  }
}
```

where

```yaml
addTypenameExcludedPaths:
  - subscription.bar
```

or

```yaml
addTypenameExcludedPaths:
  - subscription.*
```

or

```yaml
addTypenameExcludedPaths:
  - **.bar
```

will transform to

```graphql
subscription Foo {
  bar {
    baz
  }
  __typename
}
```

## Change output directory

By default, the dart files are generated relative to the `*.graphql` file.

You can change this by specifying the `outputDirectory` folder.

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          outputDirectory: __generated
```

which place the files in the `__generated` folder relative to the `.graphql` file. E.g.,

```
/lib/document.graphql -> /lib/__generated/document.graphql
```

You may also specify an absolute path, e.g,

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          outputDirectory: /lib/__generated
          assetsPath: graphql/**
```

this in combination with an asset path will place the folders in

```
/graphql/document.graphql -> /lib/__generated/document.graphql
/graphql/fragments/document.graphql -> /lib/__generated/fragments/document.graphql
```

**NOTICE:** For `build_runner` to consider files outside of the "default package layout" you'll need to add the `graphql/**` to the [source options](https://github.com/dart-lang/build/blob/master/docs/faq.md#how-can-i-include-additional-sources-in-my-build).

## Generated file headers

Generated `.graphql.dart` files can have any string inserted at the beginning of the file with the `generatedFileHeader` option.

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          generatedFileHeader: "// GENERATED FILE\n// DO NOT MODIFY\n"
```

One way to use this might be to ignore lint warnings with

```yaml
generatedFileHeader: "// ignore_for_file: type=lint\n"
```

But since the `.graphql.g.dart` files also might have warnings it might be easier to ignore the generated file directories from `analysis_options.yaml`

```yaml
analyzer:
  exclude:
    - lib/**/__generated__/*
```

## Multiple schemas

To support multiple schemas, the code generator has a concept of scopes. Consider the following configuration:

```yaml
targets:
  $default:
    builders:
      graphql_codegen:
        options:
          scopes:
            - lib/schema1/**
            - lib/schema2/**
```

here the generator will perform independent analysis for the GraphQL files matching the relevant scope. E.g., any GraphQL file in
the `lib/schema1` folder will be built relative to the schema in this folder, ignoring all other files completely.

## Change naming separator

The library will generate a lot of serializers and other classes. The class names are a combination of operation, field, and
type names. To avoid name collisions, the library will separate each of these names with `$`.

E.g.,

```graphql
query Q {
  name
}
```

might yield the class

```dart
class Query$Q$name { ... }
```

This should work for most, but some other libraries might not support `$`. Therefore, you can configure the naming separator with the `namingSeparator` option. E.g., the configuration:

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          namingSeparator: "___"
```

will change the above-yielded code to

```dart

class Query___Q___name { ... }
```

## Null and input serializers

Per default, when you construct an input any `null` field provided in the constructor will be omitted. E.g., given the input

```graphql
input I {
  s: String
  b: Boolean
}
```

the following holds

```dart
Input$I(s: "Foo").toJson(); // {"s": "Foo"}
Input$I(s: "Foo", b: null).toJson(); // {"s": "Foo"}
Input$I(s: "Foo", b: false).toJson(); // {"s": "Foo", "b": false}
Input$I(s: "Foo").copyWith(b: null).toJson(); // {"s": "Foo", "b": null}
```

So to explicitly set a (nullable) field to `null`, you'll need to use the `copyWith` function.

## Extra keywords

Some APIs will generate fields that are in some way keywords and will break code generation. These might be fields
with type names.

You may specify extra keywords with the option

```yaml
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          extraKeywords:
            - String
```
