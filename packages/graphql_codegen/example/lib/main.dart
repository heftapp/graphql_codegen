import 'package:graphql/client.dart';

import 'main.graphql.dart';

void main() async {
  final client = GraphQLClient(
    link: HttpLink("https://example.com"),
    cache: GraphQLCache(store: InMemoryStore()),
  );
  final result = await client.query$FetchPerson(
    Options$Query$FetchPerson(
      variables: Variables$Query$FetchPerson(
        id: "id1",
      ),
    ),
  );
  final parased = result.parsedData;
  print(parased?.fetchPerson?.name);
}
