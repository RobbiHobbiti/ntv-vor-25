void main(){
  List stars = [["*", "**", "***"], ["****", "*****"]];
  List<String> emails = [
    'example1@gmail.com',
    "donkey.is",
    'example2@hotmail.com',
    "atli.yahoo.is",
    'example3@yahoo.com',
    'hello@world.com',
    "shrek123.com",
    'user@dart.com'];

  /*for(String validEmail in emails){
    if (validEmail.contains("@")) {
      print(validEmail);
    }
  }*/

/*  for(int i = 0; i < stars.length; i++){
    List row = stars[i];
    for(int j = 0; j < row.length; j++){
      print(row[j]);
    }
  }*/


/*

  List tvShows = ["from", "white lotus", "godless", "breaking bad", "sons of anarchy"];

  tvShows.forEach((tvShow) {
    print(tvShow);
  });
*/



  // TÍMAVERKEFNI

  // Nota nested loops til að prenta út:

  //*****
  // *****
  // *****
  // *****
  // *****
/*
  List stars5 = [["*****", "*****", "*****"], ["*****", "*****"]];

 for(int i = 0; i < stars5.length; i++){
   List row = stars5[i];
   for(int j = 0; j < row.length; j++) {
      print(row[j]);
    }
  }

*/



  //     *
  //    **
  //   ***
  //  ****
  // *****

  String starsMinus = "*"

  for(int i = 5; i < starsMinus.length; i--){
    List row = starsMinus[i];
    for(int j = 0; j < row.length; j++) {
      print(row[j]);
    }
  }


  // 1
  // 121
  // 12321
  // 1234321

  //   *
  //  ***
  // *****
  //  ***
  //   *


}