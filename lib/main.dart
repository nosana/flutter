import 'package:flutter/material.dart';

import './Hal_1.dart' as buah;
import './Hal_2.dart' as pohon;
import './Hal_3.dart' as sayuran;
import './Hal_4.dart' as tanaman;

void main (){
  runApp(new MaterialApp(
    title:"Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
    void initState() {
     controller = new TabController(vsync: this, length: 4);
      super.initState();
    }
@override
  void dispose() {
   controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         backgroundColor: Colors.amber,
         title:  new Text("Daftar"),
         bottom: new TabBar(
           controller: controller,
           tabs: <Widget>[
             new Tab(icon: new Icon(Icons.home ),text: "Beranda",),
             new Tab(icon: new Icon(Icons.favorite),text: "Suka",),
             new Tab(icon: new Icon(Icons.collections),text: "Subscription",),
             new Tab(icon: new Icon(Icons.email),text: "Kotak masuk",),
           ],
         ),
       ),
       body: new TabBarView(
         controller: controller,
         children: <Widget>[
           new buah.Buah(),
           new pohon.Pohon(),
           new sayuran.Sayuran(),
           new tanaman.Tanaman(),


         ],
       )

    );
  }
}
