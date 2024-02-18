class TreeNode {
  late int data;
  late TreeNode left;
  late TreeNode right;

  TreeNode(this.data);
}

class BinaryTree {
  late TreeNode root;

  BinaryTree() {
    root = TreeNode(0); // Initialize root with a dummy value
  }

  // Function to insert a new node into the binary tree
  void insert(int value) {
    root = _insertRecursive(root, value);
  }

  TreeNode _insertRecursive(TreeNode node, int value) {
    if (node.data == 0) {
      // If the node is a dummy node, create a new node with the given value
      return TreeNode(value);
    }

    if (value < node.data) {
      // If the value is less than the current node's data, insert into the left subtree
      node.left = _insertRecursive(node.left, value);
    } else if (value > node.data) {
      // If the value is greater than the current node's data, insert into the right subtree
      node.right = _insertRecursive(node.right, value);
    }

    return node;
  }

  // Function to perform an inorder traversal of the binary tree
  void inorderTraversal(TreeNode node) {
    if (node.data != 0) {
      inorderTraversal(node.left);
      print(node.data);
      inorderTraversal(node.right);
    }
  }
}

void main() {
  BinaryTree binaryTree = BinaryTree();

  // Insert some values into the binary tree
  binaryTree.insert(5);
  binaryTree.insert(3);
  binaryTree.insert(7);
  binaryTree.insert(2);
  binaryTree.insert(4);
  binaryTree.insert(6);
  binaryTree.insert(8);

  // Perform an inorder traversal and print the values
  print("Inorder Traversal:");
  binaryTree.inorderTraversal(binaryTree.root);
}
