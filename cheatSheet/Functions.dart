import 'dart:io';

void main() {
  print("the light bulb is.....");
  bool myLightSwitch = true;
  while (true) {
    myLightSwitch = turnOnOrOff(myLightSwitch);
    displayLightBulbStatus(myLightSwitch);
    print("should we check again");
    stdin.readLineSync();
  }
}

bool turnOnOrOff(bool lightswitch) {
  return !lightswitch;
  /*bool result;
  if(lightswitch = true) {
    result = false;
  }else{
    result = true;
  }
  return result;*/
}

void displayLightBulbStatus (bool lightSwitch) {
  print("The light is ");
  print(lightSwitch ? "On" : "Off");
}
