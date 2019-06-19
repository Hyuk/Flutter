## Flutter with Firebase Admob Setup
* Update pubspec.yaml file
```yaml
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.0

  firebase_admob: ^0.9.0+1 # updated
```
* CMD창을 열어 해당 폴더에서 다음 명령어를 실행한다.
```bash
$ flutter pub get
```

* firebase admob 라이브러리를 다트코드에 추가한다.
```dart
import 'package:firebase_admob/firebase_admob.dart';
```
* AndroidManifest.xml 파일을 다음 코드를 `</application>`바로 위에 추가한다.
```xml
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="[ADMOB_APP_ID]"/>
```
* dart코드에 다음 코드를 추가해서 FirebaseAdmob을 초기화한다.
```
FirebaseAdMob.instance.initialize(appId: appId);
```
* main.dart를 다음과 같이 업데이트하면, Interstitial 배너와 일반배너를 함께 적용할 수 있다.
```dart
import 'package:flutter/material.dart';

import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-8202026463041478~4835148924").then((response){
      myBanner..load()..show();
      myInterstitial..load()..show(
          anchorType: AnchorType.bottom,
          anchorOffset: 0.0,
        );
    });

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Firebase Admob'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

//    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-8202026463041478~4835148924").then((response){
//      myBanner..load()..show();
//    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['game', 'pubg'],
  contentUrl: 'https://flutter.io',
  childDirected: false,
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  adUnitId: BannerAd.testAdUnitId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);

InterstitialAd myInterstitial = InterstitialAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: InterstitialAd.testAdUnitId,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("InterstitialAd event is $event");
  },
);
```