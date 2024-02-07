
void main(){
  List<int>l1=[1,2,3,4,5,6,7,8];
  print(binarysearch(l1, 7));
 
}
 int binarysearch(List<int>l1,var targrt){
   var l =l1[0];
   var h = l1.length-1;
   
  while (l<=h) {
  var  middle=l+(h-l)~/2;
    if(l1[middle]==targrt){
     return middle;
    }
    else if(l1[middle]>targrt){
      h=middle-1;
    }else if(l1[middle]< targrt){
      l=middle+1;
    }
   
   }
    return -1;
   
}