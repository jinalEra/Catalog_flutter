
import 'package:catalog/Screens/login/loginpage.dart';
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
      // home: HomePage(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => LoginPage(),
      //   "/home" : (context) => HomePage(),
      // },
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      initialRoute: LoginPage.routeName,
      routes: routes,
    );
  }
}
