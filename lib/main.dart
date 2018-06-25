import 'package:flutter/material.dart';
import 'home.dart';
import 'article.dart';

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
      routes: <String, WidgetBuilder>{
        '/article': (BuildContext context) => ArticlePage(),
      },
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