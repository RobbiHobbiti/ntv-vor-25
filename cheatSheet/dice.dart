import 'dart:io';
import 'dart:math';

void main() {
  print("============ DICE GAME ============");
  print('Type "Start" to start the game');

  bool diceGame = true;
  while (diceGame == true) {
    String start = stdin.readLineSync()?.toLowerCase() ?? "";

    if (start.contains("start")) {
      print("player 1 Type your username");
      String p1Username = stdin.readLineSync() ?? "";

      print("player 2 Type your username");
      String p2Username = stdin.readLineSync() ?? "";

      DicePlayers userNames = DicePlayers(p1: p1Username, p2: p2Username);
      userNames.game();

      diceGame = false;
    } else if (start.isEmpty || start.isNotEmpty) {
      print('Please type "start" to begin the game');
      continue;
    }
  }
}

class DiceSides {
  int Side1;
  int Side2;
  int Side3;
  int Side4;
  int Side5;
  int Side6;

  DiceSides({
    required this.Side1,
    required this.Side2,
    required this.Side3,
    required this.Side4,
    required this.Side5,
    required this.Side6,
  });

  int Roll() {
    Random Dice = new Random();
    int Roll = Dice.nextInt(6);
    Roll++;
    return Roll;
  }
}

class DicePlayers {
  String p1;
  String p2;
  int p1Score;
  int p2Score;
  int rounds;

  DicePlayers({
    required this.p1,
    required this.p2,
    this.p1Score = 0,
    this.p2Score = 0,
    this.rounds = 0,
  });

  void game() {
    bool Game = true;
    bool p1Round = true;
    bool p2Round = false;

    while (Game == true) {
      while (p1Round == true) {
        print('Round ${rounds + 1} ');
        print('$p1 type "Roll" to roll the dice');
        String input1 = stdin.readLineSync()?.toLowerCase() ?? "";
        DiceSides p1Turn = DiceSides(
          Side1: 1,
          Side2: 2,
          Side3: 3,
          Side4: 4,
          Side5: 5,
          Side6: 6,
        );
        if (input1.contains("roll")) {
          rounds++;
          int abc = p1Turn.Roll();
          int abd = p1Turn.Roll();
          p1Score =  p1Score + (abc + abd);
          print("$p1 rolled a $abc and $abd $p1 has $p1Score");
          p1Round = false;
          p2Round = true;
        }else if (input1.isEmpty || input1.isNotEmpty) {
          print('Please type "Roll" to roll the dice');
          continue;
        }
      }
      while (p2Round == true) {
        print('$p2 type "Roll" to roll the dice');
        String input2 = stdin.readLineSync()?.toLowerCase() ?? "";
        DiceSides p2Turn = DiceSides(
          Side1: 1,
          Side2: 2,
          Side3: 3,
          Side4: 4,
          Side5: 5,
          Side6: 6,
        );
        if (input2.contains("roll")) {
          int pop = p2Turn.Roll();
          int ice = p2Turn.Roll();
          p2Score = p2Score + (pop + ice);
          print("$p2 rolled a $pop and $ice $p2 has $p2Score");
          p2Round = false;
          p1Round = true;
        }else if (input2.isEmpty || input2.isNotEmpty) {
          print('Please type "Roll" to roll the dice');
          continue;
        }
      }
      if (rounds == 3) {
        print("============ Game!!! ============");
        Game = false;
        if (p1Score >= p2Score){
          print("$p1 has won with $p1Score points");
          break;
        }else if (p1Score <= p2Score){
          print("$p2 has won with $p2Score points");
          break;
        }else if (p1Score == p2Score){
          print("its a draw both players had $p1Score points");
          break;
        }
      }
    }
  }
}