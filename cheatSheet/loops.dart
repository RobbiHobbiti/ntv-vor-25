import 'dart:math';
import 'dart:io';


void main(List<String>arguments) {
  bool playAgain = true;
  while (playAgain == true) {
    var intValue = Random().nextInt(100);
    print("Guess a number between 1 - 100 you have 5 tries");
    int totalGuesses = 0;
    bool guessing = false;
    while (guessing == false || totalGuesses == 5) {
      print(intValue);
      String guess = stdin.readLineSync() ?? '0';
      totalGuesses = totalGuesses + 1;
      int number1 = int.parse(guess);

      if (number1 < intValue) {
        print("your number is lower");
      } else if (number1 > intValue) {
        print("your number is higher");
      }
      if (number1 == intValue) {
        print("correct it was $intValue it took you $totalGuesses tries");
        guessing = true;
      }
      if (totalGuesses == 5) {
        guessing = true;
      }
    }
    print("do you want to play again?\nYes or No");
    String playagain = stdin.readLineSync()?.toLowerCase() ?? "";
    if (guessing = true) {
      if (playagain.contains("yes")) {
        continue;
      } else {
        playAgain = false;
      }
    }
  }
}
