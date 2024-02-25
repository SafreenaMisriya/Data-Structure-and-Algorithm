class Node {
  int? data;
  Node? next;
  Node(this.data);

}
class linked{
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
  void delete_first(){
   if(head!=null){
    head=head?.next;;
   }
  }
  void delete_end(){
    Node? temp=head;
    while(temp?.next?.next!=null){
      temp=temp?.next;
    }
    temp?.next=null;
  }
   void deletevalue(int x){
    if(head ==null){
      print('Empty ');
      return;
    }
    
    if(head?.data== x){
      head=head?.next ;
      return;
    }
    Node? temp = head;
    while(temp?.next!= null){
      if(x==temp?.next?.data){
        break;
      }
      temp=temp?.next;
    }
     if(temp?.next==null){
         print('The x is not present');
    }else{
      temp?.next = temp.next?.next;
    }
  }
}
void main(){
  linked l1 = linked();
  l1.addvalue_first(11);
  l1.addvalue_first(12);
  l1.addvalue_first(13);
  l1.addvalue_first(14);
  l1.addvalue_first(15);
  l1.addvalue_first(16);
  l1.addvalue_first(17);
  l1.delete_first();
  l1.delete_end();
  l1.deletevalue(14);
  l1.travese();
}