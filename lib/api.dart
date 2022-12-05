

import 'dart:convert';

import 'package:http/http.dart';

void main() async{
  get(Uri.parse("https://api.unsplash.com/photos/random/?count=9"),
    headers: {
    "Authorization":"Client-ID XikfGv9_2XiJwmo6yu6YMGym4286SOBE0nlPSQAVssg",
    "count":"9"
  }
  ).then(
      (Response r){
        if(r.statusCode == 200) {
          List<dynamic> data = jsonDecode(r.body) as List<dynamic>;
          print(r.statusCode);
          print(data.length);
          List<dynamic> urls = <dynamic>[];
          for(Map<String,dynamic> item in data){
              print(item["urls"]["regular"]);
          }
        }
      }
  );
}