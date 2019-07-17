import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:admob_flutter/admob_flutter.dart';

import '../main.dart';
//import './athletics.dart';
import './inlinespeedskating.dart';
import './shorttrack.dart';
import './skijumping.dart';
import './speedskating.dart';
import './swimming.dart';
import './trackcycling.dart';

class Athletics extends StatefulWidget {
  @override
  _AthleticsState createState() => _AthleticsState();
}

class _AthleticsState extends State<Athletics> {
  AdmobBannerSize bannerSize;

  @override
  void initState(){
    super.initState();
    bannerSize = AdmobBannerSize.BANNER;
  }

  final menTitle = ['100m','200m','400m','800m','1500m','5000m','10000m','Marathon','110m hurdles','400m hurdles','3000m steeplechase','4 x 100m relay','4 x 400m relay','20km race walk','50km race walk','High jump','Pole vault','Long jump','Triple jump','Shot put','Discus throw','Hammer throw','Javelin throw','Decathlon'];

  final menRecord = ['9.58s','19.19s','43.03s','1m 40.91s','3m 26.00s','12m 37.35s','26m 17.53s','2h 01m 39s','12.80s','46.78s','7m 53.63s','36.84s','2m 54.29s','1h 16m 36s','3h 32m 33s','2.45m','6.16m','8.95m','18.29m','23.12m','74.08m','86.74m','98.48m','9126 pts'];

  final menCountry = ['Jamaica','Jamaica','South Africa','Kenya','Morocco','Ethiopia','Ethiopia','Kenya','United States','United States','Qatar','Jamaica','United States','Japan','France','Cuba','France','United States','United Kingdom','United States','East Germany','Soviet Union','Czechia','France'];

  final menName = ['Usain BOLT','Usain BOLT','Wayde VAN NIEKERK','David RUDISHA','Hicham EL GUERROUJ','Kenenisa BEKELE','Kenenisa BEKELE','Eliud KIPCHOGE','Aries MERRITT','Kevin YOUNG','Saif Saaeed SHAHEEN','Jameica','United States','Yusuke SUZUKI','Yohann DINIZ','Javier SOTOMAYOR','Renaud LAVILLENIE','Mike POWELL','Jonathan EDWARDS','Randy BARNES','Jürgen SCHULT','Yuriy SEDYKH','Jan ŽELEZNÝ','Kevin MAYER'];

  final menPlace = ['Berlin (Olympiastadion)','Berlin (Olympiastadion)','Rio de Janeiro (Estádio Olímpico)','London (Olympic Stadium)','Roma (Stadio Olimpico)','Hengelo (Blankers-Koen Stadion)','Bruxelles (Boudewijnstadion)','Berlin (GER)','Bruxelles (Boudewijnstadion)','Barcelona (Estadio Olímpico)','Bruxelles (Boudewijnstadion)','London (Olympic Stadium)','Stuttgart (Gottlieb-Daimler Stadion)','Nomi (JPN)','Zürich (Letzigrund)','Salamanca (ESP)','Donetsk (UKR)','Tokyo (Olympic Stadium)','Göteborg (Ullevi Stadium)','Westwood, CA (USA)','Neubrandenburg (GDR)','Stuttgart (Neckarstadion)','Jena (GER)','Talence (Stade de Thouars)'];

  final menDate = ['2009-08-16','2009-08-20','2016-08-14','2012-08-09','1998-07-14','2004-05-31','2005-08-26','2018-09-16','1985-07-24','1992-08-06','2004-09-03','2012-08-11','1993-08-22','2015-03-15','2014-08-15','1993-07-27','2014-02-15','1991-08-30','1995-08-07','1990-05-20','1986-06-06','1986-08-30','1996-05-25','2018-09-16'];

  final menFlag = ['assets/JAM.jpg','assets/JAM.jpg','assets/RSA.jpg','assets/KEN.jpg','assets/MAR.jpg','assets/ETH.jpg','assets/ETH.jpg','assets/KEN.jpg','assets/USA.jpg','assets/USA.jpg','assets/QAT.jpg','assets/JAM.jpg','assets/USA.jpg','assets/JPN.jpg','assets/FRA.jpg','assets/CUB.jpg','assets/FRA.jpg','assets/USA.jpg','assets/GBR.jpg','assets/USA.jpg','assets/GDR.jpg','assets/URS.jpg','assets/CZE.jpg','assets/FRA.jpg'];

