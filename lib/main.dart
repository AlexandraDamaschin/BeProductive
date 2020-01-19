import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                  MaterialPageRoute(
                      builder: (context) => CustomUserQuestions()),
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
                  MaterialPageRoute(
                      builder: (context) => CustomUserQuestions()),
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

class CustomUserQuestions extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "How would you describe your mood today:",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                color: Colors.lightGreen,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridListGames()),
                  );
                },
                child: Text('Positive'),
              ),
              RaisedButton(
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridListGames()),
                  );
                },
                child: Text('Neutral'),
              ),
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridListGames()),
                  );
                },
                child: Text('Negative'),
              ),
            ]));
  }
}

class GridListGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Route")),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Attention',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/1.png'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Cognitive control',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/2.jfif'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Processing speed',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/3.png'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Judgement',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/4.jfif'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Problem Solving',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/5.png'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Continuous attention',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/6.png'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[700],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Memory',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/7.jpg'))
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[800],
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Comprehension',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Image(
                              width: 75,
                              height: 75,
                              image: AssetImage('assets/images/8.jpg'))
                        ],
                      )),
                ),
              ],
            )),
      ),
    );
  }
}

class Game extends StatelessWidget {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attention test"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Does the meaning of the first box match the background color of the second box?",
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            color: Colors.lightGreen,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridListGames()),
              );
            },
            child: Text('RED'),
          ),
          RaisedButton(
            color: Colors.yellow,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridListGames()),
              );
            },
            child: Text('BLACK'),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_circle_outline),
            title: Text('NO'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            title: Text('YES'),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }
}
