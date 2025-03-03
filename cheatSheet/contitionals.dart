import 'dart:io';

void main() {
  // GRADE

  print("======= GRADING PROGRAM =======");
  stdout.write("pick a number between 1-100\n");
  String? input = stdin.readLineSync();
  int score = int.parse(input!);

  try{

  if (score < 1 || score > 100) {
    print("invalid input, please enter a number between 1-100");
  } else {
    if (score >= 90) {
      print("Grade; A");
      print("Good job");
    } else if (score >= 80) {
      print("Grade: B");
      print("Good job");
    } else if (score >= 70) {
      print("Grade: C");
      print("Good Enough");
    } else if (score >= 60) {
      print("Grade: D");
      print("Needs improvement");
    } else {
      print("Grade: F");
      print("Fail");
    }
  }
}catch(e){
  print("ERROR");
}
  bool isNotLoading = true;

// Turnery operator
  isNotLoading ? print("Not Loading!") : print("Loading...");

  
}




