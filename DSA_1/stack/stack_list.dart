
void main(){
Stack st =Stack();
st.push(12);
st.push(4);
st.push(12);
st.push(14);
st.push(7);


print(st.L1);
st.pop();
print(st.L1);
st.delete(4);
print(st.L1);
}
class Stack {
  List<int>L1=[];
  void push(int data){
    L1.add(data);
  }
  void pop(){
    if(L1.isEmpty){
      print('Stack is Empty');

    }else{
      L1.removeLast();
      
    }
  }
  void delete(int data){
    L1.remove(data);
  }  
}