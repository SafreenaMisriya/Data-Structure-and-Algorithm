

void main(){
Map<int,String>map= Map();

map.addAll({
  23:'rai',
  15:'vino',
});
map.containsKey('raju');
map.remove(15);
map.update(23,(value)=>'raju');
print(map);
}