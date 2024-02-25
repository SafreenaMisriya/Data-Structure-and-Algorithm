void main() {
  int count=0;
  Map<String, int> values = {
    'apple': 12,
    'Orange': 45,
    'blue': 35,
    'Grapes': 35,
    'Jack': 12,
  };
values.forEach((key, value) {
    if (value == 35) {
      count++;
    }
  });

print(count);
}
