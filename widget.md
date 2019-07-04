# Widget

[AnimatedContainer](#animatedcontainer) [AnimatedOpacity](#animatedopacity)

## AbsorbPointer
```dart
AbsorbPointer(
    absorbing: false,
    ignoringSemantics: false,
    child: ABunchOfWidgets(),
);
```

## Align
```dart
Align(
    alignment: Alignment.bottomRight, // Alignment.topLeft, Alignment.centerRight, Alignment.bottomCenter, Alignment(1.00, 0.50),
    child: Text('Hello!'),
)
```
```dart
Stack(children: [
    Align(
        alignment: Alignment(0.0,0.0),
        child: Text('Hello'),
    )
])
```

## AnimatedBuilder
```dart
final animation = Tween(begin: 0, end: 2*pi).animate(controller);
AnimatedBuilder(
    animation: animation,
    child: FlutterLogo(),
    builder: (context, child) {
        return Transform.rotate(
            angle: animation.value,
            child: Container(),
        )
    }
)
```

## AnimatedContainer
```dart
AnimatedContainer(
    width: ,
    height: ,
    color: _color,
    decoration: BoxDecoration(),
    duration: Duration(seconds: 1),
    curve: Curves.fastOutSlowIn,
    curve: Curves.bounceIn,
    child: SomeOtherWidget(),
)
```

## AnimatedIcon
```dart
animated() => myAnimation.reverse(); // myAnimation.forward();

AnimatedIcon(
    icon: AnimatedIcon.play_pause,
    progress: myAnimation,
)
```

## AnimatedList
```dart
AnimatedList(
    initialItemCount: _myItems.length,
    itemBuilder: (context, index, animation) {
        return SlideTransition(
            position: animation.drive(MyTween()),
            child: MyListItem(_myItems[index]);
        );
    },
);

AnimatedLsitState.insertItem
AnimatedListState.removeItem

AnimatedList.of(context).insertItem(index);
AnimatedList.of(context).removeItem(
    index, (context, animation) => ...
)
```
```dart
final _myListKey = GlobalKey<AnimatedListState>();

AnimatedList(
    key: _myListKey,
    initialItemCount: _myItems.length,
    itemBuilder: (context, index, animation) {
        return MyListItem(_myItems[index]);
    },
);

_myListKey.currentState.insertItem(index);
AnimatedList.of(context).removeItem(
    index, (context, animation) => ...
)
 
_myItems.insert(index, element);
_myListKey.currentState.insertItem(index);
AnimatedList(
    initialItemCount: _myItems.length,
    itemBuilder: (context, index, animation) {
        return MyListItem(_myItems[index]);
    },
);

var removedItem = _myItems.removeAt(index);
_myListKey.currentState.removeItem(
    index, (context, animation) => MyListItem(removedItem),
);
```

## AnimatedOpacity
```dart
AnimatedOpacity(
    opacity: _visible ? 1.0 : 0.0,
    duration: Duration(milliseconds: 500),
    child: Container(),
)
```

## AnimationController
```dart
final controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
)
```
```dart
AnimationController controller;

@override
void iniState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(
            seconds: 4
        ),
        vsync: this,
    )..repeat();
}
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

## AspectRatio
```dart
AspectRatio(
    aspectRatio: 3 / 2,
    child: MyWidget(),
)
```

## BorderRadius.circular
```dart
_borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
```

## BottomAppBar
```dart
BottomAppBar(
    color: Colors.yellow,
    child: Container(height: 50.0)
)
```

## BackdropFilter
```dart
BackdropFilter(
    filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
    ),
    child: Container(
        color: Colors.black.withOpacity(0),
    )
);
```
```dart
Stack(
    children: [
        DashWidget,
        Positioned.fill( // Positioned(top: 100, bottom: 150, left: 200, right: 100,
            child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                ),
                child: Container(
                    color: Colors.black.withOpacity(0),
                ),
            ),
        ),
    ],
);
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
    shape: ,
    boxShadow: shadow,
)
```

## BoxShadow
```dart
BoxShadow(
    spreadRadius: i * 40.0,
    color: Colors.purple.withAlpha(
        (255 / (i + 1)).toInt(),
    ),
)
```

## Card

## Center
```dart
Center(
    child: Column(),
)
```

## CircleAvater
```dart
CircleAvater(
    backgroundImage: NetWorkImage(imageUrl),
)
```

## ClipRRect
```dart
ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    clipBehavior: Clip.hardEdge,
    child: MyDashPicWidget(),
);
```

## ClipOval

## ClipPath

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
        SizedBox(height: 200),
        const SizedBox(),
        Flexible(),
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

## CustomPaint
```dart
CustomPaint(
    size: Size(200, 100),
    painter: MyPainter(),
)

class MyPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
        canvas.drawLine(...);
        canvas.drawRect();
        canvas.drawCircle();
        canvas.drawArc();
        canvas.drawPath()
        canvas.drawImage();
        canvas.drawImageNine();
        canvas.drawParagraph();
    }

    @override
    bool shouldRepaint(CustomPainter old) {
        return old.myParameter != myParameter;
    }
}
```

## CustomScrollView
```dart
CustomScrollView(
    slivers: <Widget>[
        SliverAppBar(
            title: Text('SliverAppBar'),
        ),
        _oneSliver,
        _anotherSliver,
        _yetAnotherSliver
    ],
);
```

## Dismissible
```dart
Dismissible(
    child: ListTile(
        title: Text(myString),
    ),
    background: Container(
        color: Colors.green,
        child: Icon(Icons.check),
    ),
    secondaryBackground: Container(
        color: Colors.red,
        child: Icon(Icons.cancel),
    ),
    direction: DismissDirection.vertical,
    key: ValueKey(myString),
)
```
```dart
ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, i) {
        return Dismissible(
            ...
            onDismissed: (direction) {
                setState((){
                    items.removeAt(i);
                });
            },
            ...
        )
    }
)
```

## Divider
```dart

```

## Draggable
```dart
Draggable<Color>(
    data: Color(0x000000ff),
    child: MyBlueBox(),
    childWhenDragging: MyRoundedBlueBox(),
    feedback: MyGreyBox(),
    onWillAccept: (value) => value != Colors.black,
    onAccept: (value) {
        // Update app state with value
    }
    onLeave: (value) {
        // Alert the user their value didn't land.
    }
    builder: (context, candidates, rejects) {
        return candidates.length > 0 ? MyBigColorfulBox(candidates[0]) : MyDashedOutline();
    }
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
    flex: 2,
)
```

## FadeInImage
```dart
FadeInImage.assetNetwork(
    fadeInDuration: const Duration(seconds: 1),
    fadeInCurve: Curves.bounceIn,
    placeholder: 'assets/waiting.png',
    image: 'https://example.com/image.png',
);
```
```dart
FadeInImage.memoryNetwork(
    height: 300.0,
    placeholder: localImageBytes,
    image: 'https://example.com/image.png',
);
```

## FadeTransition
```dart
FadeTransition(
    opacity: animation,
    child: Text(widget.text),
)
```
```dart
class MyFadeIn extends StatefulWidget {
    final Widget child;

    MyFadeIn({@required this.child});

    @override
    createState() => _MyFadeInState();
}

class _MyFadeInState extends State<MyFadeIn> with SingleTickerProviderStateMixin {
    AnimationController _controller;
    Animation _animation;

    @override
    void initState() {
        _controller = AnimationController(
            vsync: this,
            duration: Duration(seconds: 2),
        );
        _animation = Tween(
            begin: 0.0,
            end: 1.0,
        ).animate(_controller);
    }

