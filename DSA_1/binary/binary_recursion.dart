void main(){
  List<int>list=[1,2,3,4,5,6,7,8,9];
  print(binarysearch(list, 2));
}
int binarysearch(l1,target){
  return binaryhelper(l1, target, 0, l1.length-1);
}
 binaryhelper(List<int>l1,int target,int start,int end){
  if(start>end){
    return -1;
  }
  var middle =start+(end-start)~/ 2;
  if(l1[middle]==target){
    return middle;
  }else if(l1[middle]>target){
    return binaryhelper(l1, target, start,middle-1);
  }else{
    return binaryhelper(l1, target, middle+1,end);
  }

}