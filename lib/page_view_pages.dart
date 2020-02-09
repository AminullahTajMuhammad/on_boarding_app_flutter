import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final String title;
  final String desc;
  final String imgUrl;

  Pages(this.title, this.desc, this.imgUrl);

  @override
  State<StatefulWidget> createState() => new PagesState(this.title, this.desc, this.imgUrl);
}


class PagesState extends State<Pages> {
  String title;
  String desc;
  String imgUrl;

  PagesState(this.title, this.desc, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              imgUrl,
              fit: BoxFit.fitWidth,
              height: 200,
              width: 500,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
