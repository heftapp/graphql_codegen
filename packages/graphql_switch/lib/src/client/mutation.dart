import 'package:equatable/equatable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_switch/graphql_switch.dart';
import 'package:graphql_switch/src/client/client.dart';
import 'package:graphql_switch/src/client/input.dart';
import 'package:graphql_switch/src/client/query.dart';

class CommitFnResult {}

class OnCompleteResult<TResult> {
  final TResult? data;

  OnCompleteResult(this.data);

  OnCompleteResult<TNewResult> parseData<TNewResult>(
    TNewResult Function(TResult) parser,
  ) {
    final data = this.data;
    return OnCompleteResult(
      data == null ? null : parser(data),
    );
  }
}

typedef OnCompletedFn<TResult> = void Function(
  OnCompleteResult<TResult> result,
);
typedef CommitFn<TInput extends Input?, TResult> = CommitFnResult Function({
  TInput variables,
  OnCompletedFn<TResult>? onCompleted,
});

typedef CommitWithVariablesFn<TInput extends Input, TResult> = CommitFnResult
    Function({
  required TInput variables,
  OnCompletedFn<TResult>? onCompleted,
});

class MutationResult<TInput extends Input?, TResult> extends Equatable {
  final CommitFn<TInput, TResult> commit;
  final bool isLoading;

  MutationResult({
    required this.commit,
    required this.isLoading,
  });

  @override
  List<Object?> get props => [commit, isLoading];
}

class MutationResultWithRequiredVariables<TInput extends Input, TResult>
    extends Equatable {
  final CommitWithVariablesFn<TInput, TResult> commit;
  final bool isLoading;

  MutationResultWithRequiredVariables({
    required this.commit,
    required this.isLoading,
  });

  @override
  List<Object?> get props => [commit, isLoading];
}

MutationResult<TInput, TResult> useMutation<TInput extends Input?, TResult>(
  String documentRefernce,
  ParserFn<TResult> parserFn,
) {
  final context = useContext();
  final client = InitializeResult.of(context)!;
  final isLoading = useState(false);
  final loadingRefs = useRef(Set<Object>());
  final commit = useCallback<CommitFn<TInput, TResult>>(
    ({
      Input? variables,
      OnCompletedFn<TResult>? onCompleted,
    }) {
      final o = Object();
      loadingRefs.value.add(o);
      isLoading.value = loadingRefs.value.isNotEmpty;
      client.mutate(
        key: documentRefernce,
        variables: variables?.toJson() ?? const {},
        onCompleted: (result) {
          loadingRefs.value.remove(o);
          isLoading.value = loadingRefs.value.isNotEmpty;
          onCompleted?.call(
            result.parseData(parserFn),
          );
        },
      );
      return CommitFnResult();
    },
    [client, documentRefernce, parserFn],
  );

  return MutationResult(
    commit: commit,
    isLoading: isLoading.value,
  );
}

MutationResultWithRequiredVariables<TInput, TResult>
    useMutationWithRequiredVariables<TInput extends Input, TResult>(
  String documentRefernce,
  ParserFn<TResult> parserFn,
) {
  final mutationResult = useMutation(
    documentRefernce,
    parserFn,
  );

  final commit = useCallback<CommitWithVariablesFn<TInput, TResult>>(
    ({required variables, onCompleted}) {
      return mutationResult.commit(
        variables: variables,
        onCompleted: onCompleted,
      );
    },
    [mutationResult.commit],
  );

  return MutationResultWithRequiredVariables(
    commit: commit,
    isLoading: mutationResult.isLoading,
  );
}
