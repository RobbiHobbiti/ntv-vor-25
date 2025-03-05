import 'dart:math';

import 'package:ntv_vor_25/methods.dart';

void main() {
  company Bonus = company(id: 1,
    name: "bónus",
    domainURl: "bonus.is",
    type: "supermarket",);
  company Kronan = company(id:2,
      name: "Kronan",
      domainURl: "Kronan.is",
      type: "supermarket",);
  company Steypustodin = company(id: 3,
      name: "Steypustöðin",
      domainURl: "steypustodin.is",
      type: "building");
  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);


  List<String> employees = getNamesList();
  List<employee> employeesTransformed = [];
  //lúppum í gegnum listan
  for ( String employeesName in employees) {
    //búum til username með createUserName functioninni fyrir eðan
    String username = createUserName(employeesName);
    var random = Random();
    int randomCompany = random.nextInt(3);
    int randomAge = random.nextInt(60);
    int age = randomAge + 20;
    company temoCompany = myCompanyList[randomCompany];
    //búum til nýtt "employee" object. p,s, Object er basically oggkar
    //tegund af string eða int eða bool bara aðeins flókknara og getur geymt meira
    employee newEmployee = employee(
      name: employeesName, age: 22, username: username, employer: temoCompany,);
    //Bætum þessum newEmployee i lista listan okkar sem við bjuggum til.    employeesTransformed.add(newEmployee);
    //prentum út
  employeesTransformed.add(newEmployee);
  }
  for (employee e in employeesTransformed){
      if (e.employer.id == 1) {
        print(e.name);
        print(e.age);
        print(e.username);
        print(e.employer.name);
        print(e.employer.type);
        print("_________________________________________________");
      }
    }
  }
//Hérna er employee objectið okkar
class employee {
  String name;
  int age;
  String username;
  company employer;
  employee({required this.name,required this.age,required this.username, required this.employer});
}

// hér er comðany classin okkar
class company {
  int id;
  String name;
  String domainURl;
  String type;
  company({required this.id, required this.name, required this.domainURl, required this.type,});
}

//Hérna er createUserName functionið okkar.

String createUserName(String tempName) {
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName+ lastName.substring(0,1) + lastName.substring(0,3);
  username = removeIcelandicLetters(username);
  username.toLowerCase();
  return username;
}


//Remove icelandic letters.
String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}