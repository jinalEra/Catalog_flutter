import 'package:catalog/Screens/home/homepage.dart';
import 'package:catalog/Screens/login/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final imageUrl = "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Jinal Panchal"),
                  accountEmail: Text("jinal@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, HomePage.routeName),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email Me",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, LoginPage.routeName),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.arrow_uturn_down_circle,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Login",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
      
    );
  }
}