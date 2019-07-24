import 'package:flutter/material.dart';

class Game extends StatelessWidget {

  const Game();

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
                Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=56')
                    ),
                    SizedBox(width: 12.0),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You', textScaleFactor: 0.80),
                          Text('0 points', textScaleFactor: 0.55),
                        ]
                    ),
                  ]
                ),
                Row(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Eva Fall', textScaleFactor: 0.80),
                            Text('0 points', textScaleFactor: 0.55),
                          ]
                      ),
                      SizedBox(width: 12.0),
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1')
                      ),
                    ]
                )
              ],
            ),
          ),
          body:
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.movie, size: 50.0),
                            SizedBox(height: 12.0),
                            Text('Movies', textScaleFactor: 1.25),
                          ]
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                        color: Colors.blue,
                        child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.book, size: 50.0),
                              SizedBox(height: 12.0),
                              Text('Books', textScaleFactor: 1.25),
                            ]
                        )
                    ),
                  ),
                ]
              )
          )
      );
  }
}
