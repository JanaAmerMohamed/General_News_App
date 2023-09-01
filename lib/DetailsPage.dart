import 'package:flutter/material.dart';

import '../news_source.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var singleNews = ModalRoute.of(context)?.settings.arguments as News;
    return Scaffold(
      appBar: AppBar(title:

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Row(

          children: [
            Text("Page",style: TextStyle(color: Colors.black),),
            Text("Details",style: TextStyle(color: Colors.blue),),
          ],
        ),
      ),backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Container(
          height: 1200,
          color:Colors.black,
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.network(
                    singleNews.image as String,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Text(" ${singleNews.title as String}",style: TextStyle(color: Colors.blue),),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(singleNews.text as String,style: TextStyle(color: Colors.white),),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(singleNews.text as String, style: TextStyle(color: Colors.white),),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                     child: Text(singleNews.date as String, style: TextStyle(color: Colors.blue),),
                   ),
                   Text(singleNews.author as String, style: TextStyle(color: Colors.blue),),
                ]),
          ),
        ),
      ),
    );
  }
}
