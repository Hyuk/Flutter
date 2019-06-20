import 'package:flutter/material.dart';
import './detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Detail"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('AC Unit'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return DetailScreen();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('AC Unit'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return DetailScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}