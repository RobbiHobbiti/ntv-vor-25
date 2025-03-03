void main() {
  List<String> name = [
    'Óðinn',
    'Óskar',
    'Sölvi',
    'kristó',
  ];
  for (String names in name) {
    print(names);
  }
  for (String names in name) {
    print('hey $names you suck');
  }
  int i = 0;
  List<String> shopingList = ['mjólk', 'ís', 'matur', 'eppli'];
  shopingList[0] = "súkkulaði mjólk";
  shopingList.insert(0, 'coke(not that kind)');
  print(shopingList);
  shopingList.insert(3, 'áfengi');
  print(shopingList);
  shopingList.insert(6, 'blöðrur');
  print(shopingList);
  shopingList.sort();
  for (String shopList in shopingList) {
    i++;
    print("$i: $shopList");
  }
}
