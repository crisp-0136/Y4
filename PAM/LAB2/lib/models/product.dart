class Product {
  final String name;
  final String brand;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isNew;
  final double? discount;
  final int? rating;

  Product({
    required this.name,
    required this.brand,
    required this.price,
    this.oldPrice,
    required this.imageUrl,
    this.isNew = false,
    this.discount,
    this.rating,
  });
}
