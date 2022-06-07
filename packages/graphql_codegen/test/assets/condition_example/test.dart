import 'fragments.graphql.dart';
import 'query.graphql.dart';

void printTimeCondition(Fragment$TimeCondition condition) {
  print("TIME");
}

void printAndCondition(Fragment$AndCondition condition) {
  printCondition(condition.left);
  print("AND");
  printCondition(condition.right);
}

void printCondition(Fragment$Condition condition) {
  if (condition is Fragment$TimeCondition) printTimeCondition(condition);
  if (condition is Fragment$AndCondition) printAndCondition(condition);
}

void printCompositeCondition(Fragment$CompositeCondition condition) {
  printCondition(condition);
}

void printQuery(Query$FetchShouldRender q) {
  printCompositeCondition(q.shouldRender);
}
