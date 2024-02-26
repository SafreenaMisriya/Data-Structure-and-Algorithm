List<int> removeDuplicates(List<int> arr, [int index = 0]) {
  if (index == arr.length - 1) {
   
    return [arr[index]];
  }

  int currentElement = arr[index];
  print(currentElement);
  List<int> remainingArray = removeDuplicates(arr, index + 1);
  if (!remainingArray.contains(currentElement)) {
    remainingArray.add(currentElement);
  }

  return remainingArray;
}

void main() {
  List<int> inputArray = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  List<int> resultArray = removeDuplicates(inputArray);

  print("Original Array: $inputArray");
  print("Array without Duplicates: $resultArray");
}
