import 'package:flutter/material.dart';
import 'gameTile.dart';

class GamesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          GameTile('Jane Doe', 'https://i.pravatar.cc/150?img=49'),
          GameTile('John Doe', 'https://i.pravatar.cc/150?img=13'),
          GameTile('William Blake', 'https://i.pravatar.cc/150?img=59'),
          GameTile('Eva Fall', 'https://i.pravatar.cc/150?img=1'),
        ]).toList()
    );
  }
}
