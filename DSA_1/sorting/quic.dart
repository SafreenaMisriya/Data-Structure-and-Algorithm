void  main(){
  List<int>l1=[2,13,43,31,22,11];
   Quicksort(l1,0,l1.length-1);
    print(l1);
}
Quicksort(List<int>l1,lb,ub){
  if(lb<ub){
  int loc=partition(l1,lb,ub);
    Quicksort(l1,lb,loc-1);
     Quicksort(l1,loc+1,ub);
  } 
}
partition(List<int>l1,lb,ub){
  int start= lb;
  int end =ub;
  int pivot=l1[lb];
  while (start<end) {
    while (l1[start]<=pivot) {
      start++;
    }
    while (l1[end]>pivot) {
      end--;
    }
    if (start<end) {
      int temp= l1[start];
      l1[start]=l1[end];
      l1[end]=temp;
    }
  }
  int temp=l1[end];
  l1[end]=l1[lb];
  l1[lb]=temp;
  return end;
}