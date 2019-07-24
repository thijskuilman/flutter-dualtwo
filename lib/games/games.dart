import 'package:flutter/material.dart';
import 'gameTile.dart';

class Games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DualTwo"),
        ),
        body: ListView(
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                GameTile('Jane Doe', 'https://i.pravatar.cc/150?img=49'),
                GameTile('John Doe', 'https://i.pravatar.cc/150?img=13'),
                GameTile('William Blake', 'https://i.pravatar.cc/150?img=59'),
                GameTile('Eva Fall', 'https://i.pravatar.cc/150?img=1'),
              ]
            ).toList()
          ),
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
    );
  }
}
