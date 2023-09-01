import 'package:flutter/material.dart';
import 'package:newsapp/API.dart';

class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    ApIHelper.incomeNews().then((value) {
      ApIHelper.news.addAll(value);
      ApIHelper.newsApp = ApIHelper.news;
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('News App' , style: TextStyle(
            fontSize: 25,color: Colors.teal

        ),),
      ),
      body: ListView.builder(
          // itemCount: ApiHelper.newsApp.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 20.0 , right: 20 , bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),

              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, 'details',
                       arguments: ApIHelper.newsApp[index]);
                },


                leading: Image.network(ApIHelper.newsApp[index].image as String , width: 100,),
                title: Text(
                  ApIHelper.newsApp[index].title as String,
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios , color: Colors.white,),
              ),
            ),
          )),
    );
  }
}