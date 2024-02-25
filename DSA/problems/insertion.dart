void main(){
  List<int>list=[13,35,67,21,77,89,56,43,6,111];
  for(int i=1;i<list.length;i++){
    int temp= list[i];
    int j=i-1;
    while (j>=0 && list[j]>temp) {
      list[j+1]=list[j];
      j--;
    }
    list[j+1]=temp;
  }
  print(list);
}