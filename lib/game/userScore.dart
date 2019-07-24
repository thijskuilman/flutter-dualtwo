import 'package:flutter/material.dart';

class UserScore extends StatelessWidget {

  final String _name;
  final String _avatar;
  final int _points;
  final CrossAxisAlignment _horizontalAlignment;

  const UserScore(this._name, this._avatar, this._points, this._horizontalAlignment);

  @override
  Widget build(BuildContext context) {
    return Row(
        verticalDirection: VerticalDirection.down,
        children: [
          Visibility(
            visible: _horizontalAlignment == CrossAxisAlignment.start,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(this._avatar),
                ),
                SizedBox(width: 12.0),
              ],

            )
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: this._horizontalAlignment,
              children: [
                Text(this._name, textScaleFactor: 0.80),
                Text('$_points points', textScaleFactor: 0.55),
              ]
          ),
          Visibility(
              visible: _horizontalAlignment == CrossAxisAlignment.end,
              child: Row(
                children: [
                  SizedBox(width: 12.0),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(this._avatar),
                  ),
                ],

              )
          ),
        ]
    );
  }
}


