import 'dart:convert';

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String image;

  Item({
      this.id,
      this.name,
      this.description,
      this.price,
      this.image,
  });

  // factory Item.fromMap(Map<String, dynamic> map){
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     description: map["description"],
  //     price: map["price"],
  //     image: map["image"],
  //   );
  // }
  // // above factory code is Map to class

  // // class to Map
  // toMap() => {
  //   // key : Item key
  //     "id" : id,
  //     "name" : name,
  //     "description" : description,
  //     "price" : price,
  //     "image" : image,
  // };

  Item copyWith({
    int id,
    String name,
    String description,
    num price,
    String image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
}

final descriptions = "Her last smile to me wasn't a sunset";

class CatalogModel {
  static List<Item> demoItems;
    // first constructor
}

// Item(
//         id: 1,
//         name: "Hanes Women's Jersey ",
//         description: "All products are best",
//         price: 89,
//         image:
//             "https://m.media-amazon.com/images/I/61I12bGnm+S._AC_UL480_FMwebp_QL65_.jpg"),
//   ];