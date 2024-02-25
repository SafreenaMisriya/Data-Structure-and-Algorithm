bool isValidparenthesis(String s) {
  Map<String, String> parenthesisMap = {
    "(": ")",
    "{": "}",
    "[": "]",
  };
  List<String > stack = [];
  for (int i =  0; i < s.length; i++) {
    String current = s[i];
    if (parenthesisMap.containsKey(current)) {
      // Push the expected closing parenthesis onto the stack
      stack.add(parenthesisMap[current]!);
    } else {
      if (stack.isEmpty) {
        // If the stack is empty and we encounter a closing parenthesis, it's invalid
        return false;
      }
      String topmost = stack.removeLast();
      if (topmost != current) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  String example1 = "[{()}]";
  String example2 = "[{()}}";
  String example3 = "[({}]]";
  print(isValidparenthesis(example1) ? 'VALID' : 'INVALID'); // Expected: VALID
  print(isValidparenthesis(example2) ? 'VALID' : 'INVALID'); // Expected: INVALID
  print(isValidparenthesis(example3) ? 'VALID' : 'INVALID'); // Expected: INVALID
}
