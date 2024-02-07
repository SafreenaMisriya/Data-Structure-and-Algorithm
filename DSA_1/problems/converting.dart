class Node {
  late int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

 arrayToLinkedList(List<int> arr) {
    if (arr.isEmpty) {
      return null;
    }
    head = Node(arr[0]);
    var n = head;
    for (var data in arr.sublist(1)) {
      var newNode = Node(data);
      n?.next = newNode;
      n = newNode;
    }
    return null;
  }

  void traversal() {
    var n = head;
    while (n != null) {
      print('${n.data}, ');
      n = n.next;
    }
  }
}

void main() {
  var arr = [10, 11, 12, 13, 15];

  var l1 = LinkedList();
  l1.arrayToLinkedList(arr); // Create the linked list from the array
  l1.traversal(); // Print the elements of the linked list
}