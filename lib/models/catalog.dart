class catalog_Model
{
  static final items=[

    Item("Trike1", "assests/images/trike.jpeg", 100, "1hr"),

  ];
}




class Item
{
  final String name;
  final String image;
  final num price;
  final String runtime;

  Item(this.name, this.image, this.price, this.runtime);

  


}