  final womenTitle = ['100m','200m','400m','800m','1500m','5000m','10000m','Marathon','100m hurdles','400m hurdles','3000m steeplechase','4 x 100m relay','4 x 400m relay','20km race walk','High jump','Pole vault','Long jump','Triple jump','Shot put','Discus throw','Hammer throw','Javelin throw','Decathlon'];

  final womenRecord = ['10.49s','21.34s','47.60s','1m 53.28s','3m 50.07s','14m 11.15s','29m 17.45s','2h 17m 01s','12.20s','52.34s','8m 44.32s','40.82s','3m 15.17s','1h 24m 38s','2.09m','5.06m','7.52m','15.50m','22.63m','76.80m','82.98m','72.28m','8358 pts'];

  final womenCountry = ['United States','United States','East Germany','Czechoslovakia','Ethiopia','Ethiopia','Ethiopia','Kenya','United States','Russia','Kenya','United States','Soviet Union','China','Bulgaria','Russia','Soviet Union','Ukraine','Soviet Union','East Germany','Poland','Czechia','Lithuania'];

  final womenName = ['Florence GRIFFITH-JOYNER','Florence GRIFFITH-JOYNER','Marita KOCH','Jarmila KRATOCHVÍLOVÁ','Genzebe DIBABA','Tirunesh DIBABA','Almaz AYANA','Mary Jepkosgei KEITANY','Kendra HARRISON','Yulia PECHONKINA','Beatrice CHEPKOECH','United States','Soviet Union','Hong LIU','Stefka KOSTADINOVA','Yelena ISINBAYEVA','Galina CHISTYAKOVA','Inessa KRAVETS','Natalia LISOVSKAYA','Gabriele REINSCH','Anita WŁODARCZYK','Barbora ŠPOTÁKOVÁ','Austra SKUJYTÉ'];

  final womenPlace = ['Indianapolis, IN (USA)','Seoul (Olympic Stadium)','Canberra (Bruce Stadium)','München (GER)','Monaco (Stade Louis II)','Oslo (Bislett)','Rio de Janeiro (Estádio Olímpico)','London (GBR)','London (Olympic Stadium)','Tula (RUS)','Monaco (Stade Louis II)','London (Olympic Stadium)','Seoul (Olympic Stadium)','La Coruna (ESP)','Roma (Stadio Olimpico)','Zürich (Letzigrund)','Leningrad (URS)','Göteborg (Ullevi Stadium)','Moskva (URS)','Neubrandenburg (GDR)','Warszawa (POL)','Stuttgart (Gottlieb-Daimler Stadion)','Columbia, MO (USA)'];

  final womenDate = ['1988-07-16','1988-09-29','1985-10-06','1983-07-26','2015-07-17','2008-06-06','2016-08-12','2017-04-23','2016-07-22','2003-08-08','2018-07-20','2012-08-10','1988-10-01','2015-06-06','1987-08-30','2009-08-28','1988-06-11','1995-08-10','1987-06-07','0988-07-09','2016-08-28','2008-09-13','2005-04-15'];

  final womenFlag = ['assets/USA.jpg','assets/USA.jpg','assets/GDR.jpg','assets/TCH.jpg','assets/ETH.jpg','assets/ETH.jpg','assets/ETH.jpg','assets/KEN.jpg','assets/USA.jpg','assets/RUS.jpg','assets/KEN.jpg','assets/USA.jpg','assets/URS.jpg','assets/CHN .jpg','assets/BUL.jpg','assets/RUS.jpg','assets/URS.jpg','assets/UKR.jpg','assets/URS.jpg','assets/GDR.jpg','assets/POL.jpg','assets/CZE.jpg','assets/LTU.jpg'];

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
            title: Text('Athletics'),
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