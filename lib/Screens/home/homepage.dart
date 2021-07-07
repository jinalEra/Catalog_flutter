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
    final json = await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(json);
    var data = decodedData["jsonData"];
    print(data);
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
        child: ListView.builder(
          itemCount: CatalogModel.demoItems.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.demoItems[index],);
          }
          ),
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