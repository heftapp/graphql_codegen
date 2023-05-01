import 'document.graphql.dart';

void printWithWhen(Query$Query$u? union) {
  union?.when(
    tA: (tA) => print("tA"),
    tB: (tB) => print("tB"),
    orElse: () => print("orElse"),
  );
}

void returnAndPrintWithWhen(Query$Query$u? union) {
  final result = union?.when(
    tA: (tA) => "tA",
    tB: (tB) => "tB",
    orElse: () => "orElse",
  );
  print(result);
}

void printAllWithMaybeWhen(Query$Query$u? union) {
  union?.maybeWhen(
    tA: (tA) => print("tA"),
    tB: (tB) => print("tB"),
    orElse: () => print("orElse"),
  );
}

void printSomeWithMaybeWhen(Query$Query$u? union) {
  union?.maybeWhen(
    tA: (tA) => print("tA"),
    orElse: () => print("tB, orElse"),
  );
}

void returnAndPrintWithMaybeWhen(Query$Query$u? union) {
  final result = union?.maybeWhen(
    tA: (tA) => "tA",
    orElse: () => "tB, orElse",
  );
  print(result);
}

void printQuery(Query$Query q) {
  printWithWhen(q.u);
  returnAndPrintWithWhen(q.u);
  printAllWithMaybeWhen(q.u);
  printSomeWithMaybeWhen(q.u);
  returnAndPrintWithMaybeWhen(q.u);
}
