import 'package:gql/ast.dart';

const kDefaultDepreactionReason = 'No longer supported';

String? extractDeprecatedReason(List<DirectiveNode> directives) {
  final directive = directives.whereType<DirectiveNode?>().firstWhere(
    (e) => e?.name.value == 'deprecated',
    orElse: () => null,
  );
  if (directive == null) {
    return null;
  }
  final reason = directive.arguments.whereType<ArgumentNode?>().firstWhere(
    (e) => e?.name.value == 'reason',
    orElse: () => null,
  );
  if (reason == null) {
    return kDefaultDepreactionReason;
  }
  final value = reason.value;
  if (value is StringValueNode) {
    return value.value;
  }
  return kDefaultDepreactionReason;
}
