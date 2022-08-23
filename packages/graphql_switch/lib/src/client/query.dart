import 'package:graphql_switch/graphql_switch.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QueryResult<TResult> {
  final TResult? data;
  final bool isInFlight;

  QueryResult({
    required this.data,
    required this.isInFlight,
  });

  QueryResult<TNewResult> parseData<TNewResult>(
    TNewResult Function(TResult) parser,
  ) {
    final data = this.data;
    return QueryResult(
      data: data == null ? null : parser(data),
      isInFlight: isInFlight,
    );
  }
}

QueryResult<TResult> useQuery<TResult>(
  String documentReference,
  TResult Function(Map<String, dynamic> data) parser,
  QueryOptions? options,
  Input? variables,
) {
  final context = useContext();
  final streamWrapper = useMemoized(() {
    print('Starting query ${documentReference}');
    final client = InitializeResult.of(context)!;
    print('Has client');
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
      yield msg.parseData(parser);
    }
  }, [streamWrapper, parser]);

  final snapshot = useStream(stream);

  return snapshot.data ??
      QueryResult<TResult>(
        data: null,
        isInFlight: true,
      );
}

abstract class QueryOptions {}
