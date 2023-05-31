class Product {
  int id;
  int quantity;
  int categoryID;
  double price;
  String name;
  String imgURL;
  Product({
    required this.id,
    required this.name,
    required this.imgURL,
    required this.categoryID,
    required this.price,
    required this.quantity,
  });
}
