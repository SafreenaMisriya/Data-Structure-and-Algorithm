import 'dart:io';

class Graph {
  Map<int,List<int>>map={};

  void insert(int vertex,int edge,bool isbidirectional){
     if(!map.containsKey(vertex)){
       addvertex(vertex);
     }
     if(!map.containsKey(edge)){
      addvertex(edge);
     }
     map[vertex]!.add(edge);
     if(isbidirectional){
      map[edge]!.add(vertex);
     }
  }
  addvertex(int data){
   map[data]=[];
  }
  display(){
    print(map);
  }
 delete(int vertex){
  if(map.containsKey(vertex)){
    map.remove(vertex);
  }
  map.forEach((key, value) {
    if(value.contains(vertex)){
      value.remove(vertex);
    }
  });
 }
 breadthFirstSearch(int startIndex){
  List<int>allvalues=[];
  map.forEach((key, value) {
    allvalues.add(key);
  });
  List<int>queue=[];
  queue.add(startIndex);
  while (queue.isNotEmpty) {
  int currentvertex=queue.removeAt(0);
  stdout.write("$currentvertex ");
  allvalues.remove(currentvertex);
  for(int element in map[currentvertex]!){
    if(allvalues.contains(element)){
      queue.add(element);
    }
  }
  if(queue.isEmpty && allvalues.isNotEmpty){
    queue.add(allvalues[0]);
  }
 }
}
deapthFirstSearch(int startIndex){
  List<int>allvalues=[];
  map.forEach((key, value) {
    allvalues.add(key);
  });
  dfshelper(startIndex,allvalues);
}
dfshelper(int startIndex,List<int>allvalues){
  
}
}
void main(){
  Graph graph=Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 7, false); 
  graph.insert(7, 11, true);
  graph.insert(11, 22, false);
  graph.insert(22, 31, false);
  graph.delete(11);
  graph.display();
  graph.breadthFirstSearch(5);

}
