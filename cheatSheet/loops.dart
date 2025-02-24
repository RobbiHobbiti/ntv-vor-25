import 'dart:math';
import 'dart:io';

  var intValue = Random().nextInt(100);
void main(List<String>arguments) {
    print("Guess a number between 1 - 100 you have 5 tries");
    int totalGuesses = 0;
    bool guessing = false;
  while (guessing == false || totalGuesses == 5) {

    print(intValue);
    String guess = stdin.readLineSync() ?? '0';
    totalGuesses = totalGuesses +1;
    int number1 = int.parse(guess);

    if (number1 < intValue) {
      print("your number is lower");
    }else if (number1 > intValue) {
      print("your number is higher");
    }if (number1 == intValue) {
        print("correct it was $intValue it took you $totalGuesses tries");
    }if (totalGuesses == 5) {
      guessing = true;
    }
  }
}