import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './screens/detail.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: ListView(children: <Widget>[
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
      ],),),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('First Route'),
    //   ),
    //   body: ListView(children: <Widget>[
    //     ListTile(
    //       leading: Icon(Icons.ac_unit),
    //       title: Text('AC Unit'),
    //       onTap: () {
    //         Navigator.push(
    //           context,
    //           CupertinoPageRoute(
    //             builder: (context) => DetailPage()
    //           ),
    //         );
    //       },
    //     )
    //   ],),
    // );
  }
}
