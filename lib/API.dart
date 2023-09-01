//get data from api
import 'dart:convert';

import 'news_source.dart';
import 'package:http/http.dart'as http;
class ApIHelper{ // webserver
  static List<News> news = [];
  static List<News> newsApp = [];
  static Future<List<News>> incomeNews()async{
    var url = 'http://www.mocky.io/v2/5ecfddf13200006600e3d6d0';
    List<News> news = [];
    var response = await http.get(Uri.parse(url));
    if(response.statusCode ==200){

      var jsonElements = json.decode(response.body);// decode every json from json to dart and then store it
      for(var element in jsonElements)
      {
        news.add(News.fromJson(element));

      }
    }
    return news;
  }


}