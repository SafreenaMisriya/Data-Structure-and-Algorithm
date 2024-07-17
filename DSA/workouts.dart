// class Student{
//   String? name;
//   String? sub;
//  void method1(){
//     print('My name is $name');
//   }
//    void method2(){
//     print('My favourite subject is $sub.');
//   }
// }
// void main(){
//   // Student()
//   // ..name='Arun'
//   // ..sub='English'
//   // ..method1()
//   // ..method2();
//   List<int>l1=[1,2,3,4,5];
//   List<int>l2=[6,7,8,9,10];
//   List<int>l3=[...l1,...l2];
//   print(l3);
// }


// void main() {
//  List<int>l1=[1,2,3,4,5];
//   print(sumlist(l1));
// int n=5;
// print(factorial(n));
// }
// int sumlist(List<int>lst,[int index=0]){
//   if(index==lst.length){
//     return 0;
//   }else{
//     return lst[index]+sumlist(lst,index+1);
//   }
// }
// factorial(int n){
//   if(n<=1){
//     return 1;
//   }else{
//     return n* (factorial(n-1));
//   }
// }
// String str='Hey';
// print(reverseString(str));
// print(palindrome(str));

// }
// reverseString(String str){
//   if(str.isEmpty){
//     return '';
//   }else{
//     return reverseString(str.substring(1))+str[0];
//   }
// }
// bool palindrome(String str){
//   if(str.length<=1){
//     return true;
//   }else if(str[0]!=str.length-1){
//     return false;
//   }else{
//     return palindrome(str.substring(1,str.length-1));
//   }
// }

class Node{
  int data;
  Node? left,right=null;
  Node(this.data);

}
class B{
  Node? root;
  insert(int data){
    Node? currentnode= root;
    if(root==null){
      root= Node(data);
      return;
    }
    while (true) {
      if(data <currentnode!.data){
        if(currentnode.left==null){
          currentnode.left=Node(data);
          break;
        }else{
          currentnode=currentnode.left;
        }
      }else{
        if(currentnode.right==null){
          currentnode.right=Node(data);
          break;
        }else{
          currentnode= currentnode.right;
        }
      }
    }
  }
}