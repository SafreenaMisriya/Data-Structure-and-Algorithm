void main()
{
  int temp=0;
  List<int>l1 =[23,5,67,8,3,5,12,56];
  for(int i=0;i<l1.length-1;i++){
    int min= i;
    for(int j=i+1;j<l1.length;j++){
      if(l1[j]<l1[min]){
       min=j;
      }
    }
    if(min!=i){
      temp = l1[i];
      l1[i]= l1[min];
      l1[min]=temp;
    }
  }
  print(l1);
}
