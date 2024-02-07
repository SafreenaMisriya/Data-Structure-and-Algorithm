void main(){
  List<int>a=[12,45,6,72,32,56,78,31,7,8,23];
  for(int i=0;i<a.length-1;i++){
    for(int j=0;j<a.length-1-i;j++){
      if(a[j]>a[j+1]){
        int temp= a[j];
        a[j]=a[j+1];
        a[j+1]=temp;
      }
    }
  }
  print(a);
}