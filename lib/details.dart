import 'package:flutter/material.dart';
import 'package:newsapp/DetailsPage.dart';
import 'package:newsapp/API.dart';
import 'package:newsapp/mainScreen.dart';



void main(List<String> args) {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    ApIHelper.incomeNews().then((value) {
      ApIHelper.news.addAll(value);
      ApIHelper.newsApp= ApIHelper.news;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainScreen',
      routes: {
        'mainScreen': (context) =>MainScreen(),
        'DetailsPage': (context) =>DetailsPage(),
      },
    );
  }
}
