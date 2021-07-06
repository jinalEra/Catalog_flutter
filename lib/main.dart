import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}

 // home: HomePage(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => LoginPage(),
      //   "/home" : (context) => HomePage(),
      // },