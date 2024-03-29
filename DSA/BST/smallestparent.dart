class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
 findSmallestParent(TreeNode? root) {
  if (root == null || root.left == null) {
    return null; 
  }

  TreeNode? current = root;
  while (current!.right !.right != null) {
    current = current.right;
  }
  return current;
}
}

void main() {
  // Example Binary Search Tree
  //        5
  //       / \
  //      3   8
  //     / \ / \
  //    1  4 7  9

  TreeNode root = TreeNode(5);
  root.left = TreeNode(3);
  root.right = TreeNode(8);
  root.left!.left = TreeNode(1);
  root.left!.right = TreeNode(4);
  root.right!.left = TreeNode(7);
  root.right!.right = TreeNode(9);

  TreeNode smallestParent = root.findSmallestParent(root);

    print('Smallest Parent Value: ${smallestParent.value}');
  

}