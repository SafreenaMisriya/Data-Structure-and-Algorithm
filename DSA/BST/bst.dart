class Node {
  int data;
  Node? left, right;
  
  Node(this.data);
}

class BinarySearchTree {
  Node? root;
  
  void insert(int data) {
    Node? currentnode = root;
    if (root == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < currentnode!.data) {
        if (currentnode.left == null) {
          currentnode.left = Node(data);
          break;
        } else {
          currentnode = currentnode.left;
        }
      } else {
         if (currentnode.right == null) {
          currentnode.right = Node(data);
          break;
        } else {
          currentnode = currentnode.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? currentnode = root;
    while (currentnode != null) {
      if (data < currentnode.data) {
        currentnode = currentnode.left;
      } else if (data > currentnode.data) {
        currentnode = currentnode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int data) {
    removeHelper(data, root, null);
  }

  void removeHelper(int data, Node? currentnode, Node? parentNode) {
    while (currentnode != null) {
      if (data < currentnode.data) {
        parentNode = currentnode;
        currentnode = currentnode.left;
      } else if (data > currentnode.data) {
        parentNode = currentnode;
        currentnode = currentnode.right;
      } else {
        if (currentnode.left != null && currentnode.right != null) {
          currentnode.data = getMinValue(currentnode.right);
          removeHelper(currentnode.data, currentnode.right, currentnode);
        } else {
          if (parentNode == null) {
            if (currentnode.right == null) {
              root = currentnode.left;
            } else {
              root = currentnode.right;
            }
          } else {
            if (parentNode.left == currentnode) {
              if (currentnode.right == null) {
                parentNode.left = currentnode.left;
              } else {
                parentNode.left = currentnode.right;
              }
            } else {
              if (currentnode.right == null) {
                parentNode.right = currentnode.left;
              } else {
                parentNode.right = currentnode.right;
              }
            }
          }
          break;   
        }
      }
    }
  }

  int getMinValue(Node? currentnode) {
    if(currentnode!.left==null){
      return currentnode.data;
    }
    else{
      return getMinValue(currentnode.left);
    }
  }

  void inorder() {
    inorderHelper(root);
  }

  void inorderHelper(Node? node) {
    if (node != null) {
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }
  void preorder(){
   preorderHelper(root);
  }
  preorderHelper(Node? node){
   if(node!=null){
    print(node.data);
    preorderHelper(node.left);
    preorderHelper(node.right);
   }
  }
  postorder(){
    postorderHelper(root);
  }
  postorderHelper(Node? node){
   if(node!=null){
    postorderHelper(node.left);
    postorderHelper(node.right);
    print(node.data);
   }
  }

  int findClosest(int target) {
    Node? current = root;
    int closest = current!.data;
    while (current != null) {
      if ((target - closest).abs() > (target - current.data).abs()) {
        closest = current.data;
      }
      if (current.data < target) {
        current = current.right;
      } else if (current.data > target) {
        current = current.left;
      } else {
        break;
      }
    }
    return closest;
  }
}

void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(12);
  tree.insert(8);
  tree.insert(3);
  tree.insert(2);
  tree.remove(12);
  print(tree.contains(12));
  print('*****');
  print(tree.findClosest(7));
  print('*****');
  tree.inorder();
  print('ssfsadfdfadf');
  tree.preorder();
  print('fsadfdjfadhfk');
  tree.postorder();
}
