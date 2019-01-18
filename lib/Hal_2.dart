import 'package:flutter/material.dart';
class Pohon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Halaman 2", style: new TextStyle(fontSize: 30.0,),
            ),
            new Padding(padding:  EdgeInsets.all(30.0),),
             new Image.asset("images/spider.jpg", width: 200.0,),
          ],
        ),
      ),
    
    );
  }
}