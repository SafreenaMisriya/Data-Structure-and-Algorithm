class MinHeap {
 
    late List<int>heap;
  MinHeap(List<int>array){
    heap=array;
    buildheap(array);
  }
   buildheap(List<int>array){
   for(int i=parent(heap.length-1);i>=0;i--){
    shiftdown(i);
   }
  }
  shiftdown(int currentIndex){
    int endIndex= heap.length-1;
    int leftIndex=leftchild(currentIndex);
    while (leftIndex<=endIndex) {
      int rightIndex=rightchild(currentIndex);
      int Idshift;
      if(rightIndex<=endIndex && heap[rightIndex]<heap[leftIndex]){
        Idshift=rightIndex;
      }else{
        Idshift=leftIndex;
      }
      if(heap[currentIndex]>heap[Idshift]){
        swap(heap, currentIndex, Idshift);
        currentIndex=Idshift;
        leftIndex=leftchild(currentIndex);
      }else{
        return;
      }
    }
  }
  shiftup(int currentIndex){
    int parentIndex=parent(currentIndex);
    while (currentIndex>=0&& heap[parentIndex]>heap[currentIndex]){
      swap(heap, currentIndex, parentIndex);
      currentIndex=parentIndex;
      parentIndex=parent(currentIndex);
    }
  }
   peek(){
  return heap[0];
  }
  removehead(){
    swap(heap,heap.length-1,0);
    heap.removeAt(heap.length-1);
    shiftdown(0);
  }
    void remove(int value) {
    int index = heap.indexOf(value);
    if (index != -1) {
      heap[index] = heap.last;
      heap.removeLast();
      shiftdown(index);
    }
  }
  parent(int i){
    return (i-1)~/2;
  }
  leftchild(int i){
   return 2*i+1;
  }
  rightchild(int i){
    return 2*i+2;
  }
  insert(int value){
    heap.add(value);
    shiftup(heap.length-1);
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
  
}
void main(){
  List<int>array=[5,12,8];
  MinHeap heap=MinHeap(array);
  heap.insert(2);
  heap.insert(32);
  heap.insert(1);
  heap.display();
  heap.remove(8);
  print('\n');
  heap.removehead();
  heap.display();
}
