class Catalogmodel {
  static List items = [];
  static Items getbyid(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  static Items getbypos(int pos) => items[pos];
}

class Items {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
