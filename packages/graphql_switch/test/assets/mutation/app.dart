import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'switch.dart';

class IncrementCounterApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final result = useMutation$IncrementCounter(
      graphql(
        r"""
        mutation IncrementCounter($step: Int!) {
          counter: incrementCounter(step: $step)
        }
        """,
      ),
    );
    return ElevatedButton(
      onPressed: result.isLoading
          ? null
          : () {
              result.commit(
                variables: Variables$Mutation$IncrementCounter(
                  (vs) => vs(step: 1),
                ),
              );
            },
      child: Text('Increment counter'),
    );
  }
}
