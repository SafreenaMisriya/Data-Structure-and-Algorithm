class Node  {
  int? data;
  Node? next;
  Node(this.data);
}
class Stack {
  Node? top;
  void display(){
    Node? current = top;
    while (current!=null) {
      print(current.data);
      current=current.next;
    }
  }
  void push(int data){
    Node newnode =Node(data);
      newnode.next=top;
      top= newnode;
    
  }
  void pop(){
    if(top==null){
      print('Stack underflow');
      return;
    }
    top=top?.next;
  }
  void delete(int x){
    Node? temp=top;
   while (temp?.next!=null) {
     if(x==temp?.next?.data){
      break;
     }
     temp=temp?.next;
   }
   temp?.next=temp.next?.next;
  }
   
}
void main(){
  Stack s =Stack();
  s.push(22);
  s.push(35);
  s.push(88);
  s.push(96);
  s.delete(35);
  s.display();
}