class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class linkedlist {
  Node? head;
  Node? tail;
  void addfirst(int n) {
    Node n1 = Node(n);
    if (head == null) {
      head = n1;
    } else {
      tail!.next = n1;
    }
    tail = n1;
  }

  traversal() {
    if (head == null) {
      print('No data');
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
  addend(int data){
    Node? temp= head;
    Node n1=Node(data);
    while (temp!.next!=null) {
       temp=temp.next;
    }
    temp.next=n1;
  }
}

void main() {
  linkedlist()
    ..addfirst(12)
    ..addfirst(16)
    ..addfirst(17)
    ..addend(45)
    ..traversal();
}
