import 'dart:convert';

import 'package:graphql_codegen_config/config.dart';
import 'package:test/test.dart';

void main() {
  group("Parses", () {
    test("It parses graphql client", () {
      const config = {
        "clients": ["graphql"]
      };
      expect(
        GraphQLCodegenConfig.fromJson(
          jsonDecode(jsonEncode(config)) as Map<String, dynamic>,
        ).toJson(),
        equals(
          GraphQLCodegenConfig(
            clients: {GraphQLCodegenConfigClient.graphql},
          ).toJson(),
        ),
      );
    });
  });
}
