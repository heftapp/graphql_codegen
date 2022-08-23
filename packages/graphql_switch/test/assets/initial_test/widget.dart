import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_switch/graphql_switch.dart';
import './switch.dart';

Future<Map<String, dynamic>> fetch(
  RequestParameters<Object?> params,
  variables,
) async {
  return {};
}

void main() async {
  final result = await SwitchClient.initialize(
    fetch: fetch,
    clientContext: null,
  );

  runApp(SwitchClient(
    child: MyWidget(),
    initializeResult: result,
  ));
}

class MyWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final result = useQuery$MyWidgetQuery(
      graphql(
        r"""
          query MyWidgetQuery($question: String! $details: Details!) {
            name 
            child {
                name
                ...MyNestedWidget_person
            }
          }
        """,
      ),
      Variables$Query$MyWidgetQuery(
        (vs) => vs(
          details: Input$Details(
            (vs) => vs(name: 'Bob'),
          ),
          question: 'Q',
        ),
      ),
    );
    final child = result.data?.child;
    if (child is Query$MyWidgetQuery$child$$Person) {
      return MyNestedWidget(child);
    }
    return Text(result.data?.name ?? 'Fetching...');
  }
}

class MyNestedWidget extends HookWidget {
  final FragmentKey$MyNestedWidget_person? person;

  MyNestedWidget(this.person);

  @override
  Widget build(BuildContext context) {
    final result = useFragment$MyNestedWidget_person(
      graphql(r"""
      fragment MyNestedWidget_person on Person @switch(maybe: true) {
        name
        name2: name
        answer(question: $question)
        child {
          name
        }
      }
      """),
      person,
    );
    return Text(result?.name ?? result?.name2 ?? 'No name');
  }
}
