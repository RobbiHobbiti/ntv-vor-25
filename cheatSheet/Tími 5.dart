void main(){
  // create a list
  /*List names = ['Róbert','óðinn','jón','gunna'];
  print(List);
  // change an element
  names[0] = "Robbi";
  print(names);
  // add to a list
  names.add('ananas');
  print(names);
  // add many to list
  names.addAll(['nafn','sítróna','epli']);
  print(names);
  // create an empty list
  List empty = [];
  // insert at a specific index
  names.insert(0, 'maður');
  print(names);
  // insert many at a specific index
  names.insertAll(0, ['api','gírafi','köttur','hundur']);
  print(names);
  // remove from a list
  names.remove('maður');
  print(names);
  // remove at an index
  names.removeAt(5);
  print(names);
  // *bonus* find an element's position and remove at that index
  int remove = names.indexOf('gírafi');
  print(remove);
  names.removeAt(remove);
  print(names);
  */

  List nums = [5,1,4,2,3,7,6,8,9];
  List chars = ['a','b','c','d','g','f','e'];

  // sort the list
  print(chars);
  nums.sort();
  print(nums);

  // remove between 2 indexes
  nums.removeRange(2, 6);
  print(nums);

  //remove last
  nums.removeLast();
  print(nums);
}