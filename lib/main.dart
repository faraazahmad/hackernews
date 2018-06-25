import 'package:flutter/material.dart';
import 'home.dart';

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
          backgroundColor: Colors.orange,
        ),
        body: HomePage(),
      ),
    );
  }
}