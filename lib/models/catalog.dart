class Item {

  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.description, this.price, this.color, this.image});
}

final descriptions = "Her last smile to me wasn't a sunset";

class CatalogModel {
  static final demoItems = [
  Item(
    id: 1,
    name: "iPhone 12 pro",
    description: descriptions,
    price: 999,
    color: "#eaae0c",
    image: "assets/images/login.png"
  ),
  
  Item(
    id: 2,
    name: "iPhone 11",
    description: descriptions,
    price: 888,
    color: "#eaae0c",
    image: "assets/images/welcome_screen.png"
  )
];
}