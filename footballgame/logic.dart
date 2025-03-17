import 'dart:math';

class fact {
  footballTeam team;
  footballPlayer player;
  String action;

  fact({required this.team, required this.player, required this.action});
}

class footballGame {
  footballTeam homeTeam;
  footballTeam awayTeam;
  int homeTeamScore;
  int awayTeamScore;
  int time;
  List<fact> matchFacts = [];
  footballGame(
      {required this.homeTeam,
      required this.awayTeam,
      this.homeTeamScore = 0,
      this.awayTeamScore = 0,
      this.time = 0});

  void printMatchFacts() {
    print("========MATCH SUMMARY========");
    for (fact matchFact in this.matchFacts) {
      print(
          "${matchFact.team.name}-${matchFact.player.getName()}-${matchFact.action}");
      print("============================");
    }
  }

  void playGame(int minute) {
    this.time = minute;
    Random r1 = new Random();
    int randomNumber1 = r1.nextInt(11);
    int randomNumber2 = r1.nextInt(11);
    int randomNumber3 = r1.nextInt(10);
    if (randomNumber1 == randomNumber2) {
      print("það var mark!");
      if (randomNumber1 >= 6) {
        print(
            "${this.homeTeam.players[randomNumber3 + 1].getName()} er komin í færi");
        if (didHeScore(this.homeTeam.players[randomNumber3 + 1])) {
          print("Og hann skorar");
          fact tempfact = fact(
              team: this.homeTeam,
              player: this.homeTeam.players[randomNumber3 + 1],
              action: "skoraði mark");
          this.matchFacts.add(tempfact);
          this.homeTeamScore++;
        } else {
          print("Hann klúðrar");
        }
      } else {
        print(
            "${this.awayTeam.players[randomNumber3 + 1].getName()} er komin í færi");
        if (didHeScore(this.awayTeam.players[randomNumber3 + 1])) {
          print("Og hann skorar");
          fact tempfact = fact(
              team: this.awayTeam,
              player: this.awayTeam.players[randomNumber3 + 1],
              action: "skoraði mark");
          this.matchFacts.add(tempfact);
          this.awayTeamScore++;
        }
        print("${minute}: ${homeTeamScore} - ${awayTeamScore}");
      }
    }
  }
}

class footballTeam {
  String name;
  String league;
  String country;
  List<footballPlayer> players;
  footballTeam(
      {required this.name,
      required this.league,
      required this.country,
      required this.players});

  void showTeam() {
    print("the ${this.name} line up");
    this.players.forEach((player) {
      print("${player.position} - ${player.getName()}");
    });
  }
}

class footballPlayer {
  int squadNumber;
  String firstName;
  String lastName;
  String position;
  footballPlayer(
      {required this.squadNumber,
      required this.firstName,
      required this.lastName,
      required this.position});

  String getName() {
    return "${firstName.substring(0, 1)}";
  }
}

bool didHeScore(footballPlayer p1) {
  bool result = false;
  Random random1 = new Random();
  int odd = random1.nextInt(10);
  int scoreodds = 0;
  if (p1.position == "Goalkeeper") {
    scoreodds = 1;
  } else if (p1.position == "defender") {
    scoreodds = 3;
  } else if (p1.position == "midfilder") {
    scoreodds = 7;
  } else if (p1.position == "forward") {
    if (p1.lastName == "Núñez") {
      scoreodds = 3;
    }
    scoreodds = 9;
  }
  if (scoreodds >= odd) {
    result = true;
  }
  return result;
}


















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
      int p1Score = abc + abd;
      print('Round $rounds');
      print("$p1 rolled a $abc and $abd that makes $p1Score");
    }

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
      int p2Score = pop + ice;
      print('Round $rounds');
      print("$p2 rolled a $pop and $ice that makes $p2Score");
    }
  }
}