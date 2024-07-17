// void myFunction(
//   int a, // Required positional parameter
//   int b, // Required positional parameter
//   {String name = "defaultName", // Named parameter with a default value
//   int? c, // Optional named parameter
//   int d = 10},
//   [int? e, int f = 20] // Optional positional parameters
// ) {
//   print('a: $a');
//   print('b: $b');
//   print('name: $name');
//   print('c: $c');
//   print('d: $d');
//   print('e: $e');
//   print('f: $f');
// }

// class Depbouncer{
//   final int millisecods;
//   VoidCallback? action;
//   Timer? time;
//   Depbouncer({required this.millisecods});

//   void run(VoidCallback action){
//     if(time !=null){
//       time!.cancel();
//     }
//     time=Timer(Duration(milliseconds: millisecods),action);
//   }
//  }
//  Debouncer debouncer=Debouncer(milliseconds: 500);


// class Node{
//   int data;
//   Node? left,right=null;
//   Node(this.data);
//  }
//  class Bst{
//   Node? root;
//  void insert(int data){
//     Node? currentnode=root;
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//     while (true) {
//       if(data <currentnode!.data){
//          if(currentnode.left==null){
//           currentnode.left=Node(data);
//           break;
//          }else{
//           currentnode=currentnode.left;
//          }
//       }else{
//         if(currentnode.right==null){
//           currentnode.right=Node(data);
//           break;

//         }else{
//           currentnode=currentnode.right;
//         }
//       }
//     }
//   }
//   inorder(Node? node){

//     if(node !=null){
//       inorder(node.left);
//       print(node.data);
//       inorder(node.right);
//     }
//   }
//  }
//  void main() {
//    Bst b=Bst();
//    b.insert(12);
//    b.insert(74);
//    b.insert(15);
//    b.insert(66);
//    b.inorder(b.root);
  
  
// }
void main() {
  String input = "This is a sample string with vowels.";
  String output = removeVowels(input);
  print(output); // Output: Ths s  smpl strng wth vwls.
}

String removeVowels(String input) {
  // Define a set of vowels
  const String vowels = "aeiouAEIOU";
  String result = "";
  for (int i = 0; i < input.length; i++) {
    if (!vowels.contains(input[i])) {
      result += input[i];
    }
  }
  return result;
}
