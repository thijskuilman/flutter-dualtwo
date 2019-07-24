import 'package:flutter/material.dart';
import 'choicePanel.dart';
import 'userScore.dart';

class Game extends StatelessWidget {

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
            automaticallyImplyLeading: true,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserScore('You', 'https://i.pravatar.cc/150?img=56', 0, CrossAxisAlignment.start),
                UserScore('Eva Fall', 'https://i.pravatar.cc/150?img=1', 0, CrossAxisAlignment.end),
              ],
            ),
          ),
          body:
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ChoicePanel(Icons.movie, 'Movies', Colors.red),
                  ChoicePanel(Icons.book, 'Books', Colors.blue),
                ]
              )
          )
      );
  }
}
