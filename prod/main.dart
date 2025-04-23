import "dart:convert";
import "dart:io";
import "package:crypto/crypto.dart";

void main() {
  final colors = {
    Color.black: "\x1b[30m",
    Color.red: "\x1b[31m",
    Color.yellow: "\x1b[33m",
    Color.white: "\x1b[37m",
    Color.reset: "\x1b[0m",
  };
  myUser myuser = myUser();
  print(colors[Color.yellow]);
  showMenu();
  String inputMenu = stdin.readLineSync().toString();
  if (inputMenu == "1") {
    myuser.state = State.connecting;
    signUpUser();
    myuser.state = State.authenticated;

  } else if (inputMenu == "2") {
    print("HEllo");
    List<userInDB> mydatabase = getDatabase();
    print("HEllo");
    myuser.state == State.connecting;
    authenticationMethod(mydatabase)
        ? myuser.state = State.authenticated
        : myuser.state = State.unauthenticated;
  }
  if (myuser.state == State.authenticated) {
    print(colors[Color.red]);
    printSecretMessage();
  } else {
    print("You are not ready for the secret.");
  }
}

void showMenu() {
  print("1. Sign Up");
  print("2. Login");
  print("3. Exit");
}

void printSecretMessage() {
  print("You are in.");
  print("The secret is....");
  print("Operation: Disappear");
  final SecretMessage = File("files/secret.txt");
  final readfile = SecretMessage.readAsLinesSync();
  for (var line in readfile) {
    print(" - $line");
  }
  print(
    "Líf þitt mun aldrei verið það sama ef þú hverfur í 90 daga. Sjáumst aftur eftir 90 daga.",
  );
}
void signUpUser() {
  print("Signup");
  print("Enter Username:");
  String usernameInput = stdin.readLineSync().toString();
  print("Enter password:");
  String passwordInput = stdin.readLineSync().toString();
  var bytes = utf8.encode(passwordInput);
  var inputHashed = sha256.convert(bytes).toString();
  print("$bytes");
  final _FILE = File("files/database.csv");
  final WriteTo_FILE = _FILE.openWrite(mode: FileMode.append);
  WriteTo_FILE.writeln("\n$usernameInput;$inputHashed");
  WriteTo_FILE.close();
}
bool authenticationMethod(List<userInDB> mydb) {
  print("Enter your username");
  String username = stdin.readLineSync().toString();
  print("Enter your password");
  String password = stdin.readLineSync().toString();
  var bytes = utf8.encode(password);
  var inputHashedPassword = sha256.convert(bytes).toString();
  print("* Checking if $username exists");
  bool isAuthenticated = false;
  for (var user in mydb) {
    if (user.username == username) {
      print("* $username was found");

      if (user.password == inputHashedPassword) {
        isAuthenticated = true;
      } else {
        print("* Incorrect password");
      }
    }
  }
  return isAuthenticated;
}
enum State { authenticated, unauthenticated, connecting }

List<userInDB> getDatabase() {
  final _FILE = File("files/database.csv");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for (String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    userInDB tempUser = userInDB(
      username: splitLine[0],
      password: splitLine[1],
    );
    users.add(tempUser);
  }
  return users;
}
class userInDB {
  String username;
  String password;
  userInDB({required this.username, required this.password});
}
class myUser {
  State state;
  myUser({this.state = State.authenticated});
}
enum Color {
  black,
  red,
  yellow,
  white,
  reset
}
