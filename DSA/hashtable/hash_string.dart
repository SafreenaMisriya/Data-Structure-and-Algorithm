void main() {
  List<String> nums = ['a','b','c','d','e','a','c'];
  Map<String, int> count = {};
  nums.forEach((element) {
    if (count.containsKey(element)) {
      count[element] = count[element]! + 1;
    } else {
      count[element] = 1;
    }
  });
  count.forEach((key, value) {
    print("$key occured $value times");
  });

}