class Node {
  int? data;
  Node? next;
  Node(this.data);
}
class linkedlist{
  Node? head;
  Node? tail;
  void addvalue_first(int data){
    Node n1= Node(data);
    if(head==null){
      head = n1;
    }else{
      tail?.next=n1;
    }
    tail=n1;
  }
  void travese(){
    if(head==null){
      print('The Node is empty');
    }
    Node? temp= head;
    while (temp!=null) {
      print('${temp.data}');
      temp=temp.next;
    }
  }
  void add_end(int data){
    Node n1=Node(data);
    Node? temp=head;
    while (temp?.next!=null) {
      temp=temp?.next;
    }
  
    temp?.next =n1;
    
  }
  void insert(int data,int x){
    Node n1 =Node(data);
    while (head==null) {
      print('The Node is Empty');
    }
    Node? temp=head;
    while (temp!=null) {
      if(temp.data==x){
        break;
      }
      temp=temp.next;
    }
   n1.next=temp?.next;
   temp?.next=n1;
   
  }
  
}
void main(){
  linkedlist l1=linkedlist();
  l1.addvalue_first(31);
  l1.addvalue_first(32);
  l1.addvalue_first(33);
  l1.addvalue_first(35);
  l1.addvalue_first(36);
  l1.addvalue_first(37);
  l1.add_end(38);
  l1.insert(34, 33);
  l1.travese();
}