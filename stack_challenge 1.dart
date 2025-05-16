void reverseList(List<dynamic> list) {
  Stack<dynamic> stack = Stack();

  // Push all items to the stack
  for (var item in list) {
    stack.push(item);
  }

  // Print items in reverse order
  while (!stack.isEmpty()) {
    print(stack.pop());
  }
}

class Stack<T> {
  List<T> _elements = [];

  void push(T item) => _elements.add(item);
  T pop() => _elements.removeLast();
  bool isEmpty() => _elements.isEmpty;
}

// Example usage
void main() {
  List<int> list = [1, 2, 3, 4, 5];
  print("Original List: $list");
  print("Reversed List:");
  reverseList(list);
}
