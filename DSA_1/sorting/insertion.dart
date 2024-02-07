void main(){
  List<int>l1=[12,3,56,9,44,21,8,9,67,85];
  for(int i=1;i<l1.length;i++){
    int k=i;
    while( k>0 && l1[k]<l1[k-1]){
      int temp=l1[k];
      l1[k]=l1[k-1];
      l1[k-1]=temp;
      k--;
    }
}
  print(l1);
}