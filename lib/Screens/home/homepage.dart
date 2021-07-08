import 'dart:convert';

import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //json work

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final json = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(json);
    var data = decodedData["data"];
    CatalogModel.demoItems = List.from(data)
        .map<Item>((demoItems) => Item.fromMap(demoItems))
        .toList();
    setState(() {});
  }

  //json end

  @override
  Widget build(BuildContext context) {
    // final dummy  = List.generate(10, (index) => CatalogModel.demoItems[0]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.demoItems != null && CatalogModel.demoItems.isNotEmpty ) ? ListView.builder(
            itemCount: CatalogModel.demoItems.length,
            itemBuilder: (context, index) =>
               ItemWidget(
                item: CatalogModel.demoItems[index],
              )
            )
            : Center(
              child: CircularProgressIndicator(),
            )
      ),
      drawer: MyDrawer(),
    );
  }
}

// context.runtimeType.toString()
// Container(
//         child: Center(
//           child: Container(
//             child: Text("Welcome on $name app for $days days",
//             style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w500,
//             color: Colors.black,
//           ),),
//           ),
//         ),
//       ),