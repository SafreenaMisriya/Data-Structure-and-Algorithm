class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;

  bool isValidBST() {
    List<int> values = [];
    return inorderTraversal(root, values);
  }

  bool inorderTraversal(Node? node, List<int> values) {
    if (node == null) {
      return true;
    }

    if (!inorderTraversal(node.left, values)) {
      return false;
    }

 
    if (values.isNotEmpty && values.last >= node.data) {
      return false; 
    }
    values.add(node.data);

    return inorderTraversal(node.right, values);
  }
}

void main() {

  BinaryTree tree = BinaryTree();
  tree.root = Node(2);
  tree.root!.left = Node(1);
  tree.root!.right = Node(3);

  bool isValid = tree.isValidBST();
  print('Is valid BST: $isValid');
}