    @override
    dispose(){
        _controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        _controller.forward);
        return FadeTransition(
            opacity: _animation,
            child: widget.child,
        );
    }
}
```

## FittedBox
```dart
FittedBox(
    alignment: Alignment.centerLeft,
    fit: BoxFit.contain,// BoxFit.fitWidth, BoxFit.fill, BoxFit.none,
    child: const FlutterLogo(),
)
```

## Flexible
```dart
Flexible(
    flex: 2,
    fit: FlexFit.tight, // FlexFit.loose,
    child: Container(
        height: 100,
        color: Colors.cyan,
    ),
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

## FutureBuilder
```dart
FutureBuilder(
    future: http.get('http://awesome.data'),
    builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.done) {
            // ConnectionState.none;
            // ConnectionState.waiting;
            // ConnectionState.active;
            // ConnectionState.done;
            if(snapshot.hasError){
                return SomethingWentWrong();
            } else {
                return AwesomeData(snapshot.data);
            }
        } else {
            return CircularProgressIndicator();
        }
    },
);
```

## Hero
```dart
Hero(
    tag: 'dash',
    Image.asset('images/dash.jpg'),
)
```
```dart
class MyHomePage extends StatelessWidget {
    @override
    Widget build(context) {
        ...
        Hero(
            tag: 'dash',
            Image.asset('images/dash.jpg'),
        )
        ...
    }
}

class MyDetailPage extends StatelessWidget {
    @override
    Widget build(context) {
        ...
        Hero(
            tag: 'dash',
            Image.asset('images/dash.jpg'),
        )
        ...
    }
}
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

## LayoutBuilder
```dart
LayoutBuilder(
    builder: (context, constraints) {
        if(constraints.maxWidth < 600) {
            return MyOneColumnLayout();
        } else {
            return MyTwoColumnLayout();
        }
    },
);
```

## LimitedBox
```dart
ListView(
    children: [
        for(var i = 0; i<10; i++) {
            LimitedBox(
                maxHeight: 200,
                child: Container(
                    color: randomColor(),
                ),
            ),
        }
    ]
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
    leading: Icon(), // CircleAvatar(),
    title: Text('Hello World'),
    subtitle: Text('Hello World'),
    dense: true, // false,
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

## MediaQuery
```dart
build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width > oneColumnLayout) {

    } else {

    }
    var deviceOrientation = MediaQuery.of(context).orientation;
    var fontScaling = MediaQuery.of(context).textScaleFactor;
    var notchInset = MediaQuery.of(context).padding;
    var noAnimations = MediaQuery.of(context).disableAnimations;
    var screenContrast = MediaQuery.of(context).platformBrightness;
}
```

## Opacity
```dart
Opacity(
    opacity: 0.0,
    opacity: 0.25,
    child: MyWidget(Colors.blue),
)
```

## PageController
```dart
final controller = PageController(
    initialPage: 1,
);

Final pageView = PageView(
    controller: controller,
    scrollDirection: Axis.vertical,
    children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
    ]
)
```

## PageView
```dart
Final pageView = PageView(
    controller: controller,
    scollDirection: Axis.vertical,
    children: [
        Page1(),
        Page2(),
        Page3(),
    ],
);
```

## Placeholder
```dart
Placeholder(
    fallbackHeight: 50,
    fallbackWidth: 300,
    color: Colors.red,
    strokeWidth: 10,
)
```

## Positioned
Working with Stack()
```dart
Positioned(
    top: , // bottom: , left: , right: , height: , width: ,
    child: FlutterLogo(),
)
```
```dart
Positioned.fill(
    child: FlutterLogo(),
)
```

## RaisedButton
```dart
RaisedButton(
    color: Colors.blue,
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
    mainAxisAlignment: MainAxisAlignment.spaceAround, // MainAxisAlignment.spaceBetween, MainAxisAlignment.spaceEvenly,
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
```dart
Row(
    children: <Widget>[
        ColorBox(),
        Spacer(flex: 2),
        ColorBox(),
        Spacer(),
        ColorBox(),
    ]
)
```


## SafeArea
```dart
SafeArea(
    child: ListView(
        children: List.generate(
            100, 
            (i) => Text('This is some text'),
        ),
    ),
    top: true,
    bottom: true,
    left: false,
    right: true,
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
    // FloatingActionButtonLocation.endDocked,
    drawer: Drawer(),
)
```
## SlizedBox
```dart
SizedBox(
    width: 200, // double.infinity.
    height: 100, // double.infinity,
    child: MyButton(),
)
```
```dart
SizedBox.expand(
    child: MyButton(),
)
```

## SliverAppBar
```dart
SliverAppBar(
    expandedHeight: 200.0,
    flexibleSpace: FlexibleSpaceBar(
        background: _expandedImage,
    ),
    floating: true,
);
```

## SliverGrid.count
```dart
SliverGrid.count(
    children: scrollItems,
    crossAxisCount: 4,
);
```

## SliverGrid.extent
```dart
SliverGrid.extent(
    corssAxisExtent: 90.0,
);
```

## SliverList
```dart
SliverList(
    delegate: SliverChildListDelegate(
        [
            widget,
            anotherWidget,
            yetAnotherWidget,
        ],
    ),
)
```
```dart
SliverList(
    delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
            return aWidget;
        }
    ),
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

## StreamBuilder
```dart
Stream<int> count() async* {
    int i = 1;
    while(true) {
        yield i++;
    }
}
```
```dart
StreamBuilder<int>(
    stream: _myStream,
    initialData: 42,
    builder: (context, snapshot){
        if(snapshot.hasError){
            return UhOh(snapshot.error);
        }
        if(!snapshot.hasData){
            return CircularProgressIndicator();
        }
            return MyWidget(snapshot.data);
    },
)
```
```dart
StreamBuilder<int>(
    stream: _myStream,
    initialData: 42,
    builder: (context, snapshot){
        switch(snapshot.connectionState){
            case ConnectionState.waiting:
            case ConnectionState.none:
                return LinearProgressIndicator();
            case ConnectionState.active:
                return MyWidget(snapshot.data);
            case ConnectionState.done:
                return MyFinalWidget(snapshot.data);
        }
    },
)
```

## Table 
```dart
Table(
    border: TableBorder.all(),
    columnWidths: {1: FractionColumnWidth(.2)},
    children: [
        TableRow(
            children: [
                WideWidget(),
                MediumWidget(),
                MediumWidget(),
            ]
        ),
        TableRow(
            children: [
                MediumWidget(),
                NarrowWidget(),
                MediumWidget(),
            ]
        ),
    ],
);
defaultVerticalAlignment: TableCellVerticalAlignment.top
defaultVerticalAlignment: TableCellVerticalAlignment.middle
defaultVerticalAlignment: TableCellVerticalAlignment.bottom
defaultColumnWidth: FlexColumnWidth(1.0);// FlexColumnWidth(0.25), FlexColumnWidth(30.0), IntrinsicColumnWidth(),
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

## Tooltip
```dart
Tooltip(
    message: 'Dash',
    verticalOffset: 48,
    height: 24,
    child: MyVisualWidget(),
)
```

## Transform
```dart
Transform(
    transform: Matrix4.skewX(0.3),
    child: MyIcon(),
)
```
```dart
Transform(
    transform: Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateX(0.6),
    alignment: FractionalOffset.center,
    child: MyIcon(),
)
```
```dart
Transform.rotate(
    angle: pi/4, // 45 deg
    child: MyIcon(),
);
```
```dart
Transform.scale(
    scale: 1.5,
    child: MyIcon(),
)
```
```dart
Transform.translate(
    offset: Offset(50, 50),
    child: MyIcon(),
);
```

## ValueListenableBuilder
```dart
ValueListenableBuilder(
    valueListenable: myAnimation,
    child: Container(width: 100, height: 100, color: Colors.green),
    builder: (context, value, child) {
        return Transform.rotate(
            angle: myAnimation.value * 2.0 * math.pi, 
            child: child,
        );
    }
)
```

## Wrap
```dart
Wrap(
    alignment: WrapAlignment.end,
    direction: Axis.vertical,
    spacing: 10.0,
    runSpacing: 20.0,
    children: [
        MyWidget(),
        MyWidget(),
        MyWidget(),
        MyWidget(),
    ]
)
```