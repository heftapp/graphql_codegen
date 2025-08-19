import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'package:gql/language.dart';

import 'document.graphql.dart';

main() async {
  final url = Uri(
    scheme: 'http',
    host: 'localhost',
    port: 8080,
    path: '/graphql',
  );
  final response = await http.post(
    url,
    body: {
      'query': printNode(documentNodeQueryMediaMinimal),
      'variables': Variables$Query$MediaMinimal(id: 1).toJson(),
    },
  );
  final responseJson = json.decode(response.body);
  return Query$MediaMinimal.fromJson(
    responseJson['data'] as Map<String, dynamic>,
  );
}
