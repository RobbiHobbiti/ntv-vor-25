import 'dart:io';

import 'package:ntv_vor_25/methods.dart';
void main(List<String> arguments) {
  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
*/
  print("Hvað heitir þú?");
  String firstName = stdin.readLineSync().toString();
  String message = "Ertu Glaður?";
  print("Góðan dægin $firstName $message");

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
*/

  String name = "Dr. Seuss";
  String msg = "You know you're in love when you can't fall asleep because reality is finally better than your dreams.";
  print("$name once said:$msg");

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */
  String Msg = "Hello";
  print("$Msg");
  Msg = "bless";
  print("$Msg");
  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  String fixNureseryRyhme = NureseryRyhme.replaceAll(" ", "");
  print("$fixNureseryRyhme");
  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */
  print("whats your first name?");
  String FirstName = stdin.readLineSync().toString();
  print("whats your last name?");
  String lastName = stdin.readLineSync().toString();
  String fullName = FirstName + " " + lastName;
  print("Hello $fullName".toUpperCase());
  String fixName = "Róbert";
  print("hallo $fixName $lastName");
  print("${FirstName[0].toUpperCase()}${FirstName.substring(1).toLowerCase()} ${lastName[0].toUpperCase()}${lastName.substring(1).toLowerCase()}");

  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";

  String fixSSN1 = SSN1.replaceAll("-", "");
  String fixSSN2 = SSN2.replaceAll(" ", "");
  String fixSSN3 = SSN3.replaceAll(" ", "");

  print("$fixSSN1");
  print("$fixSSN2");
  print("$fixSSN3");

  /*
  Bónus task calculate the age from the SSN.
   */

  
}
