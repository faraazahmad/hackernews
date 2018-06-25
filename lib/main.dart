import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hacker News'),
          elevation: 0.0,
          backgroundColor: Colors.orange,
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
                onTap: () => _navigateToArticle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToArticle(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text('View Post'),
            backgroundColor: Colors.white,
          ),
          body: ArticlePage(),
        );
      }
    ));
  }
}