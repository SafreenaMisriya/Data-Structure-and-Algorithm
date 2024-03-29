class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}
class bst {
  Node? root;
  insert(int data){
    root=inseting(root,data);
  }
  
   inseting(Node? root, int data) {
    Node? node=root;
    if(root ==null){
      return Node(data);
    }
    if(data <node!.data){
     node.left=inseting(node.left, data);
    }else if(data > node.data){
      node.right=inseting(root.right, data);
    }
    return node;
   }
   inordertraversal(Node? node,int sum){
 
    if(node !=null){
      sum=inordertraversal(node.left,sum);
      sum +=node.data;
      sum=inordertraversal(node.right, sum);
    }
    return sum;
   }
}
void main(){
  bst b =bst();
  b.insert(2);
   b.insert(3);
    b.insert(4);
     b.insert(6);
      b.insert(5);
      print(b.inordertraversal(b.root, 0));
}