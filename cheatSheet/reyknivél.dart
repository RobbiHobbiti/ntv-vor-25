// Reyknivél
// promta user - byðja um 2 tölur og lista af apgerpum t.d. (+ - / *)
// ráðum hvort að vip byðjum um báðar í einu eða sitthvoru læagi

import 'dart:io';

void main() {
  print("==========CALCULATOR==========");
  print('if you want to exit type "exit"');


  bool calc = true;
  while (calc == true) {
    String input = stdin.readLineSync() ?? "";

    if (input.contains("+")) {
      List nums = input.split("+");
      nums.remove("+");
      double num1 = double.parse(nums[0]);
      double num2 = double.parse(nums[1]);
      double sum = num1 + num2;
      print("$num1 + $num2 = $sum");
    } else if (input.contains("-")) {
      List nums = input.split("-");
      nums.remove("-");
      double num1 = double.parse(nums[0]);
      double num2 = double.parse(nums[1]);
      double sum = num1 - num2;
      print("$num1 - $num2 = $sum");
    } else if (input.contains("*")) {
      List nums = input.split("*");
      nums.remove("+");
      double num1 = double.parse(nums[0]);
      double num2 = double.parse(nums[1]);
      double sum = num1 * num2;
      print("$num1 * $num2 = $sum");
    } else if (input.contains("/")) {
      List nums = input.split("/");
      nums.remove("/");
      double num1 = double.parse(nums[0]);
      double num2 = double.parse(nums[1]);
      double sum = num1 / num2;
      print("$num1 / $num2 = $sum");
    } else if (input.contains("exit"));
    break;
  }
}
