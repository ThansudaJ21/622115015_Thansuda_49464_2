import 'dart:html';

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
        child: ListView(
          children: [
            MyBox(
                "What is Flutter?",
                "an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                "https://cdn.pixabay.com/photo/2021/12/01/15/37/advent-season-6838288_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "Trusted by many",
                "Flutter is supported and used by Google, trusted by well-known brands around the world, and maintained by a community of global developers.",
                "https://cdn.pixabay.com/photo/2016/12/16/15/25/christmas-1911637_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "Transform your workflow",
                "Take control of your codebase with automated testing, developer tooling, and everything else you need to build production-quality apps.",
                "https://cdn.pixabay.com/photo/2017/11/04/19/05/christmas-2918569_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String image) {
    return Container(
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
