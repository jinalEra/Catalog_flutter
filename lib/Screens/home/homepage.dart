import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String routeName = "/home";

  // final num days = 30;
  // final String name = "Catalog";


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