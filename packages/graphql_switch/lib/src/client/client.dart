import 'dart:async';
import 'dart:isolate';

import 'package:flutter/widgets.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_switch/src/client/query.dart';

enum OperationKind { mutation, query, subscription }

OperationKind _operationToOperationKind(OperationDefinitionNode op) {
  switch (op.type) {
    case OperationType.mutation:
      return OperationKind.mutation;
    case OperationType.query:
      return OperationKind.query;
    case OperationType.subscription:
      return OperationKind.subscription;
  }
}

class RequestParameters<TClientContext> {
  final TClientContext clientContext;
  final String text;
  final String name;
  final OperationKind operationKind;

  RequestParameters({
    required this.clientContext,
    required this.text,
    required this.name,
    required this.operationKind,
  });
}

typedef FetchFn<TClientContext extends Object?> = Future<Map<String, dynamic>>
    Function(
  RequestParameters<TClientContext> requestParameters,
  Map<String, dynamic> variables,
);

class _Message {}

class _InitializeMessage implements _Message {
  final SendPort mainToIsolate;

  _InitializeMessage(this.mainToIsolate);
}

class _QueryMessage implements _Message {
  final int id;
  final SendPort isolateToMain;
  final QueryOptions? options;
  final String key;
  final Map<String, dynamic> variables;

  _QueryMessage({
    required this.id,
    required this.isolateToMain,
    required this.options,
    required this.key,
    required this.variables,
  });
}

class _StopQueryMessage implements _Message {
  final int id;

  _StopQueryMessage(this.id);
}

class _FetchLink<TClientContext> extends graphql.Link {
  final TClientContext clientContext;
  final FetchFn<TClientContext> fetch;

  _FetchLink(this.fetch, this.clientContext);

  @override
  Stream<graphql.Response> request(
    graphql.Request request, [
    graphql.NextLink? forward,
  ]) async* {
    final opDoc = request.operation.document.definitions
        .whereType<OperationDefinitionNode>()
        .first;
    final response = await fetch(
      RequestParameters(
        clientContext: clientContext,
        text: printNode(request.operation.document),
        name: request.operation.operationName ?? opDoc.name!.value,
        operationKind: _operationToOperationKind(opDoc),
      ),
      request.variables,
    );
    const responseParser = graphql.ResponseParser();
    yield responseParser.parseResponse(response);
  }
}

class ClientInitializer<TClientContext extends Object?> {
  final SendPort isolateToMain;
  final FetchFn<TClientContext> fetch;
  final TClientContext clientContext;
  late final graphql.GraphQLClient client;
  final Map<String, DocumentNode> operations = {};
  final Map<int, graphql.ObservableQuery<Object?>> queries = {};

  ClientInitializer({
    required this.clientContext,
    required this.isolateToMain,
    required this.fetch,
  });

  void _listen(Object? message) async {
    if (message is _QueryMessage) {
      print('Watching you');
      final observableQuery = client.watchQuery(
        graphql.WatchQueryOptions(
          fetchResults: true,
          document: operations[message.key]!,
          variables: message.variables,
          fetchPolicy: graphql.FetchPolicy.cacheAndNetwork,
        ),
      );
      queries[message.id] = observableQuery;
      final stream = observableQuery.stream;
      await for (final msg in stream) {
        message.isolateToMain.send(
          QueryResult(
            data: msg.data,
            isInFlight: msg.isLoading,
          ),
        );
      }
      print('Not watching you');
    }
    if (message is _StopQueryMessage) {
      queries[message.id]?.close();
      queries.remove(message.id);
    }
  }

  Future<void> setup() async {
    print('Setting up client');
    final mainToIsolate = ReceivePort();
    _sendToMain(_InitializeMessage(mainToIsolate.sendPort));
    client = graphql.GraphQLClient(
      link: _FetchLink<TClientContext>(fetch, clientContext),
      cache: graphql.GraphQLCache(store: graphql.InMemoryStore()),
    );
    mainToIsolate.listen(_listen);
  }

  void _sendToMain(_Message message) {
    isolateToMain.send(message);
  }

  void registerOperation(String key, DocumentNode documentNode) {
    print('Registering operation ${key}');
    operations[key] = documentNode;
  }
}

typedef Initializer = Future<void> Function(ClientInitializer);

class QueryStreamWrapper {
  final Stream<QueryResult<Map<String, dynamic>>> stream;
  final void Function() dispose;

  QueryStreamWrapper(this.stream, this.dispose);
}

class InitializeResult {
  static int queryIDCounter = 0;
  static InitializeResult? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<_InheritedSwitchClient>()
      ?.initializeResult;

  final ReceivePort isolateToMain;
  late final SendPort mainToIsolate;

  InitializeResult(this.isolateToMain);

  void _listen(Object? message, Completer<void> initializationCompleter) {
    if (message is _InitializeMessage) {
      print('Bi-lateral comms established');
      mainToIsolate = message.mainToIsolate;
      initializationCompleter.complete();
    }
  }

  QueryStreamWrapper query(
    String key,
    Map<String, dynamic> variables,
    QueryOptions? options,
  ) {
    print('Querying ${key}');
    final id = InitializeResult.queryIDCounter++;
    final isolateToMain = ReceivePort();
    mainToIsolate.send(
      _QueryMessage(
        id: id,
        isolateToMain: isolateToMain.sendPort,
        options: options,
        key: key,
        variables: variables,
      ),
    );
    return QueryStreamWrapper(
      () async* {
        await for (final message in isolateToMain) {
          if (message is QueryResult<Map<String, dynamic>>) {
            yield message;
          }
        }
      }(),
      () {
        mainToIsolate.send(_StopQueryMessage(id));
      },
    );
  }

  Future<void> setup() {
    final completer = Completer<void>();
    isolateToMain.listen((msg) => _listen(msg, completer));
    return completer.future;
  }
}

class _InheritedSwitchClient extends InheritedWidget {
  final InitializeResult initializeResult;

  _InheritedSwitchClient(Widget child, this.initializeResult)
      : super(child: child);

  @override
  bool updateShouldNotify(covariant _InheritedSwitchClient oldWidget) {
    return oldWidget.initializeResult != initializeResult;
  }
}

class InternalSwitchClient extends StatelessWidget {
  final InitializeResult initializeResult;
  final Widget child;
  InternalSwitchClient(Widget this.child, this.initializeResult, Key? key)
      : super(key: key);

  static Future<InitializeResult> initialize<TClientContext extends Object?>(
    Initializer initializer,
    FetchFn<TClientContext> fetch,
    TClientContext clientContext,
  ) async {
    print('Setting up main');
    final isolateToMain = ReceivePort();
    Isolate.spawn(
      initializer,
      ClientInitializer(
        clientContext: clientContext,
        isolateToMain: isolateToMain.sendPort,
        fetch: fetch,
      ),
    );
    final result = InitializeResult(isolateToMain);
    await result.setup();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedSwitchClient(child, initializeResult);
  }
}

const $undefined = const Object();
