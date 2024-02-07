
class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
  
}
class linked {
  Node? head;
  Node? tail;
   void display(){
    if(head==null){
      return;
    }
    Node? temp= head;
    while (temp!=null) {
      print('${temp.data}');
      temp=temp.next;
    }

   }
  void adding(int data){
    Node n1= Node(data);
    if(head==null){
      head=n1;
      }else{
      tail?.next =n1;
      n1.prev= tail;
    }
    tail=n1;
  }
  void addend(int data){
    Node n1=Node(data);
   Node? temp =head;
    while (temp?.next!=null) {
      temp= temp?.next;
    }
    n1.prev=temp?.next;
    temp?.next=n1;
    
  }
  void displayreverse(){
    Node? temp =tail;
    while(temp !=null){
      print('${temp.data }');
       temp=temp.prev;
    }
  }
  
}
void main(){
  linked l1 =linked();
   l1.adding(90);
   l1.adding(80);
   l1.adding(66);
   l1.adding(77);
   l1.addend(88);
   l1.display();
   print('\n');
   l1.displayreverse();
}