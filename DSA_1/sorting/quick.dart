void main() {
  List<int> list = [12,  22, 5, 6, 14, 10];
  quicksort(list, 0, list.length - 1);
  print(list);
}

int partition(List<int> list, int lb, int ub) {
  int pivot = list[lb];
  int start = lb;
  int end = ub;

  while (start < end) {
    while (list[start] <= pivot && start < ub) {
      start++;
    }
    while (list[end] > pivot && end > lb) {
      end--;
    }
    if (start < end) {
      // Swap elements at start and end
      int temp = list[start];
      list[start] = list[end];
      list[end] = temp;
    }
  }

  // Swap pivot with element at end
  int temp = list[lb];
  list[lb] = list[end];
  list[end] = temp;

  return end;
}

void quicksort(List<int> list, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(list, lb, ub);
    quicksort(list, lb, loc - 1);
    quicksort(list, loc + 1, ub);
  }
}
