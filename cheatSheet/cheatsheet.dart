void main(List<String> arguments) {
  String firstName = "Róbert";
  String lastName = "Óli";
  print("Hi $firstName $lastName");
//Hér prentar hún út Róbert Óli
  String fullName = firstName + " " + lastName;
  print("Hi $fullName");

  String SSN = "070105-2090";
  int ssnLength = SSN.length;
  print(ssnLength);
  //
  String message = "Hello World";
  String fixmessage = message.replaceAll("Wrold", "NTV");
  print(fixmessage);

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String Email = "robbihobbiti@gmail.com";
  print("email sent to $Email");
}