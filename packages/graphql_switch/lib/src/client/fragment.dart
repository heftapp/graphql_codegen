abstract class FragmentKey {
  Map<String, dynamic> get $rawData;
}

TResult useFragment<TResult>(
  String documentReference,
  FragmentKey key,
  TResult Function(Map<String, dynamic> data) parser,
) {
  return parser(key.$rawData);
}

TResult? useMaybeFragment<TResult>(
  String documentReference,
  FragmentKey? key,
  TResult Function(Map<String, dynamic> data) parser,
) {
  return key == null ? null : parser(key.$rawData);
}

Iterable<TResult> useFragments<TResult>(
  String documentReference,
  Iterable<FragmentKey> keys,
  TResult Function(Map<String, dynamic> data) parser,
) {
  return keys.map((k) => parser(k.$rawData));
}
