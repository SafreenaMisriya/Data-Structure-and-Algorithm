void main(){
  int? result=sum(5);
  print('${result}');
 
}
int sum(int k){
if(k>0){
  return k*sum(k-1);
}else{
  return 1;
}

}