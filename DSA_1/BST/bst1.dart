

class Node {
  int data;
  Node? left,right=null;
  Node(this.data);
}
class bst {
  Node? root;
  insert(int data){
   root= inserting(root,data);
  }
  
   inserting(Node? node, int data) {
    if(node==null){
      return Node(data);
    }
     if(data <node.data){
      node.left=inserting(node.left, data);
    }else if(data > node.data){
      node.right=inserting(node.right, data);
    }
    return node;
   }
   search(int data){
    Node? currentnode=root;
   while (currentnode !=null) {
     if(data< currentnode.data){
      currentnode=currentnode.left;
     }else if(data > currentnode.data){
      currentnode=currentnode.right;
     }else{
      return true;
     }
   }
   return false;
   }
   inorder(Node? node){
    if(node !=null){
      inorder(node.left);
      print(node.data);
      inorder(node.right);
    }
   }
   preorder(Node ? node){
    if(node !=null){
      print(node.data);
      preorder(node.left);
      preorder(node.right);
    }
   }
    postorder(Node? node){
      if(node !=null){
        postorder(node.left);
        postorder(node.right);
        print(node.data);
      }
    }
    delete(int data){
      root=deleteid(root,data);
    }
    
   deleteid(Node? root, int data) {
    if(root==null){
      return root;
    }
    if(data <root.data){
      root.left=deleteid(root.left, data);
    }else if(data >root.data){
      root.right=deleteid(root.right, data);
    }else{
      if(root.left==null){
        return root.right;
      }else if(root.right==null){
        return root.left;
      }
      root.data=getminvalue(root.right);
      root.right=deleteid(root.right,root.data);
    }
    return root;
   }
   
     getminvalue(Node? root) {
     // ignore: unused_local_variable
     int minvalue=root!.data;
     while(root!.left !=null){
      minvalue=root.left!.data;
      root=root.left;
     }
     return minvalue;
     }
}
void main(){
 bst b=bst();
 b.insert(2);
 b.insert(5);
 b.insert(59);
 b.insert(15);
 b.insert(8);
 b.insert(4);
 b.insert(16);
 b.insert(33);
 b.insert(7);
 b.insert(9);
 print(b.search(4));
 b.delete(5);
 b.inorder(b.root);
 b.preorder(b.root);
 b.postorder(b.root);

}