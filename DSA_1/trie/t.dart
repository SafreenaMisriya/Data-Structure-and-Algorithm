class TrieNode {
  Map<String,TrieNode?>children ={};
}
class Trie {
 TrieNode root=TrieNode();
 String endSymbol="*";
 insertString(String str){
  TrieNode node=root;
  for(int i=0;i<str.length;i++){
    TrieNode newnode=TrieNode();
    String letter=str[i];
    if(!node.children.containsKey(letter)){
      node.children.addAll({letter:newnode});
    }
    node=node.children[letter]!;
  }
  node.children.addAll({endSymbol:null});
 }
 containString(String str){
  TrieNode node=root;
  for(int i=0;i<str.length;i++){
    String letter=str[i];
    if(!node.children.containsKey(letter)){
      return false;
    }
    node=node.children[letter]!;
  }
  return node.children.containsKey(endSymbol);
 }
 delete(String str){
  TrieNode node=root;
  List<TrieNode>nodetodelete=[];
  for(int i=0;i<str.length;i++){
    String letter=str[i];
    if(!node.children.containsKey(letter)){
      return false;
    }
    nodetodelete.add(node);
   node= node.children[letter]!;
  }
  if(!node.children.containsKey(endSymbol)){
    return false;
  }
  node.children.remove(endSymbol);
  if(node.children.isEmpty){
    for(int i=nodetodelete.length-1;i>=0;i--){
      TrieNode current=nodetodelete[i];
      String lastletter=str[i];
      current.children.remove(lastletter);
      if(current.children.isNotEmpty){
        break;
      }
    }
  }
  true;
 }
 wordsContainWithPrefix(String str){
  TrieNode node=root;
  List<String>matches=[];
  String currentString="";
  for(int i=0;i<str.length;){
    String letter=str[i];
    if(!node.children.containsKey(letter)){
      return matches;
    }
    currentString +=letter;
    node=node.children[letter]!;
    findallwords(node,currentString,matches);
    return matches;
  }
 }
 
   findallwords(TrieNode node,String currentString,List<String>matches) {
    if(node.children.containsKey(endSymbol)){
      matches.add(currentString);
    }
    node.children.forEach((key, value) {
      if(key!=endSymbol &&value !=null){
        findallwords(value, currentString+key, matches);
      }
    });
   }
}
void main(){
  Trie trie=Trie();
  trie.insertString('google');
  trie.insertString('facebook');
  trie.insertString('internet');
  trie.insertString('intern');
  trie.insertString('intenship');
  trie.insertString('free');
  print(trie.containString('free'));
  trie.delete('free');
   print(trie.containString('free'));
   List<String>result=trie.wordsContainWithPrefix('in');
   print(result);
  
}