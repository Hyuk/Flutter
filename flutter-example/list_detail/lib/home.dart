import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('AC Unit'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => DetailPage()
                ),
              );
            },
          )
        ],
      ),

      // body: Center(
      //   child: RaisedButton(
      //     child: Text('Open route'),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => SecondRoute()),
      //       // );
      //       Navigator.push(
      //         context,
      //         CupertinoPageRoute(builder: (context) => DetailPage()),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
