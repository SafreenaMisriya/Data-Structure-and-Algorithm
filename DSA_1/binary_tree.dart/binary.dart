class Node {
  int data;
  Node? left, right;
  
  Node(this.data);
}

class BinarysearchTree {
  Node? root;
  

  void insert(int data){
    Node? currentnode =root;
    if(root==null){
      root=Node(data);
      return;
    }
    while (true) {
      if(data< currentnode!.data){
        if(currentnode.left==null){
          currentnode.left=Node(data);
          break;
        }else{
          currentnode=currentnode.left;
        }
      }else{
         if(currentnode.right==null){
          currentnode.right=Node(data);
          break;
        }else{
          currentnode=currentnode.right;
        }
      }
    }
  }
  bool contain(int data){
   Node? currentnode =root;
   while (currentnode!=null) {
     if(data<currentnode.data){
      currentnode=currentnode.left;
     }else if(data>currentnode.data){
      currentnode= currentnode.right;
     }else{
      return true;
     }
   }
   return false;
  }
  void remove(int data){
     removehelper(data, root, null);
  }
  void removehelper(int data,Node? currentnode,Node? parentNode ){
    while (currentnode !=null) {
      if (data< currentnode.data) {
        parentNode=currentnode;
        currentnode=currentnode.left;
      }else if(data>currentnode.data){
        parentNode=currentnode;
        currentnode=currentnode.right;
      }else{
        if(currentnode.left!=null &&currentnode.right !=null){
        currentnode.data= getminValue(currentnode.right);
        removehelper(currentnode.data, currentnode.right, currentnode);
        }else{
          if(parentNode==null){
            if(currentnode.right==null){
              root=currentnode.left;
            }else{
              root=currentnode.right;
            }
          }else{
            if(parentNode.left==currentnode){
             if(currentnode.right==null){
              parentNode.left=currentnode.left;
             }else{
              parentNode.left=currentnode.right;
             }
            }else{
              if(currentnode.right==null){
              parentNode.right=currentnode.left;
             }else{
              parentNode.right=currentnode.right;
             }
            }
          }
           break;   
        }
      }
    }
  }
   getminValue(Node? currentnode){
    if(currentnode?.left==null){
      return currentnode?.data;
    }else{
      return getminValue(currentnode?.right);
    }
  }
  void inorder(){
   inorderHelper(root);
  }
  void inorderHelper(Node? node){
    inorderHelper(node?.left);
    print(node?.data);
    inorderHelper(node?.right);
  }
   void preorder(){
   preorderHelper(root);
  }
  void preorderHelper(Node? node){
    print(node?.data);
    preorderHelper(node?.left);
    preorderHelper(node?.right);
  }
   void postorder(){
    postorderHelper(root);
  }
  void postorderHelper(Node? node){
    postorderHelper(node?.left);
    postorderHelper(node?.right);
    print(node?.data);
  }
 findclosest(int target){
  
 }
}

void main(){
  BinarysearchTree tree=BinarysearchTree();
  tree.insert(12);
  tree.insert(8);
  tree.insert(3);
  tree.insert(2);
  tree.remove(3);
  print(tree.contain(3));
}