void main(){
  List<int>list =[2,3,4,5,6,7,8,];
  int target =5;
  print(binarysearch(list, target));
}
binarysearch(List<int>list,target){
  var low= list[0];
  var high =list.length-1;
  while(low<=high){
    int middle= low+(high-low)~/2;
    if(list[middle]==target){
      return middle;
    }else if(list[middle]>target){
      high= middle-1;
    }else{
      low =middle+1;
    }
  }
  return;
}
