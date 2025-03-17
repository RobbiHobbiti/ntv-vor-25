// tímaverkefni: búa til contact forrit

// hvað á a forritið að gera
// 1. þú átt að geta vistað contact s.s símanúmer / nafn / email
// 2. eytt contact
// 3. seð alla vistaða contacts

import 'dart:io';

void main() {
  bool isActive = true;

  ContactManager contactManager = ContactManager();

  while (isActive == true) {
    print("\n Add contact");
    print("\n View contacts");
    print("\n Delete contacts");
    print("\n Exit");

    String? input = stdin.readLineSync();

    switch (input) {
      case "1":
        print("Enter name:");
        String? name = stdin.readLineSync();
        print("Enter the phone number:");
        String? phoneNumber = stdin.readLineSync();
        print("Enter email address:");
        String? emailAddress = stdin.readLineSync();
        break;
      case "2":
        contactManager.displayContacts();
        break;
      case "3":
        print("Enter the name of the contact you want to delete");
        String? nameToDelete = stdin.readLineSync();
        contactManager.deleteContactByname(nameToDelete!);
        break;
      case "4":
        print("Exiting...");
        isActive = false;
    }
  }
}

class contact {
  String name;
  String number;
  String email;

  contact({required this.name, required this.number, required this.email});
}

class ContactManager {
  List<contact> contacts = [];

  void displayContacts() {
    if (contacts.isEmpty) {
      print("No contacts");
      return;
    }
    print("contacts");
    for (contact contact in contacts) {
      print('${contact.name},\n${contact.number},\n${contact.email}');
    }
  }

  void addContact(contact contact) {
    contacts.add(contact);
  }

  void deleteContactByname(String name) {
    contact contactToRemove = contacts.firstWhere(
        (contact) => contact.name.toLowerCase() == name.toLowerCase(),
        orElse: () => contact(name: '', number: '', email: ''));

    if (contactToRemove != null) {
      contacts.remove(contactToRemove);
      print("Contact deleted");
    }
  }
}
