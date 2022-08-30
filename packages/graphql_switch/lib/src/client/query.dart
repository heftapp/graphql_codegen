import 'package:equatable/equatable.dart';
import 'package:graphql_switch/graphql_switch.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_switch/src/client/logger.dart';
import 'package:graphql_switch/src/client/mutation.dart';

class QueryResult<TResult> extends Equatable {
  final TResult? data;
  final bool isLoading;

  QueryResult({
    required this.data,
    required this.isLoading,
  });

  QueryResult<TNewResult> parseData<TNewResult>(
    TNewResult Function(TResult) parser,
  ) {
    final data = this.data;
    return QueryResult(
      data: data == null ? null : parser(data),
      isLoading: isLoading,
    );
  }

  @override
  List<Object?> get props => [data, isLoading];
}

typedef ParserFn<TResult> = TResult Function(Map<String, dynamic> data);

QueryResult<TResult> useQuery<TResult>(
  String documentReference,
  ParserFn<TResult> parserFn,
  QueryOptions? options,
  Input? variables,
) {
  final context = useContext();
  final streamWrapper = useMemoized(() {
    logger.d('Starting query ${documentReference}');
    final client = InitializeResult.of(context)!;
    return client.query(
      documentReference,
      variables?.toJson() ?? const {},
      options,
    );
  }, [documentReference, options, variables]);

  useEffect(() {
    return streamWrapper.dispose;
  }, [streamWrapper]);

  final stream = useMemoized(() async* {
    await for (final msg in streamWrapper.stream) {
      yield msg.parseData(parserFn);
    }
  }, [streamWrapper, parserFn]);

  final snapshot = useStream(
    stream,
    initialData: QueryResult<TResult>(
      data: null,
      isLoading: true,
    ),
  );

  return snapshot.data!;
}

enum FetchPolicy {
  storeAndNetwork(graphql.FetchPolicy.cacheAndNetwork),
  storeOrNetwork(graphql.FetchPolicy.cacheFirst),
  networkOnly(graphql.FetchPolicy.networkOnly),
  storeOnly(graphql.FetchPolicy.cacheOnly);

  const FetchPolicy(this.graphqlFetchPolicy);

  final graphql.FetchPolicy graphqlFetchPolicy;
}

class QueryOptions {
  final FetchPolicy fetchPolicy;

  QueryOptions({
    this.fetchPolicy = FetchPolicy.storeOrNetwork,
  });
}
