
class TrieNode {
  Map<String,TrieNode?>children ={};
}
class Trie {
  TrieNode root = TrieNode();
  String symbol='*';
  Trie(String str){
   populatesuffixTrie(str);
  }
   populatesuffixTrie(String str){
    for(int i=0;i<str.length;i++){
      insertString(i,str);
    }
   }
   insertString(int index,String str){
    TrieNode node=root;
    for(int i=index;i<str.length;i++){
      String letter=str[i];
      if(!node.children.containsKey(letter)){
        TrieNode newnode=TrieNode();
        node.children.addAll({letter:newnode});
      }
      node=node.children[letter]!;
   }
   node.children.addAll({symbol:null});
}
  contains(String str){
  TrieNode node=root;
  for(int i=0;i<str.length;i++){
    String letter=str[i];
    if(!node.children.containsKey(letter)){
      return false;
    }
    node=node.children[letter]!;
  }
  return node.children.containsKey(symbol);
}
}
void main(){
Trie trie=Trie('safreena');
print(trie.contains('anee'));
}