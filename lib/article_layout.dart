import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import "package:quiver/time.dart";

class ArticleLayout extends StatelessWidget {
  final String  by, 
//              descendants,
                id,
//              kids,
                score,
                time,
                title,
                type,
                url;
  
  ArticleLayout({
    @required this.by,
    @required this.id,
    @required this.score,
    @required this.time,
    @required this.title,
    @required this.type,
    @required this.url
  });

  @override
  Widget build(BuildContext context) {
      var content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.type,
            style: TextStyle(
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            this.title,
            style: Theme.of(context).textTheme.headline,
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.blue,
                  onPressed: () {},
                  child: Text(this.score),
                ),
                FlatButton(
                  textColor: Colors.blue,
                  onPressed: () {},
                  child: Text("VISIT LINK"),
                ),
              ],
            ),
          ),      
        ],
      );

      return Container(
        padding: EdgeInsets.only(
          top: 15.0,
          left: 15.0
        ),
        color: Colors.white,
        child: content,
      );
    }
}