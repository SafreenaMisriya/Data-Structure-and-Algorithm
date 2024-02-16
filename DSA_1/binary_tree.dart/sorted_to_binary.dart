class Binary {
  int? data;
  Binary? left,right;
  Binary(this.data);
  
}
sortedArrayToBST(List<int>array){
  if(array.isEmpty){
    return null;
  }
  int mid=array.length~/2;
  Binary? root=Binary(array[mid]);
  
  root.left=sortedArrayToBST(array.sublist(0,mid));
  root.right=sortedArrayToBST(array.sublist(mid+1));
  return root;

}
void main(){
  List<int>l1=[2,5,7,8,9,12,24];
  Binary? root=sortedArrayToBST(l1);
  print(inorderTraversal(root));
}
inorderTraversal(Binary? root){

  if(root!=null){
    inorderTraversal(root.left);
    print(root.data);
    inorderTraversal(root.right);
  }
}