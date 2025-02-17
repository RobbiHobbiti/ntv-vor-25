import 'dart:io';

void main(List<String> arguments) {
/*  print("Hvað er uppáhalds talan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("Hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");

  int nr1 = 25;
  int nr2 = 3;
  double result2 = nr1 / nr2;
  print("25 deilt með 3 er:");
  print(result2);
  print(result2.toStringAsFixed(3));

  print("Hæ hvað heitir þú?");
  String firstName = stdin.readLineSync().toString();
  print("Hello $firstName");
  print("Hvað er eftir nafnið þitt");
  String lastName = stdin.readLineSync().toString();
  firstName = "Jón";
  print("Blessaður $firstName $lastName");*/
  String firstName = "Róbert Óli";
  String lastName = "Brynjarsson";
  String fullName = firstName + " " + lastName;
  String url =   "ntv.is";

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);

  String username = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  username.toLowerCase();
  print(username);
  String emailAddress = username + "@" + url;
  print(emailAddress);
}
