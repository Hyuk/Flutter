import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:admob_flutter/admob_flutter.dart';

import '../main.dart';
import './athletics.dart';
//import './inlinespeedskating.dart';
import './shorttrack.dart';
import './skijumping.dart';
import './speedskating.dart';
import './swimming.dart';
import './trackcycling.dart';

class InlineSpeedSkating extends StatefulWidget {
  @override
  _InlineSpeedSkatingState createState() => _InlineSpeedSkatingState();
}

class _InlineSpeedSkatingState extends State<InlineSpeedSkating> {
  AdmobBannerSize bannerSize;

  @override
  void initState(){
    super.initState();
    bannerSize = AdmobBannerSize.BANNER;
  }

  final menTitle = ['300m Track','500m Track','1000m Track','1500m Track','2000m Track','3000m Track','5000m Track','10000m Track','15000m Track','20000m Track','30000m Track','50000m Track','100m Road','200m Road','300m Road','500m Road','1000m Road','1500m Road','2000m Road','3000m Road','5000m Road','10000m Road','15000m Road','20000m Road','30000m Road','42195 (Marathon)','50000m Road','84390m Road','100000m Road'];

  final menRecord = ['23.003','38.601','1m 17.431s','2m 07.770s','2m 54.560s','4m 21.764s','7m 34.938s','13m 46.488s','21m 22.508s','30m 52.792s','47m 42.820s','1h 20m 17.736s','9.684s','15.879s','23.628s','37.843s','1m 17.757s','1m 57.698s','2m 40.658s','4m 18.379s','6m 43.900s','13m 09.179s','22m 11.960s','28m 15.383s','48m 42.179s','56m 49s','1h 21m 29.102s','2h 14m 37.000s','2h 55m 55s'];

  final menCountry = ['Germany ','Germany ','Belgium','Italy','Germany ','Italy','Italy','France','France','Italy','Italy','Italy','Spain','Spain','Colombia','Colombia','Italy','United States','United States','Italy','France','Italy','United States','Belgium','United States','Belgium','Italy','Italy','France'];

  final menName = ['Simon Albrecht','Simon Albrecht','Bart Swings','G. De Persio','R. Kloess','Giuseppe De Persio','Mirko Giupponi','Alexis Contin','Alexis Contin','Paolo Bomben','T. Rossi','T. Rossi','Joseba Fernandez','Joseba Fernandez','Andres Felipe Muñoz','Andres Felipe Muñoz','Ippolito Sanfratello','Chad Hedrick','Derek Downing','Fabio Marangoni','Arnaud Gicquel','Fabio Francolini','Chad Hedrick','Bart Swings','Derek Downing','Bart Swings','Maurizio Lollobrigida','Luca Presti','Philippe Boulard'];

  final menPlace = ['Geisingen (Germany)','Geisingen (Germany)','Geisingen (Germany)','Finale Emilia (Italy)','Inzell (Germany)','Finale Emilia (Italy)','Grenoble (France)','Geisingen (Germany)','Geisingen (Germany)','Grenoble (France)','Grenoble (France)','Grenoble (France)','Arnhem (Netherlands)','S. Benedetto Tronto (Italy)','Gijon (Spain)','Cali (Colombia)','Padua (Italy)','Padua (Italy)','Padua (Italy)','Padua (Italy)','Padua (Italy)','Geisingen (Germany)','Barrancabermeja (Colombia)','San Benedetto del Tronto (Italy)','Road Rash Nationals (United States)','Berlin (Germany)','Grenoble (France)','Santiago (Chile)','New York (United States)'];

  final menDate = ['2014-07-28','2014-07-29','2014-07-30','1980-08-01','1980-08-28','1980-08-01','1987-08-29','2014-07-28','2014-07-29','1987-08-29','1987-08-29','1987-08-29','2018-07-07','2012-09-12','2010-03-21','2013-08-04','1999-06-17','1999-06-17','1999-06-17','1999-06-17','2003-07-30','2014-08-02','2000-08-02','2012-09-12','1997-08-28','2015-09-26','1997-08-28','1999-11-03','1998-11'];

