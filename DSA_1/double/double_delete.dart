class Node {
  int? data;
  Node? next;
  Node? prev;
  Node (this.data);
}
class doublelinked {
  Node? head;

  void addvalue(int data){
    Node n1=Node(data);
    if(head==null){
      head= n1;
    }else{
       n1.next=head;
       head?.prev=n1;
       head=n1;
    }
  }
  void deletebegin(){
    if(head!=null){
      head=head?.next;
      head?.next?.prev=null;
    }
  }
  void deleteend(){
    Node? temp= head;
    while (temp?.next!=null) {
      temp=temp?.next;
    }
    temp?.prev?.next=null;
  }
  void deletevalue(int x){
    Node? temp= head;
   while (temp?.next!=null) {
     if(temp?.data==x){
      break;
     }
     temp =temp?.next;
   }
   temp?.next?.prev=temp.prev;
   temp?.prev?.next=temp.next;
  }
    void display(){
    if(head ==null){
      print('Empty');
      return;
    }
    Node? temp=head;
    while (temp!=null) {
      print('${temp.data}');
      temp=temp.next;
      
    }
  }
}
void main(){
  doublelinked d1=doublelinked();
  d1.addvalue(11);
  d1.addvalue(22);
  d1.addvalue(33);
  d1.addvalue(44);
  d1.addvalue(55);
  d1.deletevalue(33);
  d1.display();
}