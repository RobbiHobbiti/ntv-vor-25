import 'dart:io';

void main(){

  /*
  void printNameAndJob(String name, String job){
    print("Ég heiti $name og er $job");
  }

  printNameAndJob("Robbi", "smyrjari");


  // increment
  int increment(int num1, int num2){
    return num1 + num2;
  }
  int sum = increment(5, 5);
  print(sum);

  // decrement
  int decrement(int num1, int num2){
    return num1 - num2;
  }
  int decrementsum = decrement(20, 10);
  print(decrementsum);

  String input1 = stdin.readLineSync()!;
  print("type a number");
  String input2 = stdin.readLineSync()!;
  print("type a number");

  int import1AsNum = int.parse(input1);
  int import2AsNum = int.parse(input2);


  int inputSum = increment(import1AsNum, import2AsNum);
  print(inputSum);
  */




  // void skilar eingu
  //int ef við viljum skila tölu
  // String ef við viljum skila streing

  //how long til im 50

  print("Enter your age");
  String? input = stdin.readLineSync();

  int howLongTill50(String age){
    int yearsTill50 = 50 - int.parse(age);
    return yearsTill50;
  }

  int years = howLongTill50(input!);
  print("in $years years you turn 50");


}

