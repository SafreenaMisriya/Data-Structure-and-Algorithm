class TreeNode {
  int key;
  TreeNode? left, right;
  TreeNode(this.key);
}
class BinaryTree {
  TreeNode? root;

  void inOrderTraversal(TreeNode? root, List<int> values) {
    if (root != null) {
      inOrderTraversal(root.left, values);
      values.add(root.key);
      inOrderTraversal(root.right, values);
    }
  }
}

class BST {
  TreeNode? root;

  TreeNode? sortedArrayToBST(List<int> values, int start, int end) {
    if (start > end) {
      return null;
    }

    int mid = (start + end) ~/ 2;
    TreeNode node = TreeNode(values[mid]);

    node.left = sortedArrayToBST(values, start, mid - 1);
    node.right = sortedArrayToBST(values, mid + 1, end);

    return node;
  }

  void convertBinaryTreeToBST(BinaryTree binaryTree) {
    List<int> values = [];
    binaryTree.inOrderTraversal(binaryTree.root, values);
    root = sortedArrayToBST(values, 0, values.length - 1);
  }
  inorder(TreeNode? root){
    if(root!=null){
      inorder(root.left);
      print(root.key);
      inorder(root.right);
    }
}
printbst(){
  inorder(root);
}
}

void main() {
  BinaryTree binaryTree = BinaryTree();
  binaryTree.root = TreeNode(5);
  binaryTree.root!.left = TreeNode(3);
  binaryTree.root!.right = TreeNode(8);
  binaryTree.root!.left!.left = TreeNode(2);
  binaryTree.root!.left!.right = TreeNode(4);

  BST bst = BST();
  bst.convertBinaryTreeToBST(binaryTree);
  bst.printbst();
}
