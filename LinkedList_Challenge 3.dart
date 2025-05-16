import 'LinkedList.dart';

Node? reverseList(Node? head) {
  Node? prev = null;
  Node? current = head;

  while (current != null) {
    Node? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }
  return prev; // الجديد هو رأس القائمة المعكوسة
}
