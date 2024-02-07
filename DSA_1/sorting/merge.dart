void main() {
  List<int> list = [4,8,9,6];
  mergeSort(list, 0, list.length - 1);
  print("Sorted array: $list");
}

void mergeSort(List<int> l1, int lb, int ub) {
  if (lb < ub) {
    int mid = (lb + ub) ~/ 2;
    mergeSort(l1, lb, mid);
    mergeSort(l1, mid + 1, ub);
    merge(l1, lb, mid, ub);
  }
}

void merge(List<int> l1, int lb, int mid, int ub) {
  int i = lb;
  int j = mid + 1;
  int k = 0;
  List<int> b = List<int>.filled(l1.length, 0);
  while (i <= mid && j <= ub) {
    if (l1[i] <= l1[j]) {
      b[k] = l1[i];
      i++;
      
    } else {
      b[k] = l1[j];
      j++; 
    }
    k++;
  }

  while (i <= mid) {
    b[k] = l1[i];
    i++;
    k++;
  }

  while (j <= ub) {
    b[k] = l1[j];
    j++;
    k++;
  }

  for (int x = lb; x <= ub; x++) {
    l1[x] = b[x-lb];
  }
}
