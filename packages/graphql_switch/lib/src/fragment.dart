import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';

abstract class FragmentKey<TData> {}

TData useFragment<TData extends Object>(
  DocumentNode document,
  FragmentKey<TData> key,
) {
  throw new UnimplementedError();
}

TData? useFragmentMaybe<TData extends Object>(
  DocumentNode document,
  FragmentKey<TData>? key,
) {
  throw new UnimplementedError();
}
