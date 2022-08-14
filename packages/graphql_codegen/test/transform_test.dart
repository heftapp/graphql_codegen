import 'package:gql/language.dart';
import 'package:graphql_codegen/src/transform/transform.dart';
import 'package:graphql_codegen/src/config/config.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void testTransform(GraphQLCodegenConfig config, String p1, String p2) => expect(
    printNode(transform(config, parseString(p1))),
    equals(printNode(parseString(p2))));

void main() {
  group("addTypename", () {
    test("will add typename", () {
      final config = GraphQLCodegenConfig();
      final doc1 = """
      type Query {
        test: String
      }
      query Foobar {
        test
      }
      """;
      final doc2 = """
      type Query {
        test: String
      }
      query Foobar {
        test
        __typename
      }
      """;
      testTransform(config, doc1, doc2);
    });
    test("will not add typename", () {
      final config = GraphQLCodegenConfig(addTypename: false);
      final doc1 = """
      type Query {
        test: String
      }
      query Foobar {
        test
      }
      """;

      testTransform(config, doc1, doc1);
    });
    test("will exclude query", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['query'],
      );
      final doc1 = """
      type Query {
        test: String
      }
      query Foobar {
        test
      }
      """;

      testTransform(config, doc1, doc1);
    });
    test("will exclude subscription", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['subscription'],
      );
      final doc1 = """
      type Subscription {
        test: String
      }
      subscription Foobar {
        test
      }
      """;

      testTransform(config, doc1, doc1);
    });
    test("will exclude mutation", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['mutation'],
      );
      final doc1 = """
      type Mutation {
        test: String
      }
      mutation Foobar {
        test
      }
      """;

      testTransform(config, doc1, doc1);
    });
    test("will exclude named operation", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['Foobar'],
      );
      final doc1 = """
      type Mutation {
        test: String
      }
      mutation Foobar {
        test
      }
      """;

      testTransform(config, doc1, doc1);
    });

    test("will exclude sub selection", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['Foobar.test'],
      );
      final doc1 = """
      query Foobar {
        test {
          nested_test
        }
      }
      """;
      final doc2 = """
      query Foobar {
        test {
          nested_test
        }
        __typename
      }
      """;

      testTransform(config, doc1, doc2);
    });
    test("will exclude wild card", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['Foobar.*.nested_test'],
      );
      final doc1 = """
      query Foobar {
        test {
          nested_test {
            lol
          }
        }
        test_2 {
          nested_test {
            lol
          }
          ntested_test_2 {
            foo
          }
        }
        __typename
        }
      """;
      final doc2 = """
      query Foobar {
        test {
          nested_test {
            lol
          }
          __typename
        }
        test_2 {
          nested_test {
            lol
          }
          ntested_test_2 {
            foo
            __typename
          }
          __typename
        }
        __typename
      }
      """;

      testTransform(config, doc1, doc2);
    });
    test("will exclude double wild card", () {
      final config = GraphQLCodegenConfig(
        addTypenameExcludedPaths: ['Foobar.**.lol'],
      );
      final doc1 = """
      query Foobar {
        lol {
          ok
        }
        test {
          nested_test {
            lol {
              ok
            }
          }
        }
        test_2 {
          nested_test {
            lol {
              ok
            }
          }
          ntested_test_2 {
            foo
          }
        }
        }
      """;
      final doc2 = """
      query Foobar {
        lol {
          ok
        }
        test {
          nested_test {
            lol {
              ok
            }
            __typename
          }
          __typename
        }
        test_2 {
          nested_test {
            lol {
              ok
            }
            __typename
          }
          ntested_test_2 {
            foo
            __typename
          }
          __typename
        }
        __typename
      }
      """;

      testTransform(config, doc1, doc2);
    });
  });
}
