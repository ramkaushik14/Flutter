class catalog_Model
{
  static  List<Item> items=[

    Item(name: "Trike1", image:"assests/images/trike.jpeg", price:100, runtime: "1hr"),

  ];
}




class Item
{
  final String name;
  final String image;
  final num price;
  final String runtime;

  Item({required this.name, required this.image, required this.price, required this.runtime});

  factory Item.fromMap(Map<String,dynamic> map)
  {
    return Item(
      name : map["name"],
      image : map["image"],
      price : map["price"],
      runtime : map["runtime"]
      );
  }

  


}