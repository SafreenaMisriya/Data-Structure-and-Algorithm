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
}
void main(){
  Graph graph=Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 7, false); 
  graph.insert(7, 11, true);
  graph.insert(11, 22, false);
  graph.insert(22, 31, false);
  graph.display();
}