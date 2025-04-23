import "dart:convert";

import "package:http/http.dart" as http;

void main() async {
  print(await pokemonApi());
  /*print(await getDadjoke());*/
}

/*
Future getDadjoke() async {
  Uri url = Uri.parse("https://icanhazdadjoke.com/");
  final response = await http.get(url, headers: {
    "accept": "application/json",
  });
  var data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return data["joke"];
  } else {
    throw Exception("Hey eitthvað fór úrskeiðis");
  }
}

Future fetchRandomQuote() async{
  final response = await http.get(Uri.parse("https://api.quotale.io/random"));

  if(response.statusCode == 200) {
    var quoteData = jsonDecode(response.body);
    print("Random quote: ${quoteData['content']} -- ${quoteData['author']}");
  }else{
    throw Exception('faild to fetch the quote');
  }
}*/
/*

Future getPost() async {
  int postIndex = 2;
  Uri url = Uri.parse("http://jsonplaceholder.typicode.com/posts/$postIndex");
  final response = await http.get(url);
  final data = jsonDecode(response.body);
  print(data);
}*/


Future pokemonApi()async{
  Uri url = Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=151&offset=0");
  final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      for (int i = 0; i < data['results'].length; i++) {
      print(data['results'][i]['name']);
    }
  }
}