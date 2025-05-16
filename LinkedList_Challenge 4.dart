import 'LinkedList.dart';

Node? removeAllOccurrences(Node? head, int value) {
  // لنبدأ بروصيلة وهمية لمساعدة الحذف بسهولة
  Node dummy = Node(0);
  dummy.next = head;
  Node? current = dummy;

  while (current?.next != null) {
    if (current?.next!.data == value) {
      current?.next = current.next!.next; // حذف العقدة
    } else {
      current = current?.next!;
    }
  }
  return dummy.next; // رأس القائمة الجديد
}
