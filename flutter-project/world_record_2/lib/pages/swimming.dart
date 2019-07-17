import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:admob_flutter/admob_flutter.dart';

import '../main.dart';
import './athletics.dart';
import './inlinespeedskating.dart';
import './shorttrack.dart';
import './skijumping.dart';
import './speedskating.dart';
//import './swimming.dart';
import './trackcycling.dart';

class Swimming extends StatefulWidget {
  @override
  _SwimmingState createState() => _SwimmingState();
}

class _SwimmingState extends State<Swimming> {
  AdmobBannerSize bannerSize;

  @override
  void initState(){
    super.initState();
    bannerSize = AdmobBannerSize.BANNER;
  }

  final menTitle = ['50m freestyle','100m freestyle','200m freestyle','400m freestyle','800m freestyle','1500m freestyle','100m backstroke','200m backstroke','100m breaststroke','200m breaststroke','100m butterfly','200m butterfly','200m individual medley','400m individual medley','4 x 100m freestyle relay','4 x 200m freestyle relay','4 x 100m medley relay'];

  final menRecord = ['20.26s','44.94s','1m 39.37s','03m 32.25s','07m 23.42s','14m 08.06s','48.88s','01m 45.63s','55.61s','02m 00.16s','48.08s','01m 48.24s','01m 49.63s','03m 55.50s','03m 03.03s','06m 46.81s','03m 19.16s'];

  final menCountry = ['France','France','Germany','France','Australia','Italy','China','Australia','South Africa','Russia','South Africa','Japan','United States','United States','United States','Brazil','Russia'];

  final menName = ['MANAUDOU Florent','LEVEAUX Amaury','BIEDERMANN Paul','AGNEL Yannick','HACKETT Grant','PALTRINIERI Gregorio','XU Jiayu','LARKIN Mitchell','VAN DER BURGH Cameron','PRIGODA Kirill','LE CLOS Chad','SETO Daiya','LOCHTE Ryan','LOCHTE Ryan','United States of America','Brazil','Russian Federation'];

  final menPlace = ['12th FINA World Swimming Championships','2008 European SC Champs','FINA/Arena Swimming World Cup 2009','French Short Course Swimming Championships','Victoria Championships','European short-course Championships','FINA Swimming World Cup 2018','2015 Hancock Prospecting Austr','FINA/Arena Swimming World Cup 2009','14th FINA World Swimming Championships','13th FINA World Swimming Championships','14th FINA World Swimming Championships','11th FINA World Swimming Championships','10th FINA World Swimming Championships','14th FINA World Swimming Championships','14th FINA World Swimming Championships','Vladimir Salnikov Cup'];

  final menDate = ['2014-12-05','2008-12-13','2009-11-15','2012-11-15','2008-07-20','2015-12-02','2018-11-11','2015-11-27','2009-11-15','2018-12-13','2016-12-08','2018-12-11','2012-12-14','2010-12-16','2018-12-11','2018-12-14','2009-12-20'];

  final menFlag = ['assets/FRA.jpg','assets/FRA.jpg','assets/GER.jpg','assets/FRA.jpg','assets/AUS.jpg','assets/ITA.jpg','assets/CHN.jpg','assets/AUS.jpg','assets/RSA.jpg','assets/RUS.jpg','assets/RSA.jpg','assets/JPN.jpg','assets/USA.jpg','assets/USA.jpg','assets/USA.jpg','assets/BRA.jpg','assets/RUS.jpg'];

  final womenTitle = ['50m freestyle','100m freestyle','200m freestyle','400m freestyle','800m freestyle','1500m freestyle','100m backstroke','200m backstroke','100m breaststroke','200m breaststroke','100m butterfly','200m butterfly','200m individual medley','400m individual medley','4 x 100m freestyle relay','4 x 200m freestyle relay','4 x 100m medley relay'];

  final womenRecord = ['22.93s','50.25s','01m 50.43s','03m 53.92s','07m 59.34s','15m 19.71s','55.03s','01m 59.23s','01m 02.36s','02m 14.57s','54.61s','01m 59.61s','02m 01.86s','04m 18.94s','03m 26.53s','07m 32.85s','03m 45.20s'];

  final womenCountry = ['Netherlands','Australia','Sweden','Australia','Spain','Spain','Hungary','Hungary','Jamaica','United States','Sweden','Spain','Hungary','Spain','Netherlands','Netherlands','United States'];

  final womenName = ['KROMOWIDJOJO Ranomi','CAMPBELL Cate','SJOESTROEM Sarah','TITMUS Ariarne','BELMONTE Mireia','BELMONTE Mireia','HOSSZU Katinka','HOSSZU Katinka','ATKINSON Alia','SONI Rebecca','SJOESTROEM Sarah','BELMONTE Mireia','HOSSZU Katinka','BELMONTE Mireia','Netherlands','Netherlands','United States of America'];

  final womenPlace = ['FINA/airweave Swimming World Cup 2017','2017 Hancock Prospecting Short','FINA/airweave Swimming World Cup 2017','14th FINA World Swimming Championships','FINA Swimming World Cup 2013','Winter National Championships','12th FINA World Swimming Championships','12th FINA World Swimming Championships','FINA/airweave Swimming World Cup 2016','Duel in the Pool','12th FINA World Swimming Championships','12th FINA World Swimming Championships','12th FINA World Swimming Championships','FINA/airweave Swimming World Cup 2017','12th FINA World Swimming Championships','12th FINA World Swimming Championships','Mutual of Omaha Duel in the Pool'];

  final womenDate = ['2017-08-07','2017-10-26','2017-08-12','2018-12-14','2013-08-10','2014-12-12','2014-12-04','2014-12-05','2016-08-26','2009-12-18','2014-12-07','2014-12-03','2014-12-06','2017-08-12','2014-12-05','2015-12-03','2015-12-11'];

  final womenFlag = ['assets/NED.jpg','assets/AUS.jpg','assets/SWE.jpg','assets/AUS.jpg','assets/ESP.jpg','assets/ESP.jpg','assets/HUN.jpg','assets/HUN.jpg','assets/JAM.jpg','assets/USA.jpg','assets/SWE.jpg','assets/ESP.jpg','assets/HUN.jpg','assets/ESP.jpg','assets/NED.jpg','assets/NED.jpg','assets/USA.jpg'];

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
            title: Text('Swimming'),
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 20.0),
              tabs: [
                Tab(text: 'Men'),
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