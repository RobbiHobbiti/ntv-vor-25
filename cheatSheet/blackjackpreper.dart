// Hvað er object oriened programing (oop)
// Forritunarstíll sem byggir á því að skipuleggja kóða í kringum "Hluti / objects", þessir hlutir sameiga gögn og aðgerðir sem auðvelt er að endurnýta
// dry: dont repeat yourself. reynum að nota allt eins re-usable og hægt er


// 4 lykilatriði
// 1.kalssi (class)
// 2.hlutir (objects)
// 3.hjúpun (encapulation)
// 4.arfgengi (inheritance)

// Dæmi: car class

class car {
  String brand;
  String model;
  int speed;

car({required this.brand, required this.model, required this.speed});

// aðferið

void drive(){
  print("$brand $model er að keyra á $speed km/h");
}
void brake(){
  this.speed = 0;
  print("$brand $model hefur stöðvað");
}
}

void main() {
//  búum til objectin þar
car volvoxc90 = car(brand: "volvo", model: "xc90", speed: 100);

volvoxc90.drive();
volvoxc90.brake();

// **verkefni**
// búa till class sem heytir person
// person er með nafn og aldur og starf
// búa til method sem prentar út nafnið - afmæli sem ár bætist við á aldurinn - seigja upp. prenta út uppsögn eða bar hættir i $job takk fyrir mig
  Person mannur = Person(
      name: 'kalli', age: 200, job: "Stripper", birthDate: "january 4th");

  mannur.persona();
  mannur.aldur();
  mannur.proffesion();
}
class Person{
  String name;
  String birthDate;
  int age;
  String job;

  Person({required this.name, required this.age, required this.job, required this.birthDate});


  void persona(){
    print("hallo ég er $name og er $age ára gamall");
  }
  void aldur(){
    age++;
    print("Ég á afmæli :$birthDate og verð þá");
  }
  void proffesion(){
    print("ég vinn sem $job");
    print("nuna ættla ég að hætta sem $job takk fyrir mig");
  }
}