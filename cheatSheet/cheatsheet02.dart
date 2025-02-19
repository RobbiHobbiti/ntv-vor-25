import 'dart:io';

void main(List<String>arguments) {
/*
int personAge = 14;
int driverLicenseAge = 17;
bool doesPersonHaveDriversLicense = false;
print(personAge);
if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == true) {
print("þú mátt keyra");
  }  else if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == false)  {
  } else {
  print("takt þú strætó");
  }

if(!(5>7)){
  print("this is true");
  }*/
bool authenticated = false;
while(authenticated != false) {
  String myPassword = "MasterOfTheWorld123!";
  String username = "admin";

  print("enter your username");
  String loginuser = stdin.readLineSync().toString();
  print("Enter your password");
  String loginPassword = stdin.readLineSync().toString();

  if (loginuser.toLowerCase() == username.toLowerCase() && loginPassword == myPassword) {
    print("you are inn welcome to the jungle");
    authenticated = true;
  }else{
    print("username or password incorrect");
    print("please try again");
  }
}

  String myPassword = "MasterOftheworld123!";
  String username = "admin";

  print("enter your username");
  String loginuser = stdin.readLineSync().toString();
  print("Enter your password");
  String loginPassword = stdin.readLineSync().toString();

  if (loginuser.toLowerCase() == username.toLowerCase() && loginPassword == myPassword) {
    print("you are inn welcome to the jungle");
  }else{
    print("username or password incorrect");
    print("please try again");
  }
}