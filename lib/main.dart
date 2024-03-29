import 'package:flutter/material.dart';
import 'login/loginPage.dart';

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
        body: LoginPage(),
      )
    );
  }
}