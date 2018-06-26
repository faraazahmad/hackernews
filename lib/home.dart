import 'package:flutter/material.dart';
import 'article.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePageListItem(
      by: "Faraaz",
      type: "story",
      title: "Introduction to Neural Networks: Part 1",
      url: "https://hackernews.com",
      time: "1175714200",
      score: "115",
      id: "45",
    );
  }

}

class HomePageListItem extends StatelessWidget {
  final String  by, 
//              descendants,
                id,
//              kids,
                score,
                time,
                title,
                type,
                url;
  
  HomePageListItem({
    @required this.by,
    @required this.id,
    @required this.score,
    @required this.time,
    @required this.title,
    @required this.type,
    @required this.url
  });

  void _navigateToArticle(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ArticlePage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var item = Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(this.title),
            subtitle: Text(" by " + this.by + " at " + this.time),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('VIEW POST'),
                  onPressed: () => _navigateToArticle(context),
                ),
                FlatButton(
                  child: const Text('VISIT LINK'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return item;
  }
}