// ignore_for_file: public_member_api_docs, sort_constructors_first
class CatalogModel {
  static List<Item> products = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.img,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      img: map["img"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "img": img,
      };
}
