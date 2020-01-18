import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be Productive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Be more productive'),
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 350,
            child: TextField(
                decoration: new InputDecoration(hintText: "Enter username")),
          ),
          Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter password'),
              )),
          RaisedButton(
              child: Text("FREE TRIAL"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridListGames()),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
          RaisedButton(
              child: Text("Log in"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridListGames()),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10))
        ],
      )),
    );
  }
}

class GridListGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (40 / 20),
              children: List.generate(100, (index) {
                return Center(
                    child: Column(
                  children: <Widget>[
                    Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Image(
                        width: 50,
                        height: 50,
                        image: AssetImage('assets/images/flower.jpg'))
                  ],
                ));
              }),
            )),
      ),
    );
  }
}
