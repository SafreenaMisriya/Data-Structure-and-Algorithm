class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class Singlelinked {
  Node? head;
  Node? tail;
  void addvalue(int data){
    Node newnode =Node(data);
    if(head==null){
      head = newnode;
    }else{
      tail?.next =newnode;
      
    }
    tail= newnode;
  }
  void deletevalue(int x){
    if(head==x){
      head?.next= head;
      head?.prev=null;
    }
    Node? temp= head;
    while (temp?.next!=null) {
      if(temp?.data==x){
        break;
      }
      temp=temp?.next;
    }
    temp?.prev?.next=temp.next;
    temp?.next?.prev=temp.prev;
  }
}