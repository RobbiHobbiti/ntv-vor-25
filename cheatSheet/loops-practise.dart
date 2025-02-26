import 'dart:io';
void main(){
/*
  List<String> pizzaToppings = [];
  print('what want on pizza?');
  bool pizza = true;
  while(pizza = true) {
    String toppings = stdin.readLineSync() ?? '';
    if (toppings.toLowerCase() == ('quit')){
      print('so you want $pizzaToppings');
      pizza = false;
      break;
    }
    pizzaToppings.add(toppings);
    print('ill add $toppings anything else if no type quit');
    print(pizzaToppings);
  }

  String word = 'NTV';

  for(int i = 0; i < word.length; i++){
    print(word[i]);
  }
*/
  List pizza = ['Pepporoni','hawaiian','cheese','margherita'];
  for(String pizzas in pizza){
    print('i love eating $pizzas pizza');
  }
  print('all pizza is great');
}
