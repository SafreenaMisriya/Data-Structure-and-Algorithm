class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
}

class Result {
  TreeNode? secondLargest;
}

void findSecondLargest(TreeNode? root, Result result) {
  if (root == null || (root.left == null && root.right == null)) {
    // Tree is empty or has only one node
    result.secondLargest = null;
    return;
  }

  // Perform in-order traversal to get sorted nodes
  List<TreeNode> nodesVisited = [];
  
  void inorderTraversal(TreeNode? node) {
    if (node != null) {
      inorderTraversal(node.left);
      nodesVisited.add(node);
      inorderTraversal(node.right);
    }
  }

  inorderTraversal(root);

  // Determine the second-largest node
  int length = nodesVisited.length;
  result.secondLargest = (length >= 2) ? nodesVisited[length - 2] : null;
}

// Example usage:
void main() {
  // Create a sample binary search tree
  TreeNode root = TreeNode(10)
    ..left = TreeNode(5)
    ..right = TreeNode(15)
    ..left!.left = TreeNode(2)
    ..left!.right = TreeNode(8)
    ..right!.left = TreeNode(12)
    ..right!.right = TreeNode(18);

  // Find the second-largest node
  Result result = Result();
  findSecondLargest(root, result);

  // Output the value of the second-largest node
  if (result.secondLargest != null) {
    print("Second-largest node value: ${result.secondLargest!.value}");
  } else {
    print("No second-largest node found");
  }
}