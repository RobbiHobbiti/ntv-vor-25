  // loops
void main() {


  // for loops
  for(int i = 1; i <= 10; i++) {
    print(i);
  }

  for(int j = 10; j >= 1; j--){
    print(j);
  }
  List animals = ['lion','pig','cow','yo mama'];
  // for in
  for(String animal in animals){
    print(animal);
    print(animals);
  }
  // while
  int numb = 5;
  while(numb > 0){
    numb --;
    print(numb);

  }
  // do while
  do{
    numb--;
    print(numb);
  }
  while(numb > 0);


  List numbs = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
  // take a list and write a program that prints out all the
  //elements of rhe list that are less then 5
  for(int num in numbs){
    if(num < 5){
      print(num);
    }
  }

  List numbs = [1,2,3,4,5,6,7,8,9,31,52,74,85,5345];
  List numbs2 = [1,2,3,4,4,5,6,77,64,53,41];
  List commonNumbs = [];

  // take two lists and write a program that returns a list that contains only
  //the elements that are common between them (without duplicates)

  for(int i in numbs){
    for(int j in numbs2){
      if(i == j ){
        commonNumbs.add(i);
      }
    }
  }print(commonNumbs);


}