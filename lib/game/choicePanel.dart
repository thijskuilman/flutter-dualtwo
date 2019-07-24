import 'package:flutter/material.dart';

class ChoicePanel extends StatelessWidget {

  final IconData _icon;
  final String _label;
  final Color _color;

  const ChoicePanel(this._icon, this._label, this._color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: this._color,
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(this._icon, size: 50.0),
                SizedBox(height: 12.0),
                Text(this._label, textScaleFactor: 1.25),
              ]
          )
      ),
    );
  }
}
