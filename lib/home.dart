import 'package:flutter/material.dart';
import 'article.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _navigateToArticle(context),
      child: Text('View Article'),
    );
  }

  void _navigateToArticle(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ArticlePage(),
    ));
  }
}