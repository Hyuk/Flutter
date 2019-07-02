# Widget

## AnimatedContainer
```dart
AnimatedContainer(
    width: ,
    height: ,
    decoration: BoxDecoration(),
    duration: Duration(seconds: 1),
    curve: Curves.fastOutSlowIn,
)
```

## AnimatedOpacity
```dart
AnimatedOpacity(
    opacity: _visible ? 1.0 : 0.0,
    duration: Duration(milliseconds: 500),
    child: Container(),
)
```

## AppBar
```dart
AppBar(
    title: Text(),
    actions: <Widget>[
        IconButton(),
        IconButton(),
        IconBUtton(),
    ]
)
```

## BorderRadius.circular
```dart
_borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
```

## BottomAppBar
```dart
BottomAppBar(
    child: Container(height: 50.0)
)
```

## BoxConstraints.expand
```dart
BoxConstraints.expand(
    height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
)
```

## BoxDecoration
```dart
BoxDecoration(
    color: ,
    borderRadius: ,
    gradient: LinearGradient(),
)
```

## Center
```dart
Center(
    child: Collumn(),
)
```

## Color.fromRGBO
```dart
_color = Color.fromRGBO(
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
    1
)
```

## Column
```dart
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
        Text(),
        Text(),
        Expanded(),
        const RaisedButton(),
        const SizedBox(),
    ]
)
```

## Container
```dart
Container(
    alignment: Alignment.center,
    child: Text(),
    color: Colors.amber[600],
    constraints: BoxConstraints.expand(),
    decoration: const BoxDecoration(),
    height: 48.0,
    margin: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.all(8.0),
    transform: Matrix4.rotationZ(0.1),
    width: 48.0,
)
```

## Drawer
```dart
Drawer(
    child: ListView(),
)
```

## DrawerHeader
```dart
DrawerHeader(
    child: Text(),
    decoration: BoxDecoration(),
)
```

## Duration
```dart
Duration(
    milliseconds: 500
)
```

## Expanded
```dart
Expanded(
    child: Text(),
    child: FittedBox(),
)
```

## FittedBox
```dart
FittedBox(
    fit: BoxFit.contain,
    child: const FlutterLogo(),
)
```

## FloatingActionButton
```dart
FloatingActionButton(
    onPressed: () => setState((){
        _count++;
    }),
    tooltip: 'Increment Counter',
    child: Icon(Icons.add),
)
```

## Icon
```dart
Icon(
    Icons.sentiment_very_satisfied,
    color: Colors.pink,
    size: 30.0,
)
```

## IconButton
```dart
IconButton(
    icon: Icon(Icons.playlist_add),
    tooltip: 'Restitch it',
    onPressed: _restitchDress,
)
```

## LinearGradient
```dart
LinearGradient(
    colors: <Color>[
        Color(0xFF0D47A1),
        Color(0xFF1976D2),
        Color(0xFF42A5F5),
    ]
)
```

## ListView
```dart
ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
        DrawerHeader(),
        ListTile(),
        ListTile(),
    ]
)
```

## ListTile
```dart
ListTile(
    leading: Icon(),
    title: Text(),
    onTap: () {
        Navigator.pop(context);
    }
)
```

## MaterialApp
```dart
MaterialApp(
    title: appTitle,
    home: MyHomePage(title: appTitle),
)
```

## RaisedButton
```dart
RaisedButton(
    onPressed: () {},
    textColor: Colors.white,
    padding: const EdgeInsets.all(0.8),
    child: Container(),
)
```

## Random()
```dart
final random = Random();

_width = random.nextInt(300).toDouble();
_height = random.nextInt(300).toDouble();
```

## Row
```dart
Row(
    children: <Widget>[
        Expanded(),
        Expanded(),
        Expanded(),
    ]
)
```
```dart
Row(
    children: <Widget>[
        const FlutterLogo(),
        const Expanded(),
        const Icon(Icons.sentiment_very_satisfied),
    ]
)
```

## Scaffold
```dart
Scaffold(
    appBar: AppBar(),
    body: Center(),
    bottomNavigationBar: BottomAppBar(),
    floatingActionButton: FloatingActionButton(),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    drawer: Drawer(),
)
```

## SnackBar
```dart
final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!');
    action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
    )
)

Scaffold.of(context).showSnackBar(snackBar);

```

## SnackBarAction
```dart
SnackBarAction(
    label: 'Undo',
    onPressed: () {},
)
```


## Text
```dart
Text('Hello world',
    style: Theme.of(context)
        .textTheme
        .display1
        .copyWith(color: Colors.white),
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
)
```
```dart
Text('Rochambeau!',
    style: DefaultTextStyle.of(context)
    .style
    .apply(fontSizeFactor:2.0)
)
```
```dart
Text('Hello world',
    style: TextStyle(fontWeight: FontWeight.bold),
)
```

## Text.rich
```dart
Text.rich(
    TextSpan(
        text: 'Hello',
        children: <TextSpan>[
            TextSpan(text: 'beautiful', style: TextStyle()),
            TextSpan(text: 'world', style: TextStyle()),
        ]
    )
)
```

## TextSpan
```dart
TextSpan(
    text: 'Hello',
    children: <TextSpan>[
        TextSpan(),
        TextSpan()
    ],
    style: TextStyle(),
)
```

## TextStyle
```dart
TextStyle(
    fontFamily: 'Raleway',
    package: 'awesome_package',
    fontWeight: FontWeight.bold,
    fontWeight: FontWeight.italic,
    fontSize: 20,
)
```
