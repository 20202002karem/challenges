import 'LinkedList.dart';

void printReverse(Node? head) {
  if (head == null) return;
  printReverse(head.next);
  print('${head.data}');
}
