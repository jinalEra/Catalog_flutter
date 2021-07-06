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
                child: UserAccountsDrawerHeader(
                  accountName: Text("Jinal Panchal"),
                  accountEmail: Text("jinalpanchal4277@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              )
          ],
        ),
      ),
      
    );
  }
}