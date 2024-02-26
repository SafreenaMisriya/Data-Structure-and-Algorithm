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
      stack.add(parenthesisMap[current]!);
    } else {
      if (stack.isEmpty) {
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
  print(isValidparenthesis(example1) ? 'VALID' : 'INVALID'); 
  print(isValidparenthesis(example2) ? 'VALID' : 'INVALID'); 
  print(isValidparenthesis(example3) ? 'VALID' : 'INVALID'); 
}
