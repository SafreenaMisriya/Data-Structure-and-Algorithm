class Node {
  int? data;
  Node? next;
  Node(this.data);
}
class Queue {
  Node? front;
  Node? rear;
  void enqueue(int data){
    Node newnode=Node(data);
  if(front==null){
    front=rear= newnode;
  }else{
    rear?.next=newnode;
    rear=newnode;
  }
  }
  void dequeue(){
    if(front==null){
      print('Empty');
      return;
    }
    front=front?.next;
    if(front==null){
      rear = null;
    }
    
  }
  void display(){
    if(front==null){
      print('Empty');
    }
    Node? current= front;
   while (current!=null) {
     print(current.data);
     current=current.next;
   }
  }
}
void main(){
  Queue q1=Queue();
  q1.enqueue(12);
  q1.enqueue(45);
  q1.enqueue(34);
  q1.enqueue(98);
  q1.dequeue();
  q1.display();
}