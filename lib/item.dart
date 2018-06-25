import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Item extends StatelessWidget {
  final String  by, 
//              descendants,
                id,
//              kids,
                score,
                time,
                title,
                type,
                url;
  
  Item({
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
      return InkWell(
        splashColor: Colors.orangeAccent,
        highlightColor: Colors.orangeAccent,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(this.score),
              Column(
                children: <Widget>[
                  Text(this.by),
                  Text(this.title),
                ],
              )
            ],
          ),
        ),
      );
    }
}