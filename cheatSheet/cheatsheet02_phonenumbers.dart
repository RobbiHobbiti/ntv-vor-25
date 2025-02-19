import 'dart:io';

void main(List<String> arguments) {
  // input: taka á móti símanúeri
  // validate phone number
  //símanúmer eru 7 stafir
  //Notendur eiga til að skrifa símanúmer með"-"
  //Notendur eiga til að skrifa símanúmer með" "
  //Notendur eiga til að hafa country code me þ.e. "+354"

  bool validNumber = false;
  while (validNumber == false) {
    print("phone number:");
    String phoneNumber = stdin.readLineSync().toString();
    print("þú skrifaðir $phoneNumber");
    if (phoneNumber.contains("+354") == true) {
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print("þú settir +354 allt í góðu eg tók það út");
    }
    if (phoneNumber.length == 8 || phoneNumber.length == 9) {
    phoneNumber = phoneNumber.replaceAll("-", "");
    phoneNumber = phoneNumber.replaceAll(" ", "");
    }
    print("ég mun breyta þessu ef það eru bara tölustafir í $phoneNumber");
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int) {
      print("ok cool ég er með rétta leingd og þetta eru bara tölustafir");
    }
    if (phoneNumber[0] != "1" "2" "3") {
      print("þetta símanúmer virkar");
        validNumber = true;

    }
  }
}
