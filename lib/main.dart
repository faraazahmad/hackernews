import 'package:flutter/material.dart';

void main() {
  runApp(HackerNewsApp());
}

class HackerNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Hacker News',   
      debugShowCheckedModeBanner: false,     
      color: Colors.orangeAccent,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hacker News'),
          elevation: 0.0,
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                splashColor: Colors.orangeAccent,
                highlightColor: Colors.orangeAccent,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('First Post', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}