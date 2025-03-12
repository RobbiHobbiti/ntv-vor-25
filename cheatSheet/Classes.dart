// Classes
import 'dart:io';

class Person {

  String name;
  int age;
  String? gender;

  Person({required this.name,required this.age, this.gender});

  void introduce(){
    print("Hi, i am $name and i am $age years old");
  }

}

class vehicle {
  String brand;
  int year;

  vehicle({required this.brand, required this.year});


  void displayInfo() {
    print("$brand - $year");
  }
}

// Class ** extends bætir við í class
class Car extends vehicle {
  int doors;
  String type;
  int mileage;

  Car(
      {required this.doors, required this.type, required this.mileage, required super.brand, required super.year});

  void showMoreInfo() {
    print("Doors: $doors - type: $type - mileage: $mileage");
  }
}

void main(){
  Car car1 = Car(doors: 4, type: "avensis", mileage: 102000, brand: "toyota", year: 2010);

  car1.displayInfo();
  car1.showMoreInfo();
}


/*
void main(){

  Person person1 = Person(name: "Robbi", age: 20);
  Person person2 = Person(name: "Óðinn smelly", age: 19,gender: "gender bender" );

  print("Hann er ${person2.name} og er bara ${person2.age} gamall og er ${person2.gender}");
  person1.introduce();
}

void main(){

  // biðja um nafn
  print("Enter your name");
  String? name = stdin.readLineSync();

  // biðja um aldur
  print("Enter your age");
  int? age = int.parse(stdin.readLineSync()!);

  // biðja um gender
  print("enter your gender (optinal)");
  String? gender = stdin.readLineSync();

  Person user = Person(name: name!, age: age, gender: gender);
  user.introduce();
}*/



String? validateiput(String? input){
  if(input == null || input.trim().isEmpty){
    print("input cannot be empty or white space");
    return "invalid";
  }
  return input;
}