import 'package:flutter/material.dart';
import 'package:newsapp/file4.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 130),
        child: Row(

          children: [
            Text("News",style: TextStyle(color: Colors.black),),
            Text("List",style: TextStyle(color: Colors.blue),),
          ],
        ),
      ), backgroundColor: Colors.white,),
      body:
      Container(
        color: Colors.black,
        child: ListView.builder(

            itemCount: ApIHelper.newsApp.length,
            itemBuilder: ((context, index) => ListTile(


              onTap: () {
                Navigator.pushNamed(context, 'DetailsPage',
                    arguments: ApIHelper.newsApp[index]);
              },
              leading: Icon(Icons.newspaper,color: Colors.white,),
              title: Text(
                ApIHelper.newsApp[index].title as String,
                maxLines: 1, style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
            ))),
      ),

    );
  }
}
