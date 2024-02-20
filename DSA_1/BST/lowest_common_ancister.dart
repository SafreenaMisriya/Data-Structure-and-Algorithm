class TreeNode {
  late int key;
  TreeNode? left, right;
  TreeNode(this.key);
}

class BST {
  TreeNode? root;
  TreeNode? findLCA(TreeNode? root, int n1, int n2) {
    if (root == null) {
      return null;
    }
    if (root.key > n1 && root.key > n2) {
      return findLCA(root.left, n1, n2);
    } else if (root.key < n1 && root.key < n2) {
      return findLCA(root.right, n1, n2);
    } else {
      return root;
    }
  }
}

void main() {
  BST bst = BST();
  bst.root = TreeNode(20);
  bst.root!.left = TreeNode(10);
  bst.root!.right = TreeNode(30);
  bst.root!.left!.left = TreeNode(5);
  bst.root!.left!.right = TreeNode(15);
  bst.root!.right!.left = TreeNode(25);
  bst.root!.right!.right = TreeNode(35);
  TreeNode? lcaNode = bst.findLCA(bst.root, 15, 25);
  print("Lowest Common Ancestor: ${lcaNode?.key}");
}
