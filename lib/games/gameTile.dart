import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  final String _name;
  final String _imageUrl;

  const GameTile(this._name, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(this._imageUrl)
        ),
        subtitle: Text('Ready to play'),
        title: Text(this._name));
  }
}
