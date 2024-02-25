class Node {
  int? data;
  Node? next;
  Node? prev;
  Node (this.data);
}
class doublelinked {
  Node? head;
  Node? tail;

  void addvalue(int data){
    Node n1=Node(data);
    if(head==null){
      head= n1;
      tail=n1;
    }else{
       n1.next=head;
       head?.prev=n1;
       head=n1;
    }


  }
  void addend(int data){
    Node n1=Node(data);
    Node? temp= head;
    if(head==null){
     head =n1;
    }
    while (temp?.next!=null) {
      temp =temp?.next;
    }
    temp?.next=n1;
    n1.prev=temp;

  }
  void insert(int data,int x){
    
    Node? temp = head;
    while (temp!=null ) {
      if(x==temp.data){
        break;
      }
      temp=temp.next;
      
    }
    Node n1=Node(data);
    n1.next=temp?.next;
    n1.prev=temp;
    temp?.next?.prev=n1;
    temp?.next=n1;

    
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
  void reverse(){
    Node? temp= tail;
    while (temp!=null) {
      print('${temp.data}');
      temp=temp.prev;
    }
  }
  
}
void main(){
  doublelinked d1 =doublelinked();
  d1.addvalue(11);
  d1.addvalue(12);
  d1.addvalue(13);
  d1.addvalue(14);
  d1.addend(99);
  d1.display();
  print('\n');
  d1.reverse();
}