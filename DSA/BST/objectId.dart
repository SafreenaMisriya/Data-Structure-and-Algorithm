class TreeNode {
  late String objectId;
  late int number;
  TreeNode? left, right;

  TreeNode( this.objectId , this.number) ;
 
}

class BST {
  TreeNode? root;
  void insert(String objectId, int number) {
    root = _insert(root, objectId, number);
  }

  TreeNode? _insert(TreeNode? root, String objectId, int number) {
    if (root == null) {
      return TreeNode(objectId, number);
    }
    if (objectId.compareTo(root.objectId) < 0) {
      root.left = _insert(root.left, objectId, number);
    } else if (objectId.compareTo(root.objectId) > 0) {
      root.right = _insert(root.right, objectId, number);
    } else {
      root.number = number;
    }

    return root;
  }

  TreeNode? search(String objectId) {
    return _search(root, objectId);
  }

  TreeNode? _search(TreeNode? root, String objectId) {
    if (root == null || root.objectId == objectId) {
      return root;
    }

    if (objectId.compareTo(root.objectId) < 0) {
      return _search(root.left, objectId);
    } else {
      return _search(root.right, objectId);
    }
  }
}

void main() {
  BST bst = BST();
  bst.insert("abc123", 42);
  bst.insert("def456", 15);
  bst.insert("xyz789", 30);
  String searchObjectId = "def456";
  TreeNode? resultNode = bst.search(searchObjectId);

  if (resultNode != null) {
    print("Node found: ObjectId=${resultNode.objectId}, Number=${resultNode.number}");
  } else {
    print("Node not found for ObjectId: $searchObjectId");
  }
}
