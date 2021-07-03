import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/Screens/home/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: HomePage(),
      routes: {
        "/": (context) => HomePage(),
        "/login" : (context) => Loginpage(),
      },
    );
  }
}
