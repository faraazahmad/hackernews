import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'article_layout.dart';

class ArticlePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ArticlePageState();
}

class ArticlePageState extends State<ArticlePage> {
  List<Widget> _pageElements = <Widget>[];

  @override
  Widget build(BuildContext context) {
    _getContent();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('View Post'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[50],
        child: _buildPage()
      ),
    );
  }

  ListView _buildPage() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _pageElements[index],
      itemCount: _pageElements.length,
    );
  }

  void _getContent() {
    _pageElements.add(ArticleLayout(
      by: "dhouston",
      url: "http://www.getdropbox.com/u/2/screencast.html",
      score: "111",
      title: "My YC app: Dropbox - Throw away your USB drive",
      type: "story",
      time: "1175714200",
      id: "8863",
    ));
  }
}