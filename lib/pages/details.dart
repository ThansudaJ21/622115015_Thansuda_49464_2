import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  // const DatailsPage({ Key? key }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Datails"),),
      body: ListView(
        children: [
          Text("Details Explanation")
        ],
      ),
    );
  }
}