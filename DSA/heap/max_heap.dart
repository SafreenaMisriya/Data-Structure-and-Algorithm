
class MaxHeap {
  late List<int>heap;
  MaxHeap(List<int>array){
   heap=array;
   buildHeap(array);
  }
  buildHeap(List<int>array){
  for(int i=parent(heap.length-1);i>=0;i--){
    shiftdown(i);
  }
  }
  parent(int i){
    return (i-1)~/2;
  }
  leftchild(int i){
    return (i*2)+1;
  }
  rightchild(int i){
    return (i*2)+2;
  }
  shiftdown(int currentIndex){
    int endIndex=heap.length-1;
    int leftIndex=leftchild(currentIndex);
    while (leftIndex<=endIndex) {
      int rightIndex=rightchild(currentIndex);
      int toShift;
      if(rightIndex<=endIndex && heap[leftIndex]>heap[rightIndex]){
        toShift=leftIndex;
      }else{
        toShift=rightIndex;
      }
      if(heap[currentIndex]<heap[ toShift]){
       swap(heap, currentIndex, toShift);
       currentIndex=toShift;
       leftIndex=leftchild(currentIndex);
      }else{
        return;
      }
    }
  }
  swap(List<int>array,int i,int j){
    int temp=array[i];
    array[i]=array[j];
    array[j]=temp;
  }
  display(){
    for(int i=0;i<heap.length;i++){
      print(heap[i]);
    }
  }
  peek(){
    return heap[0];
  }
  shiftup(int currentIndex){
   int parentIndex=parent(currentIndex);
   while (currentIndex>=0 && heap[parentIndex]<heap[currentIndex]) {
     swap(heap, parentIndex, currentIndex);
     currentIndex=parentIndex;
     parentIndex=parent(currentIndex);

   }
  }
  insert(int value){
    heap.add(value);
    shiftup(heap.length-1);
  }

}
void main(){
  List<int>array=[113,182,122];
  MaxHeap heap=MaxHeap(array);
  heap.display();
  print('***');
  heap.insert(44);
  heap.insert(133);
  heap.insert(223);
  heap.insert(177);
  heap.insert(89);
  heap.display();

}