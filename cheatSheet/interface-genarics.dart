/*
import 'dart:io';

import 'Classes.dart';

*/
/*
void main(){
  banas monster = banas("Goblin");
  monster.seeAMonster();
  monster.fightTheMonster();
  monster.defeatTheMonster();
}


  *//*

*/
/*Dog dog = Dog("snati");
  Bird bird = Bird("Tídó fugl");
  dog.makeSound();
  bird.makeSound();
  dog.poop();
  bird.poop();
  dog.sleep();
  bird.sleep();
}
  BakeCake DevilsCake = BakeCake();

  DevilsCake.preHeatOven();
  DevilsCake.putEggInCakeMix();
  DevilsCake.putInOven();

}

//interface ?? say what???
abstract class CakeRecipe {

  void putEggInCakeMix();
  void putInOven();
  void preHeatOven();
}


class BakeCake implements CakeRecipe {

  @override
  void putInOven() {
    print("open the oven figure out 200° celcius is to high cake is going to burn");
  }

  @override
  void preHeatOven() {
    sleep(Duration(milliseconds: 1000));
    print("turning the oven on 200 ° celcius fan mode");
  }

  @override
  void putEggInCakeMix() {
    print("crack an egg and pour it into the mix");
  }


}

//Animal class
abstract class Animal {
  void makeSound();
  void sleep();
  void poop();

}

//some animal implements

class Dog implements Animal{
  String name;

  Dog(this.name);

  void buryABone() {
    print("$name burys a bone");
  }

  @override
  void makeSound() {
    print("$name says: woff woff");
  }

  @override
  void poop() {
    print("$name poops like a dog");
  }

  @override
  void sleep() {
    print("$name slleps");
  }

}

class Bird implements Animal {

  String name;

  Bird(this.name);

  @override
  void makeSound() {
    print("the bird says TWEET TWEET!");
  }

  @override
  void poop() {
    print("the bird shits on my car");
  }

  @override
  void sleep() {
    print("the bird doesn't sleep");
  }

}*//*
*/
/*



// gera einnhvern abstract class og implementa hann í class

abstract class MonsterFight {
  void seeAMonster();
  void runFromMonster();
  void fightTheMonster();
  void dieFromMonster();
  void defeatTheMonster();

}


class banas implements MonsterFight{

  String monster;

  banas(this.monster);

  @override
  void dieFromMonster() {
    print("You died");
  }

  @override
  void fightTheMonster() {
    print("You decided to fight the $monster");
  }

  @override
  void runFromMonster() {
    print("You decided to run from the $monster");
  }

  @override
  void seeAMonster() {
    print("You see a monster its a $monster");
  }

  @override
  void defeatTheMonster() {
    print("you defeated the $monster you have been awarded *nothing(WOW)*");
  }

}

*//*


//generics, WHAT IS THAT?

// types
//String, int, List, Object, enum..
//Generic type <T>

*/
/*
class UsersBox<T>{
  List<T> users;

  UsersBox(this.users);

}

void main(){
   UsersBox<int> intBox = UsersBox(<int>[1,2]);
   UsersBox<String> stringBox = UsersBox(["hello","wrold"]);
}

*//*


// vehicle Factory

abstract class Vehicle {
  void start();
  void stop();

}

class Car implements Vehicle {
  @override
  void start() {
    print("car is starting");
  }

  @override
  void stop() {
    print("car is stoping");
  }

}

class Motorbike implements Vehicle {
  @override
  void start() {
    print("Motorbike is starting");
  }

  @override
  void stop() {
    print("motorbike is stoping");
  }

}

class Truck implements Vehicle {
  @override
  void start() {
    print("The truck is starting");
  }

  @override
  void stop() {
    print("The truck is stoping");
  }

}

class Garage{
  List <vehicle> vehicles = [];

  void addVehicles(vehicle){
    vehicle.add(vehicle);
    print("$vehicle has been added to the garage");
  }

  void startAll (){
    for(var Vehicle in vehicles){
      Vehicle.start();
    }
  }
}

void main(){
  Truck truck = Truck();
  Car car = Car();
  Motorbike motorbike = Motorbike();

  Garage myGarage = Garage();

  myGarage.addVehicles(truck);
  myGarage.addVehicles(car);
  myGarage.addVehicles(motorbike);

}*/

class Product {
  String name;
  Product(this.name);

  String getName(){
    return name;
  }
}
class Inventory<T extends Product>{
  List<Product> items = [];

  void addItem(Product item){
    items.add(item);
  }

  void showItem(){
    print("-------Inventory------");
    for(Product item in items){
      print(item.name);
    }
  }
}

void main(){
  Product shampoo = Product("Shampoo");

  Inventory myInventory = Inventory();
  myInventory.addItem(shampoo);
  myInventory.showItem();
}