import 'main.graphql.dart';

final data = {
  'fetch_person': {
    'nickname': null,
    'name': 'Christian Budde Christensen',
    'parents': [
      {
        'name': 'Max Budde Christensen',
        'nickname': 'Maxi',
      },
      {
        'name': 'Bettina Budde Christensen',
        'nickname': null,
      },
    ],
    'children': null,
  },
};

main() {
  final parsed = QueryFetchPerson.fromJson(data);
  print(parsed.fetchPerson?.name);
}
