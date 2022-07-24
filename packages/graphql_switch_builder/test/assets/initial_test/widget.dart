import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_switch/graphql_switch.dart';

class MyWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final result = useQuery$MyWidgetQuery(graphql(
      """
          query MyWidgetQuery {
            name 
          }
      """,
    ));
    return Text(result.data?.name ?? 'Fetching...');
  }
}
