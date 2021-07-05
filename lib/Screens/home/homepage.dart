import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: Text("Welcome",
            style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
