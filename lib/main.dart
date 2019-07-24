import 'package:flutter/material.dart';
import 'games/gamesListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.lightBlue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("DualTwo"),
        ),
        body: GamesListView(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.videogame_asset),
              title: new Text('Games'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.store),
              title: new Text('Store'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings')
            )
          ],
        ),
      )
    );
  }
}
