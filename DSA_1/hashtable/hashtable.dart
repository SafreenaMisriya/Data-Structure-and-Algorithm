void main() {

  Map<String, int> myHashtable = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  print('Value for key "two": ${myHashtable['two']}');

  myHashtable['four'] = 4;

  myHashtable['one'] = 10;

  myHashtable.remove('three');

  myHashtable.forEach((key, value) {
    if(key=='one'){
      print(key);
    }
    print('$key: $value');
  });
  print(myHashtable);
}
