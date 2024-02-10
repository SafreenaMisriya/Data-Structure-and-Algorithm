class TreeNode {
  late int key;
  TreeNode? left, right;
  TreeNode(int key) {
    this.key = key;
    left = right = null;
  }
}

bool areIdentical(TreeNode? root1, TreeNode? root2) {
  if (root1 == null && root2 == null                                                                                                                                          ) {
    return true;
  }
  if (root1 != null && root2 != null) {
    return (
        root1.key == root2.key &&
        areIdentical(root1.left, root2.left) &&
        areIdentical(root1.right, root2.right));
  }
  return false;
}
void main() {
  TreeNode tree1 = TreeNode(1);
  tree1.left = TreeNode(2);
  tree1.right = TreeNode(3);
  tree1.left!.left = TreeNode(6);
  tree1.left!.right = TreeNode(5);

  TreeNode tree2 = TreeNode(1);
  tree2.left = TreeNode(2);
  tree2.right = TreeNode(3);
  tree2.left!.left = TreeNode(7);
  tree2.left!.right = TreeNode(5);

  bool result = areIdentical(tree1, tree2);

  if (result) {
    print("The trees are identical.");
  } else {
    print("The trees are not identical.");
  }
}
