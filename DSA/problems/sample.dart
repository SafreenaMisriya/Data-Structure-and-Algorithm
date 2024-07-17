// Write a Dart function that takes this list as input and returns a new list containing only the names that do
// not have any vowels (a, e, i, o, u).

// List<String> result = ['Lyn', 'Sky', 'Ryn'];
void main(){
List<String> names = [
  'John', 'Lyn', 'Chris', 'Sky', 'Emma', 'Mark',
  'Josh', 'Ryn', 'Anna', 'Kate'
];
listwithoutvowels(names);
 

}
listwithoutvowels(List<String>n2){
  List<String>n1=[];
  String vowels= 'AEIOUaeiou';
  for(var element in n2){
     bool hasVowel = false;
  for(int i=0;i<element.length;i++){
    if(vowels.contains(element[i])){
      hasVowel=true;
    }
  }
  if(!hasVowel){
    n1.add(element);
  }
  }
print(n1);

}