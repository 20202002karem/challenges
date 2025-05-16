import 'challenge 1.dart';

bool areParenthesesBalanced(String input) {
  Stack<String> stack = Stack();

  for (var char in input.split('')) {
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty()) {
        return false; // Unmatched closing parenthesis
      }
      stack.pop(); // Match found
    }
  }

  return stack.isEmpty();
}

// Example usage
void main() {
  String input = "((()))";
  print("Are the parentheses balanced? ${areParenthesesBalanced(input)}");
}
