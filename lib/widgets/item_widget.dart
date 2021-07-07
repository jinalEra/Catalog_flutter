import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading: Image.asset(item.image),
        title: Text(item.name, textScaleFactor: 1),
        subtitle: Text(item.description, textScaleFactor: 1),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1,
          style:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
