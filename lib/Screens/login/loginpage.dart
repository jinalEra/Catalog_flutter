import 'package:catalog/Screens/login/loginbody.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  static String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

