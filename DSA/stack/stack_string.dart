String reverseString(String inputString) {
  List<String> stack = [];
  for (String char in inputString.split('')) {
    stack.add(char);
  }
  String reversedString = '';
  while (stack.isNotEmpty) {
    reversedString += stack.removeLast();
  }

  return reversedString;
}

void main() {
  String inputString = 'misriya';
  print(reverseString(inputString));
}