class TrieNode{
  Map<String,TrieNode?>children={};
}
class Trie{
  TrieNode root=TrieNode();
  String symbol="*";
  insert(String str){
    TrieNode node=root;
    for(int i=0;i<str.length;i++){
    String letter=str[i];
      TrieNode newNode= TrieNode();
      if(!node.children.containsKey(letter)){
        node.children.addAll({letter: newNode});
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
   return  node.children.containsKey(symbol);
  }
  delete(String str){
    List<TrieNode>nodetodelete=[];
    TrieNode node=root;
    for(int i=0;i<str.length;i++){
      String letter=str[i];
      if(!node.children.containsKey(letter)){
        return false;
      }
      nodetodelete.add(node);
      node=node.children[letter]!;
    }
    if(!node.children.containsKey(symbol)){
      return false;
    }
    node.children.remove(symbol);
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
    return true;
  }
   List<String> searchByPrefix(String prefix) {
    TrieNode node = root;
    List<String> matches = [];
    String currentPrefix = "";

    for (int i = 0; i < prefix.length; i++) {
      String letter = prefix[i];
      if (!node.children.containsKey(letter)) {
        // Prefix not found in the trie
        return matches;
      }
      currentPrefix += letter;
      node = node.children[letter]!;
    }

    findAllWordsWithPrefix(node, currentPrefix, matches);

    return matches;
    
  }

  void findAllWordsWithPrefix(
      TrieNode node, String currentPrefix, List<String> matches) {
    if (node.children.containsKey(symbol)) {
      matches.add(currentPrefix);
    }

    node.children.forEach((key, value) {
      if (key != symbol && value != null) {
        findAllWordsWithPrefix(
            value, currentPrefix + key, matches);
      }
    });
  }
}

void main(){
  Trie trie= Trie();
  trie.insert('fiee');
  trie.insert('first');
  trie.insert('graph');
  trie.insert('fiapp');
  print(trie.contains("appl"));
  trie.delete('free');
  print(trie.contains("free"));
  List<String>result=trie.searchByPrefix('fi');
  print('$result');
}