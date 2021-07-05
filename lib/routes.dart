import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/Screens/login/loginpage.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  
  
   HomePage.routeName: (context) => HomePage(),
   LoginPage.routeName: (context) => LoginPage(),

};