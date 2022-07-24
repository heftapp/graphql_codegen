import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';

class QueryResult<TData extends Object> extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

QueryResult<TData> useQuery<TData extends Object>(
  DocumentNode document,
  Map<String, dynamic> variables,
) {
  return QueryResult();
}