  final menFlag = ['assets/DEU.jpg','assets/DEU.jpg','assets/BEL.jpg','assets/ITA.jpg','assets/DEU.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/FRA.jpg','assets/FRA.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/ESP.jpg','assets/ESP.jpg','assets/COL.jpg','assets/COL.jpg','assets/ITA.jpg','assets/USA.jpg','assets/USA.jpg','assets/ITA.jpg','assets/FRA.jpg','assets/ITA.jpg','assets/USA.jpg','assets/BEL.jpg','assets/USA.jpg','assets/BEL.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/FRA.jpg'];

  final womenTitle = ['300m Track','500m Track','1000m Track','1500m Track','2000m Track','3000m Track','5000m Track','10000m Track','15000m Track','20000m Track','30000m Track','50000m Track','100000m Track','200m Road','300m Road','500m Road','1000m Road','1500m Road','2000m Road','3000m Road','5000m Road','10000m Road','15000m Road','20000m Road','21097m Road (1/2 Marathon)','30000m Road','40000m Road','42195 (Marathon) Road','50000m Road'];

  final womenRecord = ['25.702','42.175','1:25.277','2:14.644','3:02.025','4:38.464','7:48.508','15:05.587','23:39.990','32:53.970','49:15.906','1:21:26.942','3:31:58','17.594','26.791','42.210','1:28.014','2:14.122','3:07.040','4:55.506','7:40.530','15:02.793','24:57.820','31.58.007','35:02.930','52:38.640','1:18:01.000','1:06:35','1:28:16.852'];

  final womenCountry = ['South Korea','Germany','Italy','Italy','Germany','Italy','Italy','Germany','Belgium','Belgium','Belgium','Belgium','Denmark','Argentina','Argentina','Italy','Italy','Italy','Columbia','Italy','Italy','Chinese Taipei','Spain','South Korea','Italy','Italy','Spain','Argentina','Italy'];

  final womenName = ['Shin Soyeong','Laethisia Schimek','Erika Zanetti','Marisa Canafoglia','Nicola Malmstrom','Marisa Canafoglia','Marisa Canafoglia','Sabine Berg','Sandrine Tas','Annie Lambrechts','Annie Lambrechts','Annie Lambrechts','Victoria Rodríguez López','Andrea González','Valentina Belloni','Marisa Canafoglia','Marisa Canafoglia','Luz Mery Tristán','Francesca Monteverde','Simona Di Eugenio','Hochen Yang','Sheila Herrero','Seul Lee','Adelia Marra','Marisa Canafoglia','Sheila Herrero','Maira Yaqueline Arias','Marisa Canafoglia'];

  final womenPlace = ['Kaohsiung (Taiwan)','Geisingen (Germany)','Geisingen (Germany)','Grenoble (France)','Inzell (Germany)','Grenoble (France)','Grenoble (France)','Geisingen (Germany)','Geisingen (Germany)','Leuven (Belgium)','Leuven (Belgium)','Leuven (Belgium)','New York (USA)','San Benedetto del Tronto (Italy)','Winnipeg (Canada)','Coulaines (France)','Grenoble (France)','Grenoble (France)','Bello (Colombia)','Grenoble (France)','Padua (Italy)','Anyang (Korea)','Barrancabermeja (Colombia)','Gijon (Spain)','Pamplona (Spain)','Grenoble (France)','Santiago (Chile)','Berlin (Germany)','Grenoble (France)'];

  final womenDate = ['2015-11-15','2014-07-29','2014-07-30','1987-08-27','1988-08-28','1987-08-29','1987-08-30','2014-07-28','2014-07-29','1985-06-28','1985-06-28','1985-06-28','1998-09','2012-09-12','1999-07-26','1998','1987-08-28','1987-08-28','1990-11-12','1987-08-29','2003-07-30','2006-09-06','2000-08-02','2008-09-09','1987-08-28','1987-08-28','1999-10-03','2017-09-23','1987-08-28'];

  final womenFlag = ['assets/KOR.jpg','assets/DEU.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/DEU.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/DEU.jpg','assets/BEL.jpg','assets/BEL.jpg','assets/BEL.jpg','assets/BEL.jpg','assets/DNK.jpg','assets/ARG.jpg','assets/ARG.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/COL.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/TWN.jpg','assets/ESP.jpg','assets/KOR.jpg','assets/ITA.jpg','assets/ITA.jpg','assets/ESP.jpg','assets/ARG.jpg','assets/ITA.jpg'];

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
            title: Text('Inline Speed Skating'),
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