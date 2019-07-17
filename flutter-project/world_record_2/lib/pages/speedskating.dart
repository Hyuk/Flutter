import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:admob_flutter/admob_flutter.dart';

import '../main.dart';
import './athletics.dart';
import './inlinespeedskating.dart';
import './shorttrack.dart';
import './skijumping.dart';
//import './speedskating.dart';
import './swimming.dart';
import './trackcycling.dart';

class SpeedSkating extends StatefulWidget {
  @override
  _SpeedSkatingState createState() => _SpeedSkatingState();
}

class _SpeedSkatingState extends State<SpeedSkating> {
  AdmobBannerSize bannerSize;

  @override
  void initState(){
    super.initState();
    bannerSize = AdmobBannerSize.BANNER;
  }

  final menTitle = ['2 x 500m','500m','1000m','1500m','3000m','5000m','10000m','Team Pursuit 8 Laps','Team Sprint'];

  final menRecord = ['68.31s','33.61s','1m 06.18s','1m 40.17s','3m 37.28s','6m 01.86s''12m 36.30s''3m 35.60s','1m 17.31s'];

  final menCountry = ['Canada','Russia','Netherlands','Netherlands','Norway','Canada','Canada','Netherlands','Canada'];

  final menName = ['Jeremy Wotherspoon','Pavel Kulizhnikov','Kjeld Nuis','Kjeld Nuis','Eskil Ervik','Ted-Jan Bloemen','Ted-Jan Bloemen','Netherlands','Canada'];

  final menPlace = ['Calgary','Salt Lake City, UT','Salt Lake City, UT','Salt Lake City, UT','Calgary','Salt Lake City, UT','Salt Lake City, UT','Salt Lake City, UT','Calgary'];

  final menDate = ['2008-03-15','2019-03-09','2019-03-09','2019-03-10','2005-11-05','2017-12-10','2015-11-21','2013-11-16','2017-12-01'];

  final menFlag = ['assets/CAN.jpg','assets/RUS.jpg','assets/Netherlands.jpg','assets/Netherlands.jpg','assets/NOR.jpg','assets/CAN.jpg','assets/CAN.jpg','assets/NED.jpg','assets/CAN.jpg'];

  final womenTitle = ['2 x 500m','500m','1000m','1500m','3000m','5000m','Team Pursuit 6 Laps','Team Sprint'];

  final womenRecord = ['74.19s',' 36.36s','1m 11.61s','1m 49.83s','3m 52.02s','6m 42.01s''2m 50.87s','1m 24.84s'];

  final womenCountry = ['United States','Korea','United States','Japan','Czechia','Czechia','Japan','Russia'];

  final womenName = ['Heather Richardson','Sang-Hwa Lee','Brittany Bowe','Miho Takagi','Martina Sáblíková','Martina Sáblíková','Japan','Russia'];

  final womenPlace = ['Salt Lake City, UT','Salt Lake City, UT','Salt Lake City, UT','Salt Lake City, UT','Salt Lake City, UT','Calgary','Salt Lake City, UT','Calgary'];

  final womenDate = ['2013-12-28','2013-11-16','2019-03-09','2019-03-10','2019-03-09','2019-03-03','2017-12-08','2017-12-01'];

  final womenFlag = ['assets/USA.jpg','assets/KOR.jpg','assets/USA.jpg','assets/JPN.jpg','assets/CZE.jpg','assets/CZE.jpg','assets/JPN.jpg','assets/RUS.jpg'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if(settings.name == PassArgumentsScreen.routeName) {
          final ScreenArguments args = settings.arguments;
          return CupertinoPageRoute(builder: (context) {
            return PassArgumentsScreen(
              title: args.title,
              record: args.record,
              flag: args.flag,
              country: args.country,
              person: args.person,
              place: args.place,
              year: args.year,
            );
          });
        }
      },
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Speed Skating'),
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 20.0),
              tabs: [
                Tab(text: 'Men',),
                Tab(text: 'Women'),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                      child: Column(
                        children: <Widget>[
                          Text('WORLD', style: TextStyle(color: Colors.white, fontSize: 30.0,),),
                          Text('RECORD', style: TextStyle(color: Colors.white, fontSize: 30.0,),),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Home', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => MyHomePage(title: "World Records",)
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Athletics', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Athletics()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Inline Speed Skating', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => InlineSpeedSkating()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Short Track', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => ShortTrack()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Ski Jumping', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => SkiJumping()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Speed Skating', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => SpeedSkating()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Swimming', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Swimming()
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Track Cycling', style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => TrackCycling()
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(menTitle[index], style: TextStyle(fontSize: 20.0),),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              contentPadding: EdgeInsets.all(10.0),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  PassArgumentsScreen.routeName,
                                  arguments: ScreenArguments(
                                    'Men ' + menTitle[index],
                                    menRecord[index],
                                    menFlag[index],
                                    menCountry[index],
                                    menName[index],
                                    menPlace[index],
                                    menDate[index],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context,index) {
                        return Divider(
                          color: Colors.blue[700],
                        );
                      },
                      itemCount: menTitle.length,
                    ),
                  ),
                  Container(
                    height: 70,
                    color: Colors.grey,
                    child: Center(
                      child: AdmobBanner(
                        adUnitId: getBannerAdUnitId(),
                        adSize: bannerSize,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(womenTitle[index], style: TextStyle(fontSize: 20.0),),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              contentPadding: EdgeInsets.all(10.0),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  PassArgumentsScreen.routeName,
                                  arguments: ScreenArguments(
                                    'Women ' + womenTitle[index],
                                    womenRecord[index],
                                    womenFlag[index],
                                    womenCountry[index],
                                    womenName[index],
                                    womenPlace[index],
                                    womenDate[index],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context,index) {
                        return Divider(
                          color: Colors.blue[700],
                        );
                      },
                      itemCount: womenTitle.length,
                    ),
                  ),
                  Container(
                    height: 70,
                    color: Colors.grey,
                    child: Center(
                      child: AdmobBanner(
                        adUnitId: getBannerAdUnitId(),
                        adSize: bannerSize,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String record;
  final String flag;
  final String country;
  final String person;
  final String place;
  final String year;

  const PassArgumentsScreen({
    Key key,
    @required this.title,
    @required this.record,
    @required this.flag,
    @required this.country,
    @required this.person,
    @required this.place,
    @required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "World Record",
                          style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          record,
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Competitor",
                          style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(flag, width: 50.0, height: 25.0,),
                            Text(
                                " ",
                                style: TextStyle(fontSize: 30.0)
                            ),
                            Text(
                                country,
                                style: TextStyle(fontSize: 30.0)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(person, style: TextStyle(fontSize: 30.0),),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Place & Date",
                          style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(place, style: TextStyle(fontSize: 30.0),),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(year, style: TextStyle(fontSize: 30.0),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.grey,
            child: Center(
              child: AdmobBanner(
                adUnitId: getBannerAdUnitId(),
                adSize: AdmobBannerSize.BANNER,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String record;
  final String flag;
  final String country;
  final String person;
  final String place;
  final String year;

  ScreenArguments(this.title, this.record, this.flag, this.country, this.person, this.place, this.year);
}

String getAppId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544~1458002511';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544~3347511713';
  }
  return null;
}

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/2934735716';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/6300978111';
  }
  return null;
}