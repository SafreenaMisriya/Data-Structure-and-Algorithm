class Node {
  int? data;
  Node? next;
  Node(this.data);
  
}
class linked {
  Node? head;
  Node? tail;
  void addvalue(int data){
  Node n1= Node(data);
  if(head ==null){
    head= n1;
  }else{
    tail?.next = n1;
  }
  tail =n1;
}
void display(){
  if(head ==null){
    return;
  }
    Node? temp = head;
    while (temp!=null) {
      print('${temp.data}');
      temp= temp.next;
      
    }
} 
void delete(int data){
  Node? temp = head,prev = null;
  if(temp != null && temp.data == data ){
    head = temp.next;
    return;
  }
  while (temp!=null && temp.data !=data) {
    prev = temp;
    temp = temp.next; 
  }
  if (temp ==null) {
    return ;
  }
  if(temp == tail){
    tail=prev;
    prev!.next=null;
  }
  prev!.next =temp.next;
  
}

}
void main(){
  linked l1= linked();
  l1.addvalue(49);
  l1.addvalue(09);
  l1.addvalue(48);
  l1.display();
  l1.delete(48);
  l1.display();
}