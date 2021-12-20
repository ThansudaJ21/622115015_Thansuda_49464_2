import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterdev/pages/details.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Flutter knowledge",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          builder: (context, snapshot){
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(itemBuilder: (BuildContext context, int index) {
              return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['image']);
            },
            itemCount: data.length,);
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        )
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String image) {
    return Container(
      margin: EdgeInsets.only(top:20),
      padding: EdgeInsets.all(20),
      height: 180,
      decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {
            print("next page >>");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));       
            }, 
          child: Text("read more"))
        ],
      ),
    );
  }
}
