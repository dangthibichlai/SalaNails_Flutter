class Product {
  int? id;
  String? name;
  double? price;
  String? description;
  int? quantity;
  String? image;
  bool? isFavorite;
  Product(
      {this.id,
      this.description,
      this.name,
      this.price,
      this.quantity,
      this.image,
      this.isFavorite = false});
}
