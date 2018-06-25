import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ArticlePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ArticlePageState();
}

class ArticlePageState extends State<ArticlePage> {
  Text _pageTitle;

  @override
  Widget build(BuildContext context) {
    _getContent();
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: _buildPage(),
    );
  }

  Widget _buildPage() {
    return _pageTitle;
  }

  void _getContent() {
    var url = "https://hacker-news.firebaseio.com/v0/item/8863.json?print=pretty";
    http.get(url)
    .then((response) {
      setState(() {
        _pageTitle = Text(response.body);
      });
    });
  }
